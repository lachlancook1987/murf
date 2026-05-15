#!/usr/bin/env bash
# WhatsApp notification wrapper — sends via CallMeBot API
set -euo pipefail

for v in WHATSAPP_PHONE WHATSAPP_APIKEY; do
  if [[ -z "${!v:-}" ]]; then
    echo "$v not set in environment" >&2
    exit 3
  fi
done

MESSAGE="${1:-}"
if [[ -z "$MESSAGE" ]]; then
  echo "Usage: $0 \"<message>\"" >&2
  exit 1
fi

ENCODED=$(python3 -c "import sys, urllib.parse; print(urllib.parse.quote(sys.argv[1]))" "$MESSAGE")

RESPONSE=$(curl -s \
  "https://api.callmebot.com/whatsapp.php?phone=${WHATSAPP_PHONE}&text=${ENCODED}&apikey=${WHATSAPP_APIKEY}")

echo "$RESPONSE"

if echo "$RESPONSE" | grep -qi "queued\|success"; then
  :
else
  echo "WhatsApp API error: $RESPONSE" >&2
  exit 1
fi
