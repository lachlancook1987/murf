#!/usr/bin/env bash
# ClickUp notification wrapper — posts a comment on a task via v2 API
set -euo pipefail

for v in CLICKUP_API_KEY; do
  if [[ -z "${!v:-}" ]]; then
    echo "$v not set in environment" >&2
    exit 3
  fi
done

# Task to receive notifications. Override via CLICKUP_TASK_ID env var.
TASK_ID="${CLICKUP_TASK_ID:-86d2w4nyb}"

MESSAGE="${1:-}"
if [[ -z "$MESSAGE" ]]; then
  echo "Usage: $0 \"<message>\"" >&2
  exit 1
fi

PAYLOAD=$(python3 -c "
import json, sys
msg = sys.argv[1]
print(json.dumps({'comment_text': msg, 'notify_all': False}))
" "$MESSAGE")

curl -s \
  -X POST \
  -H "Authorization: ${CLICKUP_API_KEY}" \
  -H "Content-Type: application/json" \
  -d "$PAYLOAD" \
  "https://api.clickup.com/api/v2/task/${TASK_ID}/comment" | python3 -m json.tool 2>/dev/null || true
