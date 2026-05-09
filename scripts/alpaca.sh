#!/usr/bin/env bash
# Alpaca API wrapper — reads creds from process env
set -euo pipefail

for v in ALPACA_API_KEY ALPACA_SECRET_KEY ALPACA_ENDPOINT; do
  if [[ -z "${!v:-}" ]]; then
    echo "$v not set in environment" >&2
    exit 3
  fi
done

BASE="${ALPACA_ENDPOINT}"
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
  close)
    # close <SYMBOL>   e.g. close SOLUSD  or close SOL/USD
    SYMBOL="${2:?Usage: alpaca.sh close SYMBOL}"
    apca_curl -X DELETE "${BASE}/positions/${SYMBOL}" | python3 -m json.tool
    ;;
  cancel)
    # cancel <ORDER_ID>
    ORDER_ID="${2:?Usage: alpaca.sh cancel ORDER_ID}"
    apca_curl -X DELETE "${BASE}/orders/${ORDER_ID}" | python3 -m json.tool
    ;;
  place_trail)
    # place_trail <SYMBOL> <QTY> <TRAIL_PERCENT>
    SYMBOL="${2:?Usage: alpaca.sh place_trail SYMBOL QTY TRAIL_PERCENT}"
    QTY="${3:?Usage: alpaca.sh place_trail SYMBOL QTY TRAIL_PERCENT}"
    TRAIL="${4:?Usage: alpaca.sh place_trail SYMBOL QTY TRAIL_PERCENT}"
    apca_curl -X POST "${BASE}/orders" \
      -H "Content-Type: application/json" \
      -d "{\"symbol\":\"${SYMBOL}\",\"qty\":\"${QTY}\",\"side\":\"sell\",\"type\":\"trailing_stop\",\"time_in_force\":\"gtc\",\"trail_percent\":\"${TRAIL}\"}" \
      | python3 -m json.tool
    ;;
  *)
    echo "Usage: $0 {account|positions|orders|close SYMBOL|cancel ORDER_ID|place_trail SYMBOL QTY TRAIL_PCT}" >&2
    exit 1
    ;;
esac
