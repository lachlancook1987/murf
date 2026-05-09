# Trade Log

## Format
Each entry: DATE | PAIR | ACTION | SIZE | ENTRY | EXIT | P&L | NOTES

---

<!-- Trades will be appended below -->

---

## 2026-05-09T04:02:30Z | SOL/USD | STOP UPDATE | 122.6925 qty
- **Action:** Replaced fixed stop with raised stop-limit (12% below current price)
- **Old stop:** $77.59 stop / $76.04 limit (12% below entry $88.17)
- **New stop:** $82.55 stop / $81.50 limit (12% below current $93.81)
- **Reason:** SOL +6.39% unrealized gain; stop raised to lock in partial gains
- **Order ID:** 1dbe0b14-9e99-470e-a3e4-cdbaadf1738b
- **Note:** Alpaca rejects trailing_stop for crypto; fixed stop-limit used as fallback
