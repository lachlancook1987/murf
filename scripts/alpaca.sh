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

DATA_BASE="${ALPACA_CRYPTO_DATA_ENDPOINT:-https://data.alpaca.markets}"

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
    SYM="${2:-BTC/USD}"
    ENC=$(python3 -c "import urllib.parse,sys; print(urllib.parse.quote(sys.argv[1]))" "$SYM")
    apca_curl "${DATA_BASE}/v1beta3/crypto/us/latest/bars?symbols=${ENC}" | python3 -m json.tool
    ;;
  assets)
    apca_curl "${BASE}/assets?asset_class=crypto&status=active" | python3 -m json.tool
    ;;
  order)
    JSON="${2:-}"
    if [[ -z "$JSON" ]]; then
      echo "Usage: $0 order '<json>'" >&2
      exit 1
    fi
    apca_curl -X POST -H "Content-Type: application/json" -d "$JSON" "${BASE}/orders" | python3 -m json.tool
    ;;
  *)
    echo "Usage: $0 {account|positions|orders|quote|assets|order}" >&2
    exit 1
    ;;
esac
