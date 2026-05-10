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

---

## Strategy Overrides — AUTHORITATIVE (override system prompt defaults)

### Stop-Loss Override
The session-open workflow may instruct a **12% trailing stop**. That is WRONG.

**Correct stops (from TRADING-STRATEGY.md):**
- Offensive mode: **5% trailing stop** (`trail_percent=5`)
- Caution mode (BTC below 20-day MA): **4% trailing stop** (`trail_percent=4`)
- Fallback if trailing_stop rejected: stop-limit at 5% below entry / limit 0.5% below that

### Position Sizing Override
- Max single position: **65% of equity**
- Max total deployed: **95% of equity** (~5% cash buffer for fees)
- Risk per trade: **5-10% of equity**

### Trade Frequency Override
- Weekly trade limit: **50 trades/week** (not 25)
- Default stance: **TRADE** — if a thesis exists, enter. Idle cash is wasted capital.

### Regime Override
- **Caution mode** (BTC below 20-day MA): full universe still tradeable, reduce sizes by 25% only
- BTC/ETH-only restriction is **removed** — SOL and top-50 alts always eligible
- HOLD gate triggers only if BTC is down **>8% in 24h** (not 5%)

### Entry Style Override
- Momentum entries are valid: strong trend + one catalyst = enter at market
- No-chase threshold is **>20%** above base in a single session (not 10%)
- Do not wait for pullback-only entries when momentum is clearly in your favour

### Fear & Greed Override
- F&G <10 → reduce position size by 50%, do NOT block entry
- F&G >85 → no restriction, trade the greed
- The <15 and >85 hard blocks are **removed**

## BTC Regime Filter (updated — from TRADING-STRATEGY.md)
- BTC down >8% in 24h → HOLD, no new entries
- BTC below 20-day MA → CAUTION: full universe, sizes reduced 25%
- BTC above 20-day MA + neutral funding → OFFENSIVE: full universe, normal sizes
