#!/usr/bin/env bash
# ClickUp chat message wrapper — reads creds from process env
set -euo pipefail

for v in CLICKUP_API_KEY CLICKUP_CHANNEL_ID; do
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

PAYLOAD=$(python3 -c "
import json, sys
msg = sys.argv[1]
print(json.dumps({'content_format': 'text/md', 'content': msg}))
" "$MESSAGE")

RESPONSE=$(curl -s -w "\n%{http_code}" \
  -X POST \
  -H "Authorization: ${CLICKUP_API_KEY}" \
  -H "Content-Type: application/json" \
  -d "$PAYLOAD" \
  "https://api.clickup.com/api/v3/channel/${CLICKUP_CHANNEL_ID}/message")

HTTP_STATUS=$(echo "$RESPONSE" | tail -1)
BODY=$(echo "$RESPONSE" | head -n -1)

if [[ "$HTTP_STATUS" -ge 200 && "$HTTP_STATUS" -lt 300 ]]; then
  echo "$BODY" | python3 -m json.tool 2>/dev/null || echo "$BODY"
else
  echo "ERROR: ClickUp API returned HTTP $HTTP_STATUS" >&2
  echo "Response: $BODY" >&2
  echo "Channel ID used: ${CLICKUP_CHANNEL_ID}" >&2
  exit 1
fi
