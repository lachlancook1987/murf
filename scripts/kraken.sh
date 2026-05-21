#!/usr/bin/env bash
# Kraken REST API wrapper for the murf crypto bot
# Usage: kraken.sh {account|positions|orders|quote SYM/USD|assets SYM/USD|order '{...}'}

set -euo pipefail

[[ -n "${KRAKEN_API_KEY:-}" ]]     || { echo "KRAKEN_API_KEY not set in environment"     >&2; exit 1; }
[[ -n "${KRAKEN_PRIVATE_KEY:-}" ]] || { echo "KRAKEN_PRIVATE_KEY not set in environment" >&2; exit 1; }

# ─── Auth helper ─────────────────────────────────────────────────────────────
# Authenticated POST to Kraken private API.
# Args: <url_path> [<extra_postdata_urlencoded>]
_private() {
    python3 - "$@" <<'PYEOF'
import os, sys, urllib.request, hashlib, hmac, base64, time, json

key    = os.environ['KRAKEN_API_KEY']
secret = base64.b64decode(os.environ['KRAKEN_PRIVATE_KEY'])
path   = sys.argv[1]
extra  = sys.argv[2] if len(sys.argv) > 2 else ''

nonce = str(int(time.time() * 1000))
body  = 'nonce=' + nonce + ('&' + extra if extra else '')

h256 = hashlib.sha256((nonce + body).encode()).digest()
sig  = base64.b64encode(
    hmac.new(secret, path.encode() + h256, hashlib.sha512).digest()
).decode()

req = urllib.request.Request(
    'https://api.kraken.com' + path,
    body.encode(),
    {'API-Key': key, 'API-Sign': sig, 'Content-Type': 'application/x-www-form-urlencoded'}
)
try:
    with urllib.request.urlopen(req, timeout=15) as r:
        print(r.read().decode())
except urllib.error.HTTPError as e:
    print(json.dumps({'error': [f'HTTP {e.code}: {e.read().decode()}']}))
except Exception as e:
    print(json.dumps({'error': [str(e)]}))
PYEOF
}

# Public GET — no auth
_public() {
    curl -sf --max-time 15 "https://api.kraken.com${1}"
}

# Symbol normalisation: BTC/USD → XBTUSD, ETH/USD → ETHUSD, SOL/USD → SOLUSD
_pair() {
    echo "${1//\//}" | sed 's/^BTC/XBT/'
}

# Pretty-print Kraken result JSON, exit non-zero on API errors
_pp() {
    python3 -c "
import json, sys
d = json.load(sys.stdin)
errs = d.get('error', [])
if errs:
    print('ERROR:', errs, file=sys.stderr)
    sys.exit(1)
print(json.dumps(d.get('result', d), indent=2))
"
}

# ─── Subcommands ──────────────────────────────────────────────────────────────

case "${1:-}" in

# ----- account ---------------------------------------------------------------
account)
    echo "=== Balance ==="
    _private /0/private/Balance | _pp
    echo ""
    echo "=== Trade Balance (equity / margin / unrealized P&L) ==="
    _private /0/private/TradeBalance | _pp
    ;;

# ----- positions -------------------------------------------------------------
positions)
    result=$(_private /0/private/OpenPositions docalcs=true | _pp 2>&1) || {
        echo "$result" >&2; exit 1
    }
    if [[ "$result" == "{}" ]]; then
        echo "No open positions."
    else
        echo "$result"
    fi
    ;;

# ----- orders ----------------------------------------------------------------
orders)
    _private /0/private/OpenOrders | python3 -c "
import json, sys
d = json.load(sys.stdin)
if d.get('error'):
    print('ERROR:', d['error'], file=sys.stderr); sys.exit(1)
orders = d.get('result', {}).get('open', {})
if not orders:
    print('No open orders.')
else:
    print(json.dumps(orders, indent=2))
"
    ;;

# ----- quote -----------------------------------------------------------------
quote)
    [[ -n "${2:-}" ]] || { echo "Usage: $0 quote SYM/USD" >&2; exit 1; }
    pair=$(_pair "$2")
    _public "/0/public/Ticker?pair=${pair}" | python3 -c "
import json, sys
d = json.load(sys.stdin)
if d.get('error'):
    print('ERROR:', d['error'], file=sys.stderr); sys.exit(1)
for p, v in d['result'].items():
    bid = float(v['b'][0])
    ask = float(v['a'][0])
    mid = (bid + ask) / 2
    spread_pct = (ask - bid) / mid * 100
    print(f'Pair:   {p}')
    print(f'Bid:    \${bid:,.4f}')
    print(f'Ask:    \${ask:,.4f}')
    print(f'Mid:    \${mid:,.4f}')
    print(f'Spread: {spread_pct:.4f}%  ', end='')
    print('OK ✓' if spread_pct <= 1.0 else 'WIDE — skip trade ✗')
"
    ;;

# ----- assets ----------------------------------------------------------------
assets)
    [[ -n "${2:-}" ]] || { echo "Usage: $0 assets SYM/USD" >&2; exit 1; }
    pair=$(_pair "$2")
    _public "/0/public/AssetPairs?pair=${pair}" | python3 -c "
import json, sys
d = json.load(sys.stdin)
if d.get('error'):
    print('ERROR:', d['error'], file=sys.stderr); sys.exit(1)
for p, v in d['result'].items():
    status = v.get('status', 'unknown')
    print(f'Pair:      {p}')
    print(f'Status:    {status}  ', end='')
    print('OK ✓' if status == 'online' else 'NOT TRADEABLE ✗')
    print(f'Min order: {v.get(\"ordermin\", \"n/a\")}')
    print(f'Lot dec:   {v.get(\"lot_decimals\")}')
"
    ;;

# ----- order -----------------------------------------------------------------
order)
    [[ -n "${2:-}" ]] || { echo "Usage: $0 order '{...}'" >&2; exit 1; }
    python3 - "$2" <<'PYEOF'
import json, sys, os, urllib.request, urllib.parse, hashlib, hmac, base64, time

order = json.loads(sys.argv[1])

# Symbol: BTC/USD → XBTUSD, ETH/USD → ETHUSD, etc.
sym = order['symbol'].replace('/', '')
if sym.startswith('BTC'):
    sym = 'XBT' + sym[3:]

OTYPE = {
    'market':        'market',
    'limit':         'limit',
    'stop_limit':    'stop-loss-limit',
    'trailing_stop': 'trailing-stop-limit',
}
otype = OTYPE.get(order.get('type', 'market'), 'market')

params = {
    'pair':      sym,
    'type':      order['side'],
    'ordertype': otype,
    'volume':    str(order['qty']),
}

if order.get('type') == 'stop_limit':
    params['price']  = str(order['stop_price'])   # stop trigger price
    params['price2'] = str(order['limit_price'])  # limit price (below trigger)

if order.get('type') == 'trailing_stop':
    # Kraken trailing stop: price = percentage offset from market (negative = trail below)
    trail_pct = float(order.get('trail_percent', 5))
    params['price']  = f'-{trail_pct}%'            # trailing offset
    params['price2'] = f'-{trail_pct + 0.5}%'      # limit offset (0.5% slack below stop)

if order.get('leverage'):
    params['leverage'] = str(order['leverage'])

if order.get('time_in_force', '').lower() == 'gtc':
    params['timeinforce'] = 'GTC'

# Dry-run: validate=true checks the order without submitting
if order.get('validate'):
    params['validate'] = 'true'

key    = os.environ['KRAKEN_API_KEY']
secret = base64.b64decode(os.environ['KRAKEN_PRIVATE_KEY'])
path   = '/0/private/AddOrder'
nonce  = str(int(time.time() * 1000))
body   = 'nonce=' + nonce + '&' + urllib.parse.urlencode(params)

h256 = hashlib.sha256((nonce + body).encode()).digest()
sig  = base64.b64encode(
    hmac.new(secret, path.encode() + h256, hashlib.sha512).digest()
).decode()

req = urllib.request.Request(
    'https://api.kraken.com' + path,
    body.encode(),
    {'API-Key': key, 'API-Sign': sig, 'Content-Type': 'application/x-www-form-urlencoded'}
)
try:
    with urllib.request.urlopen(req, timeout=15) as r:
        result = json.loads(r.read().decode())
        if result.get('error'):
            print('ORDER ERROR:', result['error'], file=sys.stderr)
            print(json.dumps(result, indent=2))
            sys.exit(1)
        print(json.dumps(result, indent=2))
except urllib.error.HTTPError as e:
    body_text = e.read().decode()
    print(json.dumps({'error': [f'HTTP {e.code}: {body_text}']}))
    sys.exit(1)
except Exception as e:
    print(json.dumps({'error': [str(e)]}))
    sys.exit(1)
PYEOF
    ;;

# ----- cancel ----------------------------------------------------------------
cancel)
    [[ -n "${2:-}" ]] || { echo "Usage: $0 cancel <order_id>  OR  $0 cancel all" >&2; exit 1; }
    if [[ "$2" == "all" ]]; then
        _private /0/private/CancelAll | _pp
    else
        _private /0/private/CancelOrder "txid=${2}" | _pp
    fi
    ;;

# ----- help ------------------------------------------------------------------
*)
    echo "Usage: $0 {account|positions|orders|quote SYM/USD|assets SYM/USD|order '{...}'|cancel <id|all>}" >&2
    exit 1
    ;;
esac
