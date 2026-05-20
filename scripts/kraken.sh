#!/usr/bin/env bash
# Kraken spot API wrapper — same interface as alpaca.sh
# Required env vars: KRAKEN_API_KEY, KRAKEN_PRIVATE_KEY
#
# Supported order types (passed in JSON "type" field):
#   market | limit | stop_limit | stop | trailing_stop
#
# Trailing stop example:
#   kraken.sh order '{"symbol":"ETH/USD","qty":"0.01","side":"sell",
#                     "type":"trailing_stop","trail_percent":"3","time_in_force":"gtc"}'
#
# Symbol format: use Alpaca-style (ETH/USD, BTC/USD, SOL/USD).
# BTC/USD is auto-translated to XBTUSD internally.
set -euo pipefail

for v in KRAKEN_API_KEY KRAKEN_PRIVATE_KEY; do
  [[ -n "${!v:-}" ]] || { echo "$v not set in environment" >&2; exit 3; }
done

BASE="https://api.kraken.com"
CMD="${1:-account}"

# ---------------------------------------------------------------------------
# _kraken_private PATH [PARAMS]
#   Signs and POSTs a private endpoint. PARAMS = URL-encoded key=val pairs
#   (excluding nonce — added automatically).
# ---------------------------------------------------------------------------
_kraken_private() {
  local path="$1"
  local extra="${2:-}"
  python3 - "$path" "$extra" "$KRAKEN_API_KEY" "$KRAKEN_PRIVATE_KEY" <<'PYEOF'
import sys, hmac, hashlib, base64, urllib.parse, time
import urllib.request, json

path    = sys.argv[1]
extra   = sys.argv[2]
api_key = sys.argv[3]
secret  = base64.b64decode(sys.argv[4])

nonce    = str(int(time.time() * 1000))
postdata = "nonce=" + nonce + ("&" + extra if extra else "")

sha256 = hashlib.sha256((nonce + postdata).encode()).digest()
sig    = base64.b64encode(
    hmac.new(secret, path.encode() + sha256, hashlib.sha512).digest()
).decode()

req = urllib.request.Request(
    "https://api.kraken.com" + path,
    data=postdata.encode(),
    headers={
        "API-Key":      api_key,
        "API-Sign":     sig,
        "Content-Type": "application/x-www-form-urlencoded",
    },
)
with urllib.request.urlopen(req) as r:
    print(r.read().decode())
PYEOF
}

# ---------------------------------------------------------------------------
# _kraken_public PATH
# ---------------------------------------------------------------------------
_kraken_public() {
  curl --no-progress-meter "${BASE}${1}" 2>/dev/null
}

# ---------------------------------------------------------------------------
# _to_kraken_pair ETH/USD → ETHUSD   BTC/USD → XBTUSD
# ---------------------------------------------------------------------------
_to_kraken_pair() {
  python3 -c "
s = '$1'.split('/')
base = s[0].replace('BTC','XBT')
print(base + s[1])
"
}

# ---------------------------------------------------------------------------
# _check_errors — pipe JSON through this to surface Kraken error arrays
# ---------------------------------------------------------------------------
_check_errors() {
  python3 -c "
import sys, json
d = json.load(sys.stdin)
if d.get('error'):
    print('Kraken API error:', d['error'], file=sys.stderr)
    import sys; sys.exit(1)
print(json.dumps(d, indent=2))
"
}

# ===========================================================================
case "$CMD" in

  # -------------------------------------------------------------------------
  account)
    echo "=== Trade Balance ==="
    _kraken_private "/0/private/TradeBalance" | python3 -c "
import sys, json
d = json.load(sys.stdin)
if d.get('error'): print('ERROR:', d['error']); sys.exit(1)
r = d['result']
labels = {'e':'equity','tb':'trade_balance','mf':'free_margin','n':'unrealized_pnl','c':'cost_basis'}
out = {labels.get(k,k): v for k,v in r.items() if k in labels}
print(json.dumps(out, indent=2))
"
    echo ""
    echo "=== Asset Balances ==="
    _kraken_private "/0/private/Balance" | python3 -c "
import sys, json
d = json.load(sys.stdin)
if d.get('error'): print('ERROR:', d['error']); sys.exit(1)
for k, v in sorted(d['result'].items()):
    if float(v) > 0.000001:
        print(f'  {k}: {v}')
"
    ;;

  # -------------------------------------------------------------------------
  positions)
    _kraken_private "/0/private/Balance" | python3 -c "
import sys, json
d = json.load(sys.stdin)
if d.get('error'): print('ERROR:', d['error']); sys.exit(1)
pos = {k: v for k, v in d['result'].items()
       if float(v) > 0.000001 and 'USD' not in k and 'EUR' not in k}
print(json.dumps(pos, indent=2))
"
    ;;

  # -------------------------------------------------------------------------
  orders)
    echo "=== Open Orders ==="
    _kraken_private "/0/private/OpenOrders" | python3 -c "
import sys, json
d = json.load(sys.stdin)
if d.get('error'): print('ERROR:', d['error']); sys.exit(1)
open_orders = d['result'].get('open', {})
if not open_orders:
    print('  (none)')
else:
    print(json.dumps(open_orders, indent=2))
"
    echo ""
    echo "=== Recent Closed Orders (last 10) ==="
    _kraken_private "/0/private/ClosedOrders" | python3 -c "
import sys, json
d = json.load(sys.stdin)
if d.get('error'): print('ERROR:', d['error']); sys.exit(1)
closed = list(d['result'].get('closed', {}).items())[:10]
print(json.dumps(dict(closed), indent=2))
"
    ;;

  # -------------------------------------------------------------------------
  quote)
    SYM="${2:?Usage: $0 quote SYM/USD}"
    PAIR=$(_to_kraken_pair "$SYM")
    _kraken_public "/0/public/Ticker?pair=${PAIR}" | python3 -c "
import sys, json
d = json.load(sys.stdin)
if d.get('error'): print('ERROR:', d['error']); sys.exit(1)
for pair, v in d['result'].items():
    print(f'{pair}')
    print(f'  bid:    {v[\"b\"][0]}')
    print(f'  ask:    {v[\"a\"][0]}')
    print(f'  last:   {v[\"c\"][0]}')
    print(f'  vol24h: {v[\"v\"][1]}')
    print(f'  high:   {v[\"h\"][1]}')
    print(f'  low:    {v[\"l\"][1]}')
"
    ;;

  # -------------------------------------------------------------------------
  assets)
    SYM="${2:-}"
    if [[ -n "$SYM" ]]; then
      PAIR=$(_to_kraken_pair "$SYM")
      _kraken_public "/0/public/AssetPairs?pair=${PAIR}" | python3 -c "
import sys, json
d = json.load(sys.stdin)
if d.get('error'): print('ERROR:', d['error']); sys.exit(1)
for k, v in d['result'].items():
    print(f'{k}  base={v[\"base\"]}  quote={v[\"quote\"]}  tradable=True')
"
    else
      _kraken_public "/0/public/AssetPairs" | python3 -c "
import sys, json
d = json.load(sys.stdin)
if d.get('error'): print('ERROR:', d['error']); sys.exit(1)
for k in sorted(d['result']):
    if k.endswith('USD') or k.endswith('ZUSD'):
        v = d['result'][k]
        print(f'{k}  (base={v[\"base\"]}, quote={v[\"quote\"]})')
"
    fi
    ;;

  # -------------------------------------------------------------------------
  order)
    BODY="${2:?Usage: $0 order '{json}'}"
    python3 - "$BODY" "$KRAKEN_API_KEY" "$KRAKEN_PRIVATE_KEY" <<'PYEOF'
import sys, hmac, hashlib, base64, urllib.parse, time
import urllib.request, json

body    = json.loads(sys.argv[1])
api_key = sys.argv[2]
secret  = base64.b64decode(sys.argv[3])

# Symbol: ETH/USD → ETHUSD, BTC/USD → XBTUSD
base, quote = body["symbol"].split("/")
if base == "BTC":
    base = "XBT"
pair = base + quote

# Order type map (Alpaca-style → Kraken)
otype_map = {
    "market":        "market",
    "limit":         "limit",
    "stop_limit":    "stop-loss-limit",
    "stop":          "stop-loss",
    "trailing_stop": "trailing-stop",
}
ordertype = otype_map.get(body.get("type", "market"), "market")

params = {
    "pair":      pair,
    "type":      body["side"],       # buy | sell
    "ordertype": ordertype,
    "volume":    str(body["qty"]),
}

# Price fields per order type
if ordertype == "limit":
    params["price"] = str(body["limit_price"])
elif ordertype == "stop-loss-limit":
    params["price"]  = str(body["stop_price"])   # stop trigger
    params["price2"] = str(body["limit_price"])  # limit fill price
elif ordertype == "stop-loss":
    params["price"] = str(body["stop_price"])
elif ordertype == "trailing-stop":
    # Kraken trailing stop price field:
    #   %-N  = N% trailing below highest price seen (HWM)
    #   -N   = N USD below HWM (absolute offset)
    pct = body.get("trail_percent", "")
    if pct:
        params["price"] = f"%-{pct}"
    elif body.get("trail_price", ""):
        params["price"] = f'-{body["trail_price"]}'

# Time in force (default GTC — good for 24/7 crypto)
tif = body.get("time_in_force", "gtc").upper()
if tif in ("GTC", "IOC", "GTD"):
    params["timeinforce"] = tif

nonce         = str(int(time.time() * 1000))
params["nonce"] = nonce
postdata      = urllib.parse.urlencode(params)
path          = "/0/private/AddOrder"

sha256 = hashlib.sha256((nonce + postdata).encode()).digest()
sig    = base64.b64encode(
    hmac.new(secret, path.encode() + sha256, hashlib.sha512).digest()
).decode()

req = urllib.request.Request(
    "https://api.kraken.com" + path,
    data=postdata.encode(),
    headers={
        "API-Key":      api_key,
        "API-Sign":     sig,
        "Content-Type": "application/x-www-form-urlencoded",
    },
)
with urllib.request.urlopen(req) as r:
    result = json.loads(r.read())
if result.get("error"):
    print(json.dumps(result, indent=2))
    sys.exit(1)
print(json.dumps(result, indent=2))
PYEOF
    ;;

  # -------------------------------------------------------------------------
  close)
    SYM="${2:?Usage: $0 close SYM/USD}"
    BASE_ASSET="${SYM%%/*}"
    # Look up current balance for this asset (handles X-prefixed Kraken names)
    QTY=$(_kraken_private "/0/private/Balance" | python3 -c "
import sys, json
sym = '${BASE_ASSET}'.replace('BTC','XBT')
d = json.load(sys.stdin)
if d.get('error'): print('0'); sys.exit(0)
r = d['result']
for key in ['X'+sym, sym, 'Z'+sym, 'XX'+sym]:
    if key in r and float(r[key]) > 0.000001:
        print(r[key]); sys.exit(0)
print('0')
")
    if [[ "$QTY" == "0" ]]; then
      echo "No position found for ${SYM}" >&2; exit 1
    fi
    echo "Closing ${SYM}: selling ${QTY}"
    "$0" order "{\"symbol\":\"${SYM}\",\"qty\":\"${QTY}\",\"side\":\"sell\",\"type\":\"market\",\"time_in_force\":\"gtc\"}"
    ;;

  # -------------------------------------------------------------------------
  cancel)
    OID="${2:?Usage: $0 cancel TXID}"
    _kraken_private "/0/private/CancelOrder" "txid=${OID}" | _check_errors
    ;;

  # -------------------------------------------------------------------------
  *)
    echo "Usage: $0 {account|positions|orders|quote SYM/USD|assets [SYM/USD]|order '{json}'|close SYM/USD|cancel TXID}" >&2
    exit 1
    ;;
esac
