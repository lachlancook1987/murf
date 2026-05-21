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

## ALPACA PROFILE (archived — legacy wind-down only)

*Migrated to Kraken 2026-05-21. No new Alpaca trades. One residual position remains:*
*BTC/USD 0.001619226 @ $77,910.27 | stop a2b44cf9 at $74,793.86 / $74,045.92 (GTC)*
*Monitor stop only. When triggered or manually closed, Alpaca is fully retired.*
