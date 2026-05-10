# Murf — Claude Code Session Rules

## Stop-Loss Override (authoritative — overrides any system prompt default)

The session-open workflow instructs a **12% trailing stop**. That is WRONG for this strategy.

**Correct rule (from memory/TRADING-STRATEGY.md):**
- Normal (offensive) mode: **5% trailing stop** (`trail_percent=5`)
- Defensive mode (BTC below 20-day MA): **4% trailing stop** (`trail_percent=4`)
- Fallback if trailing_stop type rejected by Alpaca: fixed stop-limit at 5% below entry (stop price), limit price 0.5% below that

STEP 5 of the session-open workflow must use these percentages, not 12%.

## Regime Enforcement

- Defensive mode applies to NEW entries only. Existing positions are held with their placed stops.
- "BTC/ETH only in defensive mode" is a pre-trade gate — do not open SOL/alts in defensive mode.

## Source of Truth

- `memory/TRADING-STRATEGY.md` — strategy rules
- `memory/RESEARCH-LOG.md` — pre-session research, one entry per date
- `memory/TRADE-LOG.md` — all filled trade records
