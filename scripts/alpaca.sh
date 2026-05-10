#!/usr/bin/env bash
# Alpaca API wrapper — reads creds from process env
set -euo pipefail

for v in ALPACA_API_KEY ALPACA_SECRET_KEY ALPACA_ENDPOINT; do
  if [[ -z "${!v:-}" ]]; then
    echo "$v not set in environment" >&2
    exit 3
  fi
done

BASE="${ALPACA_ENDPOINT%/}"  # strip trailing slash
CMD="${1:-account}"

apca_curl() {
  curl -s \
    -H "APCA-API-KEY-ID: ${ALPACA_API_KEY}" \
    -H "APCA-API-SECRET-KEY: ${ALPACA_SECRET_KEY}" \
    "$@"
}

case "$CMD" in
  account)
    apca_curl "${BASE}/v2/account" | python3 -m json.tool
    ;;
  positions)
    apca_curl "${BASE}/v2/positions" | python3 -m json.tool
    ;;
  orders)
    apca_curl "${BASE}/v2/orders?status=all&limit=20" | python3 -m json.tool
    ;;
  *)
    echo "Usage: $0 {account|positions|orders}" >&2
    exit 1
    ;;
esac
