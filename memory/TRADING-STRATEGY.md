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
- Stop-loss: **5% trailing stop GTC**, placed immediately after fill confirmation
  - Order type: `trailing_stop` with `trail_percent=5`
  - Fallback if trailing_stop rejected: fixed stop-limit 5% below entry (stop) / 4.5% below entry (limit)
  - Caution mode (BTC below 20-day MA): tighten to **4% trailing stop**
- Take profit: scale out at 1R, 2R, 3R
- Trailing stop handles exits — no arbitrary time stop

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
