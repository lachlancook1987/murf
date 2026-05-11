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
    apca_curl "${BASE}/orders?status=all&limit=20" | python3 -m json.tool
    ;;
  quote)
    SYMBOL="${2:-BTC/USD}"
    DATA_BASE="${ALPACA_CRYPTO_DATA_ENDPOINT:-https://data.alpaca.markets}/v1beta3/crypto/us"
    apca_curl "${DATA_BASE}/latest/quotes?symbols=${SYMBOL}" | python3 -m json.tool
    ;;
  close)
    SYMBOL="${2:?Usage: $0 close SYMBOL}"
    apca_curl -X DELETE "${BASE}/positions/${SYMBOL}" | python3 -m json.tool
    ;;
  cancel)
    ORDER_ID="${2:?Usage: $0 cancel ORDER_ID}"
    apca_curl -X DELETE "${BASE}/orders/${ORDER_ID}" | python3 -m json.tool
    ;;
  *)
    echo "Usage: $0 {account|positions|orders|quote SYMBOL|close SYMBOL|cancel ORDER_ID}" >&2
    exit 1
    ;;
esac
