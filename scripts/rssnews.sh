#!/usr/bin/env bash
# Free RSS catalyst-freshness check — no API key required.
# Cross-checks a candidate's catalyst against major crypto news outlets' RSS
# feeds, which carry real publish timestamps, as a supplement to Perplexity's
# prose-based catalyst query (see memory/TRADING-STRATEGY.md's Discovery
# Method — added 2026-09-27 after a gate-attribution review found catalyst
# staleness/ticker-identity ambiguity was a recurring rejection cause).
set -euo pipefail

MAX_AGE_HOURS="${1:-6}"
shift || true

if [[ $# -eq 0 ]]; then
  echo "Usage: $0 <max_age_hours> <term1> [term2] [term3] ..." >&2
  echo "  Pass both the ticker and the project's full name as separate terms" >&2
  echo "  (e.g. $0 6 ONDO \"Ondo Finance\") — headlines usually use the project" >&2
  echo "  name, not the ticker, so ticker-only matching misses real coverage." >&2
  exit 1
fi

python3 "$(dirname "$0")/rssnews.py" "$MAX_AGE_HOURS" "$@"
