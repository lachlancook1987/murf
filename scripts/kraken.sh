#!/usr/bin/env bash
# Kraken REST API wrapper — same interface as alpaca.sh
# Required env: KRAKEN_API_KEY, KRAKEN_PRIVATE_KEY
#
# Commands: account | positions | orders | quote SYM/USD | assets [SYM/USD]
#           order '{json}' | close SYM/USD | cancel ORDER_ID | replace ORDER_ID '{json}'
#
# Order JSON format is identical to Alpaca.  Kraken natively supports trailing
# stops for spot crypto ("type":"trailing_stop","trail_percent":"12" works here).
# replace = cancel + new order (Kraken has no PATCH endpoint).
set -euo pipefail

BASE="https://api.kraken.com"
CMD="${1:-account}"

# Alpaca symbol (ETH/USD, BTC/USD) → Kraken pair name (ETHUSD, XBTUSD)
sym_to_pair() {
  local s="${1//\//}"       # remove slash: ETH/USD → ETHUSD
  echo "${s/BTC/XBT}"      # BTC→XBT so BTCUSD → XBTUSD
}

# POST to a private Kraken endpoint with HMAC-SHA512 signature.
# Usage: kraken_private /0/private/Endpoint [key=val ...]
kraken_private() {
  for v in KRAKEN_API_KEY KRAKEN_PRIVATE_KEY; do
    [[ -n "${!v:-}" ]] || { echo "$v not set in environment" >&2; exit 3; }
  done
  local EP="$1"; shift
  local NONCE
  NONCE=$(python3 -c "import time; print(int(time.time()*1000))")

  local BODY="nonce=${NONCE}"
  for kv in "$@"; do BODY+="&${kv}"; done

  local SIG
  SIG=$(KR_SECRET="$KRAKEN_PRIVATE_KEY" KR_EP="$EP" KR_NONCE="$NONCE" KR_BODY="$BODY" \
    python3 -c "
import hmac, hashlib, base64, os
s = base64.b64decode(os.environ['KR_SECRET'])
m = os.environ['KR_EP'].encode() + hashlib.sha256(
      (os.environ['KR_NONCE'] + os.environ['KR_BODY']).encode()).digest()
print(base64.b64encode(hmac.new(s, m, hashlib.sha512).digest()).decode())
")

  curl -sS -X POST \
    -H "API-Key: ${KRAKEN_API_KEY}" \
    -H "API-Sign: ${SIG}" \
    -d "$BODY" "${BASE}${EP}"
}

kraken_public() {
  curl -sS "${BASE}$1"
}

# Translate Alpaca-format order JSON → Kraken AddOrder param string (k=v&k=v…)
# Supports: market, limit, stop_limit, stop, trailing_stop
order_params() {
  KR_ORDER_JSON="$1" python3 << 'PYEOF'
import json, sys, os

o = json.loads(os.environ['KR_ORDER_JSON'])
pair  = o['symbol'].replace('/', '').replace('BTC', 'XBT')
side  = o['side']           # buy / sell
vol   = o['qty']
otype = o['type']
tif   = o.get('time_in_force', 'gtc').upper()

if otype == 'market':
    p = f"pair={pair}&type={side}&ordertype=market&volume={vol}"

elif otype == 'limit':
    p = f"pair={pair}&type={side}&ordertype=limit&price={o['price']}&volume={vol}"

elif otype in ('stop_limit', 'stop-loss-limit'):
    # price = stop trigger, price2 = limit price
    lp = o.get('limit_price', o['stop_price'])
    p = (f"pair={pair}&type={side}&ordertype=stop-loss-limit"
         f"&price={o['stop_price']}&price2={lp}&volume={vol}")

elif otype in ('stop', 'stop-loss'):
    p = f"pair={pair}&type={side}&ordertype=stop-loss&price={o['stop_price']}&volume={vol}"

elif otype == 'trailing_stop':
    # Kraken trailing stop: price offset as -N% (below market for sells)
    trail = o.get('trail_percent', '5')
    p = f"pair={pair}&type={side}&ordertype=trailing-stop&price=-{trail}%&volume={vol}"

else:
    print(f"unknown order type: {otype}", file=sys.stderr)
    sys.exit(1)

# Fees in quote currency (USD); add GTC for non-market orders
p += "&oflags=fciq"
if otype != 'market' and tif in ('GTC', 'IOC'):
    p += f"&timeinforce={tif}"

print(p)
PYEOF
}

case "$CMD" in
  account)
    echo "--- balance ---"
    kraken_private /0/private/Balance | python3 -m json.tool
    echo "--- trade_balance ---"
    kraken_private /0/private/TradeBalance | python3 -m json.tool
    ;;

  positions)
    # Synthesise position list from Balance + live Ticker prices
    FIAT_ASSETS='ZUSD USD USDT USDC ZEUR EUR ZGBP GBP ZCAD CAD ZJPY JPY DAI KFEE'
    BAL_JSON=$(kraken_private /0/private/Balance)
    KR_BALANCES="$BAL_JSON" KR_FIAT="$FIAT_ASSETS" python3 << 'PYEOF'
import json, subprocess, os, sys

fiat  = set(os.environ['KR_FIAT'].split())
bal   = json.loads(os.environ['KR_BALANCES'])

if bal.get('error'):
    print('ERROR:', bal['error'], file=sys.stderr); sys.exit(1)

holdings = {
    k: float(v)
    for k, v in bal.get('result', {}).items()
    if k not in fiat and float(v) != 0
}

if not holdings:
    print('[]')
    sys.exit(0)

def asset_to_pair(k):
    base = k.lstrip('X').lstrip('Z')
    return ('XBT' if base == 'BTC' else base) + 'USD'

def asset_to_sym(k):
    base = k.lstrip('X').lstrip('Z')
    return ('BTC' if base == 'XBT' else base) + '/USD'

positions = []
for asset, qty in holdings.items():
    pair = asset_to_pair(asset)
    r = subprocess.run(
        ['curl', '-sS', f'https://api.kraken.com/0/public/Ticker?pair={pair}'],
        capture_output=True, text=True
    )
    td = json.loads(r.stdout)
    if td.get('error') and td['error']:
        positions.append({'symbol': asset_to_sym(asset), 'qty': str(qty),
                          'error': td['error']})
        continue
    tick = list(td['result'].values())[0]
    ask  = float(tick['a'][0])
    bid  = float(tick['b'][0])
    mid  = round((ask + bid) / 2, 6)
    positions.append({
        'symbol':          asset_to_sym(asset),
        'qty':             str(round(qty, 8)),
        'current_price':   str(mid),
        'market_value':    str(round(qty * mid, 4)),
        'avg_entry_price': 'see TRADE-LOG.md',
        'bid':             str(bid),
        'ask':             str(ask),
    })

print(json.dumps(positions, indent=2))
PYEOF
    ;;

  orders)
    echo "--- open_orders ---"
    kraken_private /0/private/OpenOrders | python3 -m json.tool
    echo "--- closed_orders (last 50) ---"
    kraken_private /0/private/ClosedOrders "trades=false" | python3 -m json.tool
    ;;

  quote)
    SYM="${2:?Usage: $0 quote SYM/USD}"
    PAIR=$(sym_to_pair "$SYM")
    kraken_public "/0/public/Ticker?pair=${PAIR}" | python3 -m json.tool
    ;;

  assets)
    SYM="${2:-}"
    if [[ -n "$SYM" ]]; then
      PAIR=$(sym_to_pair "$SYM")
      kraken_public "/0/public/AssetPairs?pair=${PAIR}" | python3 -m json.tool
    else
      kraken_public "/0/public/AssetPairs" | python3 -m json.tool
    fi
    ;;

  order)
    BODY_JSON="${2:?Usage: $0 order '{...}'}"
    PARAMS=$(order_params "$BODY_JSON")
    IFS='&' read -ra KV <<< "$PARAMS"
    kraken_private /0/private/AddOrder "${KV[@]}" | python3 -m json.tool
    ;;

  close)
    SYM="${2:?Usage: $0 close SYM/USD}"
    PAIR=$(sym_to_pair "$SYM")
    BAL_JSON=$(kraken_private /0/private/Balance)
    QTY=$(KR_BALANCES="$BAL_JSON" KR_PAIR="$PAIR" python3 -c "
import json, os
b    = json.loads(os.environ['KR_BALANCES']).get('result', {})
pair = os.environ['KR_PAIR']
base = pair.replace('USD', '')
qty  = float(b.get('X' + base, b.get(base, 0)))
print(qty)
")
    kraken_private /0/private/AddOrder \
      "pair=${PAIR}" "type=sell" "ordertype=market" "volume=${QTY}" "oflags=fciq" \
      | python3 -m json.tool
    ;;

  cancel)
    OID="${2:?Usage: $0 cancel ORDER_ID}"
    kraken_private /0/private/CancelOrder "txid=${OID}" | python3 -m json.tool
    ;;

  replace)
    OID="${2:?Usage: $0 replace ORDER_ID '{...}'}"
    BODY_JSON="${3:?Usage: $0 replace ORDER_ID '{...}'}"
    echo "--- cancel ${OID} ---"
    kraken_private /0/private/CancelOrder "txid=${OID}" | python3 -m json.tool
    echo "--- new_order ---"
    PARAMS=$(order_params "$BODY_JSON")
    IFS='&' read -ra KV <<< "$PARAMS"
    kraken_private /0/private/AddOrder "${KV[@]}" | python3 -m json.tool
    ;;

  *)
    echo "Usage: $0 {account|positions|orders|quote SYM/USD|assets [SYM/USD]|order '{json}'|close SYM/USD|cancel ORDER_ID|replace ORDER_ID '{json}'}" >&2
    exit 1
    ;;
esac
