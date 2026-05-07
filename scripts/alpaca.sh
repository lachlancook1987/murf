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
DATA_BASE="${ALPACA_CRYPTO_DATA_ENDPOINT:-https://data.alpaca.markets/v1beta3}"
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
    SYMBOL="${2:?symbol required, e.g. BTC/USD}"
    # URL-encode the slash: BTC/USD -> BTC%2FUSD
    ENC_SYM="${SYMBOL/\//%2F}"
    apca_curl "${DATA_BASE}/crypto/us/latest/quotes?symbols=${ENC_SYM}" | python3 -m json.tool
    ;;
  order)
    PAYLOAD="${2:?order JSON payload required}"
    apca_curl -X POST \
      -H "Content-Type: application/json" \
      -d "${PAYLOAD}" \
      "${BASE}/orders" | python3 -m json.tool
    ;;
  assets)
    apca_curl "${BASE}/assets?asset_class=crypto&status=active" | python3 -m json.tool
    ;;
  *)
    echo "Usage: $0 {account|positions|orders|quote SYMBOL|order JSON|assets}" >&2
    exit 1
    ;;
esac
