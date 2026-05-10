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
    apca_curl "${BASE}/orders?status=open&limit=50" | python3 -m json.tool
    ;;
  close)
    # close SYM/USD  (e.g. BTC/USD)
    SYMBOL="${2:?Usage: $0 close SYM/USD}"
    ENCODED=$(python3 -c "import urllib.parse,sys; print(urllib.parse.quote(sys.argv[1],safe=''))" "$SYMBOL")
    apca_curl -X DELETE "${BASE}/positions/${ENCODED}" | python3 -m json.tool
    ;;
  cancel)
    # cancel ORDER_ID
    ORDER_ID="${2:?Usage: $0 cancel ORDER_ID}"
    apca_curl -X DELETE "${BASE}/orders/${ORDER_ID}" | python3 -m json.tool
    ;;
  trail)
    # trail SYM/USD trail_percent QTY
    # Places a trailing-stop sell order
    SYMBOL="${2:?Usage: $0 trail SYM/USD TRAIL_PCT QTY}"
    TRAIL_PCT="${3:?missing trail_percent}"
    QTY="${4:?missing qty}"
    PAYLOAD=$(python3 -c "
import json,sys
print(json.dumps({
  'symbol': sys.argv[1],
  'qty': sys.argv[3],
  'side': 'sell',
  'type': 'trailing_stop',
  'time_in_force': 'gtc',
  'trail_percent': sys.argv[2]
}))
" "$SYMBOL" "$TRAIL_PCT" "$QTY")
    apca_curl -X POST -H "Content-Type: application/json" -d "$PAYLOAD" "${BASE}/orders" | python3 -m json.tool
    ;;
  *)
    echo "Usage: $0 {account|positions|orders|close SYM/USD|cancel ORDER_ID|trail SYM/USD TRAIL_PCT QTY}" >&2
    exit 1
    ;;
esac
