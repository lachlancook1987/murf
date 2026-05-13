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
  close)
    SYM="${2:?Usage: $0 close SYMBOL}"
    # URL-encode slash: BTC/USD -> BTC%2FUSD
    ENC=$(python3 -c "import urllib.parse,sys; print(urllib.parse.quote(sys.argv[1],safe=''))" "$SYM")
    apca_curl -X DELETE "${BASE}/positions/${ENC}" | python3 -m json.tool
    ;;
  cancel)
    ORDER_ID="${2:?Usage: $0 cancel ORDER_ID}"
    apca_curl -X DELETE "${BASE}/orders/${ORDER_ID}" | python3 -m json.tool
    ;;
  quote)
    SYM="${2:?Usage: $0 quote SYMBOL}"
    DATA_BASE="${ALPACA_CRYPTO_DATA_ENDPOINT:-https://data.alpaca.markets}"
    ENC=$(python3 -c "import urllib.parse,sys; print(urllib.parse.quote(sys.argv[1],safe=''))" "$SYM")
    apca_curl "${DATA_BASE}/v1beta3/crypto/us/latest/quotes?symbols=${ENC}" | python3 -m json.tool
    ;;
  *)
    echo "Usage: $0 {account|positions|orders|close SYMBOL|cancel ORDER_ID|quote SYMBOL}" >&2
    exit 1
    ;;
esac
