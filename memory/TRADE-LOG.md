# Trade Log

## Format
Each entry: DATE | PAIR | ACTION | SIZE | ENTRY | EXIT | P&L | NOTES

---

<!-- Trades will be appended below -->

---

## 2026-05-09T04:02:30Z | SOL/USD | STOP UPDATE | 122.6925 qty
- **Action:** Replaced fixed stop with raised stop-limit (12% below current price)
- **Old stop:** $77.59 stop / $76.04 limit (12% below entry $88.17)
- **New stop:** $82.55 stop / $81.50 limit (12% below current $93.81) — superseded
- **Reason:** SOL +6.39% unrealized gain; stop raised to lock in partial gains
- **Order ID:** 1dbe0b14-9e99-470e-a3e4-cdbaadf1738b — CANCELLED
- **Note:** Alpaca rejects trailing_stop for crypto; fixed stop-limit used as fallback

---

## 2026-05-09T04:04:10Z | SOL/USD | STOP UPDATE | 122.6925 qty
- **Action:** Tightened stop to 5% below current price
- **Old stop:** $82.55 stop / $81.50 limit (12% below current)
- **New stop:** $89.12 stop / $88.24 limit (5% below current $93.81)
- **Reason:** User requested tighter 5% stop to better protect gains
- **Order ID:** 64e25cf6-a7b2-4530-b50c-1ca37bca87d3
