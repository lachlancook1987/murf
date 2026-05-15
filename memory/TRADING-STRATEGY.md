# Crypto Trading Strategy

## Universe
- Crypto only — BTC, ETH, SOL, and alts in top 50 by market cap
- No stocks, no options, no leverage >2x

## BTC Regime Filter (mandatory gate)
- **BTC down >8% in 24h** → Decision = HOLD, no new entries (genuine crash signal only)
- **BTC below 20-day MA** → Caution mode: full universe still tradeable, reduce position sizes by 25%
- **BTC above 20-day MA + neutral/positive funding** → Offensive mode: full universe, normal sizes

## Position Sizing
- Max single position: 65% of portfolio equity
- Max total deployed: 95% of portfolio (keep ~5% cash for fees/slippage)
- Risk per trade: 5-10% of portfolio equity

## Entry Rules
- Confirm catalyst (news, on-chain, technicals — at least one must be present)
- Entry on pullback to key support, breakout with volume, OR momentum (strong trend + catalyst = valid market entry)
- No chasing pumps >20% above base in a single session
- Always set stop-loss immediately after fill

## Exit Rules
- Stop-loss: **fixed stop-limit 5% below entry**, placed immediately after fill confirmation
  - Order type: `stop_limit` — stop trigger at 5% below entry, limit at 4.5% below entry
  - ⚠️ `trailing_stop` order type is NOT supported for crypto on Alpaca — never use it
  - Caution mode (BTC below 20-day MA): tighten to 4% below entry
- Midday stop management (manual trailing via midday scan):
  - Position up ≥40%: cancel existing stop-limit, place new one 5% below current price
  - Position up ≥25%: cancel existing stop-limit, place new one 8% below current price
  - Never move a stop down. Never tighten within 5% of current price.
- Take profit: scale out at 1R, 2R, 3R

## Risk Management
- Default stance: **TRADE** — if a thesis exists, enter. Idle cash is wasted capital.
- Fear & Greed <10 → caution flag, reduce size by 50% (do NOT block entry entirely)
- Fear & Greed >85 → no restriction, trade the greed
- No trading during genuine market crashes (BTC >8% down 24h)

## Indicators Tracked
- BTC 20-day MA (regime filter)
- Funding rate (positive = overheated longs)
- Fear & Greed Index
- BTC dominance (rising = alt headwinds)
- DXY (inverse correlation to crypto)

## Narrative Sectors
Sectors tracked for cumulative performance. Exit rule: 2 consecutive losses → pause that sector.

| Sector | Assets | Status | Consecutive Losses | Notes |
|---|---|---|---|---|
| BTC Core | BTC/USD | ACTIVE | 0 | Primary holding |
| ETH / L1 | ETH/USD | ACTIVE | 0 | Glamsterdam upgrade catalyst pending |
| L2 / DeFi | SOL, AVAX, ARB | ACTIVE | 0 | Now eligible in caution mode too |
| Alts (top 50) | Various | ACTIVE | 0 | Full universe always eligible |

*Last updated: 2026-05-10 — Aggressive profile activated. Sector restrictions removed; all sectors ACTIVE at all times unless 2 consecutive losses trigger a sector pause.*
