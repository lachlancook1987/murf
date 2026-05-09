#!/usr/bin/env bash
# Midday scan — Step 3 (cut losers) + Step 4 (simulated trailing stops)
# Thresholds read from memory/TRADING-STRATEGY.md.
# Trailing stops are simulated: stop-limit is canceled and replaced with a new
# one at trail_pct% below current price, but only if price moved up.
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
STRATEGY="${REPO_ROOT}/memory/TRADING-STRATEGY.md"

for v in ALPACA_API_KEY ALPACA_SECRET_KEY ALPACA_ENDPOINT; do
  if [[ -z "${!v:-}" ]]; then
    echo "$v not set in environment" >&2
    exit 3
  fi
done

apca_curl() {
  curl -s \
    -H "APCA-API-KEY-ID: ${ALPACA_API_KEY}" \
    -H "APCA-API-SECRET-KEY: ${ALPACA_SECRET_KEY}" \
    "$@"
}

echo "=== Midday Scan $(date +%Y-%m-%d\ %H:%M:%S) ==="

# Parse trailing stop thresholds — "trigger trail" pairs, descending
THRESHOLDS=$(grep -E '^\- Up >= \+[0-9]+%' "$STRATEGY" \
  | sed 's/.*+\([0-9]*\)%.*trail_percent: "\([0-9]*\)".*/\1 \2/' \
  | sort -rn)

if [[ -z "$THRESHOLDS" ]]; then
  echo "ERROR: No trailing stop thresholds found in $STRATEGY" >&2
  exit 1
fi

echo ""
echo "Trailing stop schedule (from TRADING-STRATEGY.md):"
while IFS=" " read -r trig trail; do
  echo "  +${trig}% → ${trail}% simulated trail"
done <<< "$THRESHOLDS"
echo ""

# Pull positions and active orders into temp files
TMP_POS=$(mktemp)
TMP_ORD=$(mktemp)
TMP_THR=$(mktemp)
trap 'rm -f "$TMP_POS" "$TMP_ORD" "$TMP_THR"' EXIT

apca_curl "${ALPACA_ENDPOINT}/positions"           > "$TMP_POS"
apca_curl "${ALPACA_ENDPOINT}/orders?status=open"  > "$TMP_ORD"
echo "$THRESHOLDS"                                 > "$TMP_THR"

# Export paths for Python
export SCAN_TMP_POS="$TMP_POS"
export SCAN_TMP_ORD="$TMP_ORD"
export SCAN_TMP_THR="$TMP_THR"

python3 << 'PYEOF'
import json, os, urllib.request

endpoint = os.environ["ALPACA_ENDPOINT"]
api_key  = os.environ["ALPACA_API_KEY"]
api_sec  = os.environ["ALPACA_SECRET_KEY"]

with open(os.environ["SCAN_TMP_POS"]) as f: positions = json.load(f)
with open(os.environ["SCAN_TMP_ORD"]) as f: orders    = json.load(f)
with open(os.environ["SCAN_TMP_THR"]) as f: thr_raw   = f.read()

thresholds = []
for line in thr_raw.strip().splitlines():
    parts = line.strip().split()
    if len(parts) == 2:
        thresholds.append((int(parts[0]), int(parts[1])))

def base_sym(s):
    return s.replace("/", "").replace("-", "").upper()

# Active sell stop-limits keyed by base symbol (highest stop wins)
stop_orders = {}
for o in orders:
    if o["side"] == "sell" and o["type"] == "stop_limit" and \
       o["status"] in ("new", "accepted", "pending_new"):
        key = base_sym(o["symbol"])
        sp  = float(o["stop_price"]) if o["stop_price"] else 0
        if key not in stop_orders or sp > float(stop_orders[key]["stop_price"]):
            stop_orders[key] = o

def apca(method, path, body=None):
    url  = endpoint + path
    data = json.dumps(body).encode() if body else None
    req  = urllib.request.Request(url, data=data, method=method,
           headers={"APCA-API-KEY-ID": api_key,
                    "APCA-API-SECRET-KEY": api_sec,
                    "Content-Type": "application/json"})
    try:
        with urllib.request.urlopen(req) as r:
            return r.status, r.read().decode()
    except urllib.error.HTTPError as e:
        return e.code, e.read().decode()

actions = 0

for pos in positions:
    symbol  = pos["symbol"]
    key     = base_sym(symbol)
    plpc    = float(pos["unrealized_plpc"]) * 100
    qty     = pos["qty"]
    price   = float(pos["current_price"])
    entry   = float(pos["avg_entry_price"])

    print(f"  {symbol}: {plpc:+.2f}%  price=${price:.2f}  entry=${entry:.2f}")

    # Step 3: cut losers
    if plpc <= -10.0:
        print(f"    *** CUT LOSER {plpc:.2f}% — closing ***")
        status, _ = apca("DELETE", f"/positions/{symbol}")
        print(f"    close position: HTTP {status}")
        if key in stop_orders:
            apca("DELETE", f"/orders/{stop_orders[key]['id']}")
            print(f"    canceled stop order")
        actions += 1
        continue

    # Step 4: find applicable trail tier
    applied = next(((t, tr) for t, tr in thresholds if plpc >= t), None)

    if not applied:
        next_t = min((t for t, _ in thresholds if t > plpc), default=None)
        gap = f"{next_t - plpc:.2f}% away from +{next_t}% trigger" if next_t else "below all triggers"
        print(f"    hold — {gap}")
        continue

    trigger_pct, trail_pct = applied
    new_stop  = round(price * (1 - trail_pct / 100), 2)
    new_limit = round(new_stop * 0.99, 2)

    existing     = stop_orders.get(key)
    current_stop = float(existing["stop_price"]) if existing else 0.0

    if new_stop <= current_stop:
        print(f"    trail tier +{trigger_pct}%/{trail_pct}% — stop ${current_stop:.2f} already >= new ${new_stop:.2f}, no update needed")
        continue

    print(f"    TRAIL +{plpc:.2f}% >= +{trigger_pct}% → raising stop ${current_stop:.2f} → ${new_stop:.2f}")

    if existing:
        status, _ = apca("DELETE", f"/orders/{existing['id']}")
        print(f"    canceled old stop {existing['id'][:8]} (HTTP {status})")

    order_sym = symbol.replace("USD", "/USD") if "/" not in symbol else symbol
    status, resp = apca("POST", "/orders", {
        "symbol": order_sym,
        "qty": qty,
        "side": "sell",
        "type": "stop_limit",
        "time_in_force": "gtc",
        "stop_price": str(new_stop),
        "limit_price": str(new_limit)
    })
    if status == 200:
        order = json.loads(resp)
        print(f"    placed stop-limit stop=${new_stop} limit=${new_limit} id={order['id'][:8]}")
        actions += 1
    else:
        print(f"    ERROR placing order (HTTP {status}): {resp}")

print("")
print(f"Actions taken: {actions}" if actions else "No actions required.")
PYEOF

echo ""
echo "=== Scan complete ==="
