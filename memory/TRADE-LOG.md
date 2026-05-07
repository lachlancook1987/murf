# Trade Log

## Format
Each entry: DATE | PAIR | ACTION | SIZE | ENTRY | EXIT | P&L | NOTES

---

<!-- Trades will be appended below -->

---

## 2026-05-07 Overnight Triage Check

**Time:** 2026-05-07 ~05:35 UTC | **Type:** TRIAGE-ONLY (no new positions)

### Positions Reviewed
| PAIR    | QTY        | ENTRY      | CURRENT  | UNREAL P&L% | STATUS |
|---------|------------|------------|----------|-------------|--------|
| ETH/USD | 5.1572745  | $2,321.66  | $2,331.73| +0.43%      | HOLD   |
| SOL/USD | 122.6925   | $88.17     | $88.44   | +0.30%      | HOLD   |

### Emergency Exits (threshold: ≤ -10%)
None triggered. Both positions well above threshold.

### Stop Tightening (threshold: +25% / +40%)
None triggered. Neither position near thresholds.

### Open Orders Audit
- ETH/USD stop_limit id=d4ccba1c: stop@$2,130 / limit@$2,100 — valid, matches position
- SOL/USD stop_limit id=6c2eaac1: stop@$77.59 / limit@$76.04 — valid, matches position
- No orphaned orders found.

### BTC Regime Check
- May 6 close: $81,445.99 | May 7 current: $81,087.83
- Overnight move: **-0.44%** — within ±8% threshold. No regime alert.

### Config Warning
- `ALPACA_CRYPTO_DATA_ENDPOINT` not set in environment. Fell back to `https://data.alpaca.markets` for BTC data. ClickUp alert sent.

### Actions Taken
None. No-op night — positions healthy, stops in place, BTC regime stable.
