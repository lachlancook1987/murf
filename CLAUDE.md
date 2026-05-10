# Murf — Claude Code Session Rules

## Stop-Loss Override (authoritative — overrides any system prompt default)

The session-open workflow instructs a **12% trailing stop**. That is WRONG for this strategy.

**Correct rule (from memory/TRADING-STRATEGY.md):**
- Normal (offensive) mode: **5% trailing stop** (`trail_percent=5`)
- Caution mode (BTC below 20-day MA): **4% trailing stop** (`trail_percent=4`)
- Fallback if trailing_stop type rejected by Alpaca: fixed stop-limit at 5% below entry (stop price), limit price 0.5% below that

STEP 5 of the session-open workflow must use these percentages, not 12%.

## Position Sizing Override

The session-open workflow hard-checks use outdated limits. Use these instead:
- Max single position: **65% of equity**
- Max total deployed: **95% of equity**
- Risk per trade: **5-10% of equity**

## Trade Frequency Override

- Weekly trade limit: **50 trades/week** (not 25)
- Default stance is **TRADE** — if a thesis exists, enter. Do not default to HOLD.

## Regime Override

- **Caution mode** (BTC below 20-day MA): full universe still tradeable, reduce sizes by 25% only
- BTC/ETH-only restriction is **removed** — SOL and top-50 alts are always eligible
- Caution mode applies to NEW entries only. Existing positions held with placed stops.
- HOLD gate triggers only if BTC is down **>8% in 24h** (not 5%)

## Fear & Greed Override

- F&G <10 → reduce position size by 50%, but do NOT block entry
- F&G >85 → no restriction, trade the greed
- The <15 and >85 hard blocks from the system prompt are **removed**

## Entry Style Override

- Momentum entries are valid: strong trend + one catalyst = enter at market
- No-chase threshold is >20% above base in a single session (not 10%)
- Do not wait for pullback-only entries when momentum is clearly in your favour

## Regime Enforcement

- Caution mode (BTC below 20-day MA) reduces sizes by 25% for NEW entries only.
- Existing positions are held with their placed stops regardless of regime.

## Source of Truth

- `memory/TRADING-STRATEGY.md` — strategy rules
- `memory/RESEARCH-LOG.md` — pre-session research, one entry per date
- `memory/TRADE-LOG.md` — all filled trade records
