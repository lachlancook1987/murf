#!/usr/bin/env bash
# Midday scan — Step 3 (cut losers) + Step 4 (trailing stops)
# Thresholds are read from memory/TRADING-STRATEGY.md, not hardcoded.
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
STRATEGY="${REPO_ROOT}/memory/TRADING-STRATEGY.md"

for v in ALPACA_API_KEY ALPACA_SECRET_KEY ALPACA_ENDPOINT; do
  if [[ -z "${!v:-}" ]]; then
    echo "$v not set in environment" >&2
    exit 3
  fi
done

echo "=== Midday Scan $(date +%Y-%m-%d\ %H:%M:%S) ==="

# Parse trailing stop thresholds from strategy file.
# Expects lines like: - Up >= +10% → trail_percent: "6"
# Outputs: "10 6", "20 5", "35 3" sorted descending by trigger pct.
THRESHOLDS=$(grep -E '^\- Up >= \+[0-9]+%' "$STRATEGY" \
  | sed 's/.*+\([0-9]*\)%.*trail_percent: "\([0-9]*\)".*/\1 \2/' \
  | sort -rn)

if [[ -z "$THRESHOLDS" ]]; then
  echo "ERROR: No trailing stop thresholds found in $STRATEGY" >&2
  exit 1
fi

echo ""
echo "Trailing stop schedule loaded from TRADING-STRATEGY.md:"
while IFS=" " read -r trig trail; do
  echo "  +${trig}% → ${trail}% trail"
done <<< "$THRESHOLDS"
echo ""

# Pull positions
POSITIONS=$(bash "${REPO_ROOT}/scripts/alpaca.sh" positions 2>&1)
if ! echo "$POSITIONS" | python3 -c "import sys,json; json.load(sys.stdin)" 2>/dev/null; then
  echo "ERROR: Failed to fetch positions" >&2
  echo "$POSITIONS" >&2
  exit 1
fi

ACTIONS_TAKEN=0

# Process each position via Python for float math
python3 << PYEOF
import json, subprocess, sys, os

repo_root = "${REPO_ROOT}"
positions = json.loads('''${POSITIONS}''')

thresholds_raw = """${THRESHOLDS}"""
thresholds = []
for line in thresholds_raw.strip().splitlines():
    parts = line.strip().split()
    if len(parts) == 2:
        thresholds.append((int(parts[0]), int(parts[1])))
# Already sorted descending

actions = []

for pos in positions:
    symbol    = pos["symbol"]
    plpc      = float(pos["unrealized_plpc"]) * 100
    qty       = pos["qty"]
    price     = float(pos["current_price"])

    print(f"  {symbol}: {plpc:+.2f}%  qty={qty}  price={price}")

    # Step 3: cut losers
    if plpc <= -10.0:
        print(f"    *** CUT LOSER: {plpc:.2f}% <= -10% — closing position ***")
        actions.append(("cut", symbol, qty, plpc))
        continue

    # Step 4: trailing stop tighten
    applied = None
    for trigger_pct, trail_pct in thresholds:
        if plpc >= trigger_pct:
            applied = (trigger_pct, trail_pct)
            break

    if applied:
        trigger_pct, trail_pct = applied
        print(f"    TRAIL: +{plpc:.2f}% >= +{trigger_pct}% → place {trail_pct}% trailing stop")
        actions.append(("trail", symbol, qty, trail_pct))
    else:
        # Find next trigger for info
        next_trigger = min((t for t, _ in thresholds if t > plpc), default=None)
        if next_trigger:
            gap = next_trigger - plpc
            print(f"    hold — {gap:.2f}% away from +{next_trigger}% trail trigger")
        else:
            print(f"    hold — below all trail triggers")

print("")
if not actions:
    print("No actions required.")
else:
    print(f"{len(actions)} action(s) to execute — see output above.")
    for a in actions:
        if a[0] == "cut":
            print(f"  RUN: bash scripts/alpaca.sh close {a[1]}")
        elif a[0] == "trail":
            print(f"  RUN: bash scripts/alpaca.sh place_trail {a[1]} {a[2]} {a[3]}")
PYEOF

echo ""
echo "=== Scan complete ==="
