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
DATA_BASE="${ALPACA_CRYPTO_DATA_ENDPOINT:-https://data.alpaca.markets/v1beta3/crypto/us}"
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
    SYMBOL="${2:-BTC/USD}"
    ENC_SYMBOL=$(python3 -c "import urllib.parse,sys; print(urllib.parse.quote(sys.argv[1]))" "$SYMBOL")
    apca_curl "${DATA_BASE}/latest/bars?symbols=${ENC_SYMBOL}" | python3 -m json.tool
    ;;
  order)
    PAYLOAD="${2:-}"
    if [[ -z "$PAYLOAD" ]]; then
      echo "Usage: $0 order '<json-payload>'" >&2
      exit 1
    fi
    apca_curl -X POST \
      -H "Content-Type: application/json" \
      -d "$PAYLOAD" \
      "${BASE}/orders" | python3 -m json.tool
    ;;
  assets)
    apca_curl "${BASE}/assets?asset_class=crypto&status=active" | python3 -m json.tool
    ;;
  cancel)
    ORDER_ID="${2:-}"
    if [[ -z "$ORDER_ID" ]]; then
      echo "Usage: $0 cancel <order-id>" >&2
      exit 1
    fi
    apca_curl -X DELETE "${BASE}/orders/${ORDER_ID}" | python3 -m json.tool
    ;;
  *)
    echo "Usage: $0 {account|positions|orders|quote <SYM/USD>|order '<json>'|assets|cancel <id>}" >&2
    exit 1
    ;;
esac
