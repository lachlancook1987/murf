#!/usr/bin/env bash
# Kraken API wrapper — reads creds from process env
set -euo pipefail

for v in KRAKEN_API_KEY KRAKEN_PRIVATE_KEY; do
  if [[ -z "${!v:-}" ]]; then
    echo "$v not set in environment" >&2
    exit 3
  fi
done

CMD="${1:-account}"

# Map friendly symbol to Kraken pair (BTC->XBT, rest pass through)
map_pair() {
  local base="${1%/USD}"
  [[ "$base" == "BTC" ]] && echo "XBTUSD" || echo "${base}USD"
}

# Authenticated Kraken REST call via Python (handles nonce + HMAC-SHA512)
kraken_private() {
  python3 - "$KRAKEN_API_KEY" "$KRAKEN_PRIVATE_KEY" "$@" <<'PYEOF'
import sys, hashlib, hmac, base64, urllib.parse, time, json
from urllib.request import Request, urlopen

api_key  = sys.argv[1]
secret   = sys.argv[2]
urlpath  = sys.argv[3]
extra    = {}
for item in sys.argv[4:]:
    if '=' in item:
        k, v = item.split('=', 1)
        extra[k] = v

nonce    = str(int(time.time() * 1000))
params   = {'nonce': nonce, **extra}
postdata = urllib.parse.urlencode(params)

encoded  = (nonce + postdata).encode()
message  = urlpath.encode() + hashlib.sha256(encoded).digest()
mac      = hmac.new(base64.b64decode(secret), message, hashlib.sha512)
sig      = base64.b64encode(mac.digest()).decode()

req = Request(
    f'https://api.kraken.com{urlpath}',
    data=postdata.encode(),
    headers={
        'API-Key': api_key,
        'API-Sign': sig,
        'Content-Type': 'application/x-www-form-urlencoded',
    },
)
with urlopen(req) as resp:
    print(json.dumps(json.load(resp), indent=2))
PYEOF
}

case "$CMD" in
  account)
    kraken_private "/0/private/Balance"
    ;;

  positions)
    kraken_private "/0/private/OpenPositions"
    ;;

  orders)
    kraken_private "/0/private/OpenOrders"
    ;;

  closedorders)
    kraken_private "/0/private/ClosedOrders"
    ;;

  quote)
    SYM="${2:?Usage: $0 quote SYM/USD}"
    PAIR=$(map_pair "$SYM")
    curl --no-progress-meter \
      "https://api.kraken.com/0/public/Ticker?pair=${PAIR}" 2>/dev/null \
      | python3 -m json.tool
    ;;

  assets)
    SYM="${2:-}"
    if [[ -n "$SYM" ]]; then
      PAIR=$(map_pair "$SYM")
      curl --no-progress-meter \
        "https://api.kraken.com/0/public/AssetPairs?pair=${PAIR}" 2>/dev/null \
        | python3 -m json.tool
    else
      curl --no-progress-meter \
        "https://api.kraken.com/0/public/AssetPairs" 2>/dev/null \
        | python3 -m json.tool
    fi
    ;;

  order)
    BODY="${2:?Usage: $0 order '{...}'}"
    python3 - "$KRAKEN_API_KEY" "$KRAKEN_PRIVATE_KEY" "$BODY" <<'PYEOF'
import sys, hashlib, hmac, base64, urllib.parse, time, json
from urllib.request import Request, urlopen

api_key  = sys.argv[1]
secret   = sys.argv[2]
body     = json.loads(sys.argv[3])

sym_base = body['symbol'].split('/')[0]
if sym_base == 'BTC':
    sym_base = 'XBT'
pair = f"{sym_base}USD"

otype_map = {
    'market':        'market',
    'limit':         'limit',
    'stop_limit':    'stop-loss-limit',
    'trailing_stop': 'trailing-stop',
}
kraken_type = otype_map.get(body.get('type', 'market'), 'market')

nonce  = str(int(time.time() * 1000))
params = {
    'nonce':     nonce,
    'pair':      pair,
    'type':      body['side'],
    'ordertype': kraken_type,
    'volume':    str(body.get('qty', 0)),
}

if kraken_type == 'stop-loss-limit':
    params['price']  = str(body['stop_price'])   # trigger
    params['price2'] = str(body['limit_price'])  # limit
elif kraken_type == 'limit':
    params['price'] = str(body['price'])
elif kraken_type == 'trailing-stop':
    pct = body.get('trail_percent', 5)
    params['price'] = f'+{pct}%'

if body.get('leverage'):
    params['leverage'] = str(body['leverage'])
if body.get('validate'):
    params['validate'] = 'true'

urlpath  = '/0/private/AddOrder'
postdata = urllib.parse.urlencode(params)
encoded  = (nonce + postdata).encode()
message  = urlpath.encode() + hashlib.sha256(encoded).digest()
mac      = hmac.new(base64.b64decode(secret), message, hashlib.sha512)
sig      = base64.b64encode(mac.digest()).decode()

req = Request(
    f'https://api.kraken.com{urlpath}',
    data=postdata.encode(),
    headers={
        'API-Key': api_key,
        'API-Sign': sig,
        'Content-Type': 'application/x-www-form-urlencoded',
    },
)
with urlopen(req) as resp:
    print(json.dumps(json.load(resp), indent=2))
PYEOF
    ;;

  cancel)
    TXID="${2:?Usage: $0 cancel <txid|all>}"
    if [[ "$TXID" == "all" ]]; then
      kraken_private "/0/private/CancelAll"
    else
      kraken_private "/0/private/CancelOrder" "txid=${TXID}"
    fi
    ;;

  *)
    echo "Usage: $0 {account|positions|orders|closedorders|quote SYM/USD|assets [SYM/USD]|order '{json}'|cancel <txid|all>}" >&2
    exit 1
    ;;
esac
