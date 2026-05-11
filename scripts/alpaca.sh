#!/usr/bin/env bash
# Alpaca API wrapper — reads creds from process env
set -euo pipefail

for v in ALPACA_API_KEY ALPACA_SECRET_KEY ALPACA_ENDPOINT; do
  if [[ -z "${!v:-}" ]]; then
    echo "$v not set in environment" >&2
    exit 3
  fi
done

BASE="${ALPACA_ENDPOINT}/v2"
DATA_BASE="https://data.alpaca.markets/v1beta3/crypto/us"
CMD="${1:-account}"

apca_curl() {
  curl -s \
    -H "APCA-API-KEY-ID: ${ALPACA_API_KEY}" \
    -H "APCA-API-SECRET-KEY: ${ALPACA_SECRET_KEY}" \
    "$@"
}

case "$CMD" in
  account)
    apca_curl "${BASE}/account" | python3 -m json.tool
    ;;
  positions)
    apca_curl "${BASE}/positions" | python3 -m json.tool
    ;;
  orders)
    apca_curl "${BASE}/orders?status=all&limit=20" | python3 -m json.tool
    ;;
  quote)
    SYMBOL="${2:?Usage: $0 quote SYMBOL (e.g. BTC/USD)}"
    ENC=$(python3 -c "import urllib.parse,sys; print(urllib.parse.quote(sys.argv[1]))" "$SYMBOL")
    apca_curl "${DATA_BASE}/latest/quotes?symbols=${ENC}" | python3 -m json.tool
    ;;
  assets)
    FILTER="${2:-}"
    apca_curl "${BASE}/assets?asset_class=crypto&status=active" \
      | python3 -c "
import json,sys,re
assets=json.load(sys.stdin)
filt=sys.argv[1] if len(sys.argv)>1 else ''
for a in assets:
    if not filt or re.search(filt,a.get('symbol',''),re.I):
        print(a['symbol'],a['status'],a.get('tradable',''))
" "$FILTER"
    ;;
  order)
    PAYLOAD="${2:?Usage: $0 order '{...json...}'}"
    apca_curl -X POST \
      -H "Content-Type: application/json" \
      -d "$PAYLOAD" \
      "${BASE}/orders" | python3 -m json.tool
    ;;
  *)
    echo "Usage: $0 {account|positions|orders|quote SYMBOL|assets [FILTER]|order '{json}'}" >&2
    exit 1
    ;;
esac
