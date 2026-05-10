# Trade Log

## Format
Each entry: DATE | PAIR | ACTION | SIZE | ENTRY | EXIT | P&L | NOTES

---

<!-- Trades will be appended below -->

---

### May 04 — EOD Snapshot (Day 1, Monday)
**Portfolio:** $100,000.00 | **Cash:** $100,000.00 (100%) | **Day P&L:** $0.00 (0.00%) | **Phase P&L:** $0.00 (0.00%) | **vs BTC:** N/A (first snapshot)
| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Stop |
|--------|-----|-------|-------|---------|----------------|------|
| — | — | — | — | — | — | — |
**Trades today:** none | **Week:** 0/5
**BTC/USD close:** $79,869.35 (mid; ask $79,890.45)
**Notes:** Day 1 of logging. Account started fresh with $100,000 paper capital, fully in cash, no open positions or orders. No trades executed. BTC is trading around $79,869. This snapshot establishes the baseline equity and BTC price for tomorrow's Day P&L and vs-BTC calculations.

---

### May 05 — EOD Snapshot (Day 1, Wednesday)
**Portfolio:** $100,000.00 | **Cash:** $100,000.00 (100%) | **Day P&L:** $0.00 (0.00%) — first snapshot | **Phase P&L:** $0.00 (0.00%) | **vs BTC:** -1.27%
| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Stop |
|--------|-----|-------|-------|---------|---------------|------|
| — | — | — | — | — | — | — |
**Trades today:** none | **Week:** 0/5
**Starting equity (phase baseline):** $100,000.00 | **BTC close:** $80,871.00 | **BTC 20-day MA:** $77,315.86
**Notes:** Inaugural EOD snapshot. Account launched with $100,000 in all-cash. No positions opened today. BTC/USD gained 1.27% on the day to close at $80,871, trading comfortably above its 20-day moving average of $77,316 — a bullish regime signal. Bot returned 0% vs BTC's +1.27%, underperforming by 1.27% due to holding full cash. Zero trades executed this week. Tomorrow's focus: identify first entry opportunity in BTC or ETH aligned with the bullish regime.

---

## 2026-05-09 — Session Trades (backfilled on 2026-05-10 session-open)

| Field | BTC SELL #1 | BTC SELL #2 | ETH BUY | SOL BUY |
|---|---|---|---|---|
| UTC Time | 10:46 | 11:08 | 11:17 | 23:56 |
| Symbol | BTC/USD | BTC/USD | ETH/USD | SOL/USD |
| Side | SELL | SELL | BUY | BUY |
| Qty | 0.0007 | 0.00104538 | 0.0086 | 0.2995 |
| Fill Price | $80,291.87 | $80,220.86 | $2,314.90 | $93.3467 |
| Stop | — | — | $2,199.16 (stop-limit GTC) | $88.68 (stop-limit GTC) |
| Thesis | Close BTC (dashboard) | Close BTC (access_key) | ETF inflows + Glamsterdam upgrade catalyst | Offensive mode, SOL ecosystem growth |
| Target | — | — | $2,550 / $2,750 | ~$105–110 |
| R:R | — | — | ~1.9:1 / ~2.7:1 | est. ~2:1 |
| Stop Order ID | — | — | ce339cc1-3c47-48c0-9312-7b890707f206 | d6b66834-76b3-4a60-9acf-3f89e30f1eda |

---

## 2026-05-10 — Session-Open

**Decision: HOLD — No new entries**
- Regime: OFFENSIVE (BTC $80,760 vs 20-day MA $78,584, +2.77%)
- BTC entry zone not reached (current vs target $77,500–78,500)
- ETH add blocked by 20% position-size limit
- SOL at 20% limit; no new alts (no catalyst)
- Existing stops: ETH stop-limit $2,199.16 (active), SOL stop-limit $88.68 (active)

---

### May 10 — EOD Snapshot (Day 7, Sunday)
**Portfolio:** $139.75 | **Cash:** $91.83 (65.7%) | **Day P&L:** N/A (first live snapshot) | **Phase P&L:** N/A | **vs BTC:** N/A
| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Stop |
|--------|-----|-------|-------|---------|----------------|------|
| ETH/USD | 0.0085785 | $2,314.90 | $2,329.90 | +0.41% | +$0.13 (+0.65%) | $2,199.16 |
| SOL/USD | 0.29875 | $93.35 | $93.49 | +0.80% | +$0.04 (+0.15%) | $88.68 |
**Trades today:** none (SOL stop replaced $82.14→$88.68) | **Week:** 4/5
**Notes:** First live EOD snapshot. Yesterday (May 9) the bot restructured: closed BTC position via two market sells at $80,220–$80,292, then opened ETH/USD long at $2,314.90 and SOL/USD long at $93.35. Today had no new fills; the SOL protective stop was raised from $82.14 to $88.68, tightening downside protection. Both positions showed modest intraday gains. BTC regime is bullish — price at $80,733 sits 2.7% above the 20-day MA ($78,583). 4 of 5 weekly trade slots used; one slot remains.
