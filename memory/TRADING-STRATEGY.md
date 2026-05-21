# Crypto Trading Strategy

---

## KRAKEN PROFILE (active when using scripts/kraken.sh)

### Philosophy
Aggressive, high-frequency. Treat capital as gambling money. Trade > hold.
Fees are accepted as the cost of action — daily trading activity is the goal regardless.

### Universe
All pairs available on Kraken. Focus on top-100 by 24h volume for liquidity.
No sector pauses, no BTC regime gate, no asset blacklist.

### Entry Rules
- Any of: momentum (>3% move in 4h), breakout above resistance, news/catalyst, technical setup
- Prefer limit orders for entries (maker fee 0.16% vs taker 0.26%)
- Multiple entries per day encouraged — look for setups across BTC, ETH, SOL and any alt with a live catalyst or strong volume
- Use `bash scripts/kraken.sh quote SYM/USD` to confirm spread before entering illiquid alts (skip if spread >1%)

### Position Sizing
- No single-position cap — size to conviction
- Up to 2× leverage when Kraken margin account is confirmed active
  - Leverage field in order JSON: add `"leverage":"2"` to the order params
  - Rollover fee: ~0.01–0.02% per 4h on open leveraged positions
- Keep minimum ~$5 cash reserve for fees buffer

### Exit Rules
- **Trailing stop preferred** — `"type":"trailing_stop","trail_percent":"5"` via Kraken (natively supported)
- Tighten trail to 3% on positions up ≥20%
- No minimum hold time — exit same session if thesis breaks or better opportunity appears
- Take profit: optional scale-outs at +10%, +20%, +30%; otherwise ride the trailing stop

### Stop Placement
```bash
bash scripts/kraken.sh order '{"symbol":"SYM/USD","qty":"N","side":"sell","type":"trailing_stop","trail_percent":"5","time_in_force":"gtc"}'
```
Fixed fallback if trailing stop rejected:
```bash
bash scripts/kraken.sh order '{"symbol":"SYM/USD","qty":"N","side":"sell","type":"stop_limit","stop_price":"X","limit_price":"Y","time_in_force":"gtc"}'
```

### Risk Rules
- No BTC regime filter
- No sector pause tracking
- No weekly trade cap
- No position count limit
- **One hard rule:** never use >2× leverage (Kraken platform maximum for this account)
- If full account is down >50% in a single day, pause and review before continuing

### Indicators (lightweight)
- 4h momentum: >3% move = entry candidate
- Volume spike: >2× 20-period average = confirmation
- Funding rate on leveraged positions: if >0.05%/8h, avoid adding longs
- Spread check: skip alts with bid/ask spread >1%

### Workflow (Kraken session)
1. `bash scripts/kraken.sh account` — check balance
2. `bash scripts/kraken.sh positions` — review open holdings
3. `bash scripts/kraken.sh quote SYM/USD` — confirm spread/price before each trade
4. Place order → immediately place trailing stop
5. Log trade in TRADE-LOG.md
6. Notify via `bash scripts/clickup.sh`

*Profile added: 2026-05-21. Deposit pending ($66 AUD). Leverage: pending margin account confirmation.*

---

## ALPACA PROFILE (active when using scripts/alpaca.sh)

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
| BTC Core | BTC/USD | ACTIVE | 1 | Re-entry stopped out May 13 (-$1.62); at 1 of 2 pause threshold |
| ETH / L1 | ETH/USD | ACTIVE | 1 | May 15 re-entry stopped out May 17-18 @ $2,155.13 (-$3.29); at 1 of 2 pause threshold; May 18 re-entry @ $2,120.40 |
| L2 / DeFi | SOL, AVAX, ARB | ACTIVE | 0 | SOL closed May 13 near-flat; ARB unlock May 16 — no outsized impact |
| Alts (top 50) | Various | **PAUSED** | **2** | XRP May 18 re-entry stopped out May 20 @ $1.366 (-$0.80, -2.14%); 2nd consecutive loss → PAUSE triggered |

*Last updated: 2026-05-20 — XRP stopped out at $1.366 (market sell 07:42 UTC). 2nd consecutive loss for Alts/top-50 sector → PAUSED. No XRP or other alt entries until sector resets (2 consecutive winners elsewhere or manual override). ETH and BTC Core each at 1 loss (at pause threshold). L2/DeFi cleanest at 0 losses.*
