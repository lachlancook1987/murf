#!/usr/bin/env bash
# Notification wrapper — delegates to whatsapp.sh (replaced from ClickUp 2026-05-15)
set -euo pipefail

exec "$(dirname "$0")/whatsapp.sh" "$@"
