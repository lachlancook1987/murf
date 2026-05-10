# murf — Crypto Trading Bot

## Overview
Automated crypto-only trading bot using Alpaca paper/live accounts. Runs pre-session research, midday scans, and EOD snapshots. All memory files must stay current on `main` so every routine reads fresh data.

## Repo Structure
```
memory/
  TRADING-STRATEGY.md   # regime rules, sizing, entry/exit logic
  RESEARCH-LOG.md       # dated pre-session and intra-session entries
  TRADE-LOG.md          # EOD snapshots and filled trade records
  WEEKLY-REVIEW.md      # weekly P&L and strategy review
scripts/
  alpaca.sh             # Alpaca broker API wrapper
  perplexity.sh         # Perplexity AI research wrapper
  clickup.sh            # ClickUp notification wrapper
```

## Environment Variables (never write to .env)
All keys are exported as process env vars. Required:
- `ALPACA_API_KEY`, `ALPACA_SECRET_KEY`, `ALPACA_ENDPOINT`
- `PERPLEXITY_API_KEY`, `PERPLEXITY_MODEL`
- `CLICKUP_API_KEY`, `CLICKUP_WORKSPACE_ID`, `CLICKUP_CHANNEL_ID`

The Alpaca broker API requires `/v2/` path prefix (e.g. `$ALPACA_ENDPOINT/v2/account`).

## Git Workflow — CRITICAL

**Memory files on `main` must always be current.** Other routines read directly from `main`. Stale data = wrong decisions.

### End-of-routine commit pattern (mandatory for ALL routines):

```bash
# 1. Stage only memory files (never commit .env or secrets)
git add memory/

# 2. Commit with descriptive message
git commit -m "crypto <routine-name> <DATE>"

# 3. Push to current branch
git push -u origin <branch-name>

# 4. Create PR (NOT draft) and immediately merge it
#    Use mcp__github__ tools:
#    - create_pull_request (draft: false)
#    - merge_pull_request (merge_method: "squash")
#
# This ensures main is always up to date before the session ends.
```

**Never leave PRs as draft or unmerged.** Always call `merge_pull_request` immediately after `create_pull_request` in every routine.

If direct push to main is ever available (no branch protection), prefer:
```bash
git checkout main && git merge --ff-only <branch> && git push origin main
```

## Routines

### Pre-Session Research
Reads memory → pulls live account → Perplexity research → applies BTC regime filter → writes RESEARCH-LOG.md entry → ClickUp alert if urgent → **commit + push + PR + immediate merge to main**.

### Midday Scan
Checks open positions, P&L, stop distances, any sharp moves → appends RESEARCH-LOG.md addendum → **commit + push + PR + immediate merge to main**.

### EOD Snapshot
Captures equity, positions, day P&L vs BTC → appends TRADE-LOG.md → **commit + push + PR + immediate merge to main**.

### Weekly Review
Reviews week's trades, P&L, regime, strategy updates → appends WEEKLY-REVIEW.md → **commit + push + PR + immediate merge to main**.

## BTC Regime Filter (from TRADING-STRATEGY.md)
- BTC down >5% in 24h → HOLD, no new entries
- BTC below 20-day MA → DEFENSIVE: BTC/ETH only, 50% position sizes
- BTC above 20-day MA + neutral funding → OFFENSIVE: full universe, normal sizes
