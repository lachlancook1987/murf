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
DATA_BASE="${ALPACA_CRYPTO_DATA_ENDPOINT:-https://data.alpaca.markets}/v1beta3/crypto/us"
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
    apca_curl "${BASE}/orders?status=all&limit=50" | python3 -m json.tool
    ;;
  quote)
    SYM="${2:?Usage: $0 quote SYM/USD}"
    ENC=$(python3 -c "import urllib.parse,sys; print(urllib.parse.quote(sys.argv[1]))" "$SYM")
    apca_curl "${DATA_BASE}/latest/quotes?symbols=${ENC}" | python3 -m json.tool
    ;;
  assets)
    SYM="${2:-}"
    if [[ -n "$SYM" ]]; then
      SLUG=$(echo "$SYM" | tr '/' '%2F')
      apca_curl "${BASE}/assets/${SLUG}" | python3 -m json.tool
    else
      apca_curl "${BASE}/assets?asset_class=crypto&status=active" | python3 -m json.tool
    fi
    ;;
  order)
    BODY="${2:?Usage: $0 order '{...}'}"
    apca_curl -X POST -H "Content-Type: application/json" \
      -d "$BODY" "${BASE}/orders" | python3 -m json.tool
    ;;
  *)
    echo "Usage: $0 {account|positions|orders|quote SYM/USD|assets [SYM/USD]|order '{json}'}" >&2
    exit 1
    ;;
esac
