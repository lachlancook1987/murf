#!/usr/bin/env bash
# ClickUp chat message wrapper — reads creds from process env
set -euo pipefail

for v in CLICKUP_API_KEY CLICKUP_WORKSPACE_ID CLICKUP_CHANNEL_ID; do
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

curl -s \
  -X POST \
  -H "Authorization: ${CLICKUP_API_KEY}" \
  -H "Content-Type: application/json" \
  -d "$PAYLOAD" \
  "https://api.clickup.com/api/v3/workspaces/${CLICKUP_WORKSPACE_ID}/chat/channels/${CLICKUP_CHANNEL_ID}/messages" | python3 -m json.tool 2>/dev/null || true
