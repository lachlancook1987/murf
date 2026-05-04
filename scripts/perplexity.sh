#!/usr/bin/env bash
# Perplexity API wrapper — reads creds from process env
set -euo pipefail

for v in PERPLEXITY_API_KEY; do
  if [[ -z "${!v:-}" ]]; then
    echo "$v not set in environment" >&2
    exit 3
  fi
done

MODEL="${PERPLEXITY_MODEL:-sonar}"
QUERY="${1:-}"

if [[ -z "$QUERY" ]]; then
  echo "Usage: $0 \"<query>\"" >&2
  exit 1
fi

PAYLOAD=$(python3 -c "
import json, sys
q = sys.argv[1]
obj = {
  'model': '${MODEL}',
  'messages': [
    {'role': 'system', 'content': 'You are a concise financial research assistant. Provide factual, current data only. Be brief.'},
    {'role': 'user', 'content': q}
  ],
  'max_tokens': 400,
  'temperature': 0.1
}
print(json.dumps(obj))
" "$QUERY")

RESPONSE=$(curl -s \
  -H "Authorization: Bearer ${PERPLEXITY_API_KEY}" \
  -H "Content-Type: application/json" \
  -d "$PAYLOAD" \
  "https://api.perplexity.ai/chat/completions")

EXIT_CODE=$?
if [[ $EXIT_CODE -ne 0 ]]; then
  echo "Perplexity curl failed (exit $EXIT_CODE)" >&2
  exit 3
fi

python3 -c "
import json, sys
data = json.load(sys.stdin)
if 'choices' in data and data['choices']:
    print(data['choices'][0]['message']['content'])
elif 'error' in data:
    print('ERROR:', data['error'], file=sys.stderr)
    sys.exit(3)
else:
    print(json.dumps(data, indent=2))
" <<< "$RESPONSE"
