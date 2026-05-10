# Crypto Trading Strategy

## Universe
- Crypto only — BTC, ETH, SOL, and select large-cap alts (top 20 by market cap)
- No stocks, no options, no leverage >2x

## BTC Regime Filter (mandatory gate)
- **BTC down >5% in 24h** → Decision = HOLD, no new entries
- **BTC below 20-day MA** → Defensive mode: BTC/ETH only, reduce position sizes by 50%
- **BTC above 20-day MA + neutral/positive funding** → Offensive mode: full universe, normal sizes

## Position Sizing
- Max single position: 20% of portfolio
- Max total deployed: 80% of portfolio (keep 20% cash buffer)
- Risk per trade: 1-2% of portfolio equity

## Entry Rules
- Confirm catalyst (news, on-chain, technicals align)
- Entry on pullback to key support or breakout with volume
- Always set stop-loss at entry

## Exit Rules
- Stop-loss: 3-5% below entry (hard stop)
- Take profit: scale out at 1R, 2R, 3R
- Time stop: exit if no movement in 48h

## Risk Management
- Default stance: HOLD (patience > activity)
- No chasing pumps >10% from base
- No trading during extreme fear (<15 F&G) unless thesis is very strong
- No trading during extreme greed (>85 F&G) — look for shorts or wait

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
| BTC Core | BTC/USD | ACTIVE | 0 | Defensive-mode primary |
| ETH / L1 | ETH/USD | ACTIVE | 0 | Glamsterdam upgrade catalyst pending |
| L2 / DeFi | SOL, AVAX, ARB | WATCH | 0 | Offensive mode only; BTC dom must be falling |
| Alts (top 20) | Various | WATCH | 0 | Offensive mode only |

*Last updated: 2026-05-04 (week 1 — no trades, baseline established)*
