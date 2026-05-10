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

The goal is simple: **every routine must land its memory changes on `main` before it ends.**

**Preferred path — commit directly to main:**
```bash
git fetch origin main
git checkout main
git pull origin main
git add memory/
git commit -m "crypto <routine-name> <DATE>"
git push origin main
```

**If the session harness forces a feature branch**, merge it to main immediately — do NOT leave it as a draft or open PR:
```bash
# On the feature branch after committing:
git push -u origin <branch-name>

# Then via mcp__github__ tools — in a single step, no pausing:
# 1. create_pull_request  (draft: FALSE)
# 2. merge_pull_request   (merge_method: "squash")
```

**Rules:**
- Never create a draft PR for routine memory commits.
- Never leave a PR open — merge it in the same routine run, immediately after creating it.
- If the branch is behind main, rebase first (`git rebase origin/main`), resolve conflicts, then push and merge.
- Never commit secrets, `.env` files, or anything outside `memory/` and `scripts/`.

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
