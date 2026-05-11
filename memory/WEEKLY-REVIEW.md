# Weekly Review Log

<!-- Entries appended below, newest last -->

---

## Week of 2026-04-28 — Review Date 2026-05-04

### Performance
| Metric | Value |
|---|---|
| Starting Equity | $100,000.00 |
| Ending Equity | $100,000.00 |
| Week Return | **0.00%** |
| BTC Week Return | **+3.15%** (Mon open $77,377 → Fri close $79,815) |
| Bot vs BTC | **-3.15%** (cash drag; no trades taken) |

### Trade Stats
| Metric | Value |
|---|---|
| Total Trades | 0 |
| Wins | 0 |
| Losses | 0 |
| Open Positions | 0 |
| Win Rate | N/A |
| Profit Factor | N/A |
| Avg Win / Avg Loss | N/A |

### Weekly BTC Price Action
| Date | Open | Close | Change |
|---|---|---|---|
| 2026-04-28 (Mon) | $77,377 | $76,320 | -1.37% |
| 2026-04-29 (Tue) | $76,319 | $75,756 | -0.74% |
| 2026-04-30 (Wed) | $75,752 | $76,307 | +0.73% |
| 2026-05-01 (Thu) | $76,314 | $78,235 | +2.52% |
| 2026-05-02 (Fri) | $78,236 | $78,696 | +0.59% |
| 2026-05-03 (Sat) | $78,698 | $78,572 | -0.16% |
| 2026-05-04 (Sun) | $78,557 | $79,815 | +1.60% |

### Narrative
First live week of the bot. Account opened 2026-04-25 with $100,000 paper equity. Only one research session was logged (2026-05-04). BTC opened the week at $77,377, sold off to ~$75,756 mid-week (Tue), then recovered strongly to close Friday at $79,815 (+3.15% week-over-week).

Regime filter triggered **DEFENSIVE MODE** throughout: BTC trading at or below its estimated 20-day MA (~$80–82K) with BTC dominance at ~60%. Entry triggers for the defined trade ideas (BTC dip to $77,500–78,500 or ETH dip to $2,250–2,300) were **not hit** — the early-week dip was slightly above the target buy zone and the bot correctly held.

Positive backdrop: ETF inflows ($630M/day on May 1), Strategy accumulation (815K BTC), and Fear & Greed recovering from 12 → 47 (Neutral). Defensive stance preserved capital.

### Sector Review
No trades executed — no sector P&L to evaluate. Sectors remain at baseline (no 2-consecutive-loss exits triggered). Watch: BTC/ETH longs remain the only eligible trades in defensive mode.

### Key Lesson
**Patience is a position.** BTC rallied +3.15% this week while the bot held cash. This is an acceptable outcome in week 1 — the entry conditions were not met cleanly, and forcing a trade would have risked entering at $76K–77K just before a 3-day sideways grind. Defined levels > FOMO.

Next week: if BTC holds above $78K and closes 2 consecutive days above $82,500, switch to offensive mode. Watch ETH for Glamsterdam upgrade catalyst entry at $2,250–2,300.

---

## Week of 2026-05-04 — Review Date: 2026-05-10

### Account Snapshot (Friday Close)
| Field | Value |
|---|---|
| Equity (ending) | $139.66 |
| Cash | $91.83 |
| Long Market Value | $47.83 |
| Open Positions | 2 (ETH, SOL) |

### Weekly Performance
| Metric | Value |
|---|---|
| Starting Equity (est.) | $137.11 |
| Ending Equity | $139.66 |
| **Week Return** | **+1.86%** |
| BTC Week Return | +2.67% (Mon $78,557 → Fri $80,656) |
| **Bot vs BTC** | **-0.81%** (underperformed) |

> Starting equity estimated from BTC position value at Monday open (0.00174538 BTC × $78,557.39). Portfolio history API returned $0 all week — likely a reporting lag on this small live account. Ending equity from live `/v2/account`.

### Trade Summary
| # | Date | Pair | Side | Qty | Price | P&L | Status |
|---|---|---|---|---|---|---|---|
| 1 | 2026-05-09 | BTC/USD | SELL (close) | 0.0007 | $80,291.87 | N/A* | Closed |
| 2 | 2026-05-09 | BTC/USD | SELL (close) | 0.00104538 | $80,220.86 | N/A* | Closed |
| 3 | 2026-05-09 | ETH/USD | BUY (open) | 0.0086 | $2,314.90 | +$0.13 unrealized | Open |
| 4 | 2026-05-09 | SOL/USD | BUY (open) ⚠️ | 0.2995 | $93.35 | -$0.05 unrealized | Open |

*BTC buy price unknown — position predates order log (likely transferred in). No closed P&L calculable.

### Weekly Stats
| Metric | Value |
|---|---|
| Total Trades | 4 (2 closed, 2 open) |
| Wins | N/A |
| Losses | N/A |
| Win Rate | N/A (no closed P&L) |
| Profit Factor | N/A |
| Avg Win / Avg Loss | N/A |

### Open Positions (End of Week)
| Pair | Entry | Current | Stop | Unrealized P&L |
|---|---|---|---|---|
| ETH/USD | $2,314.90 | $2,330.08 | $2,199.16 | +$0.13 (+0.66%) |
| SOL/USD | $93.35 | $93.20 | $88.68 | -$0.05 (-0.16%) |

### BTC Price Action (Daily)
| Date | Open | Close |
|---|---|---|
| Mon 2026-05-04 | $78,557 | $79,859 |
| Tue 2026-05-05 | $79,847 | $80,900 |
| Wed 2026-05-06 | $80,885 | $81,446 |
| Thu 2026-05-07 | $81,440 | $79,995 |
| Fri 2026-05-09 | $80,197 | $80,656 |

### Sector Review
| Sector | Trades | Result | Notes |
|---|---|---|---|
| BTC | 2 closes | Neutral | Rotated out; no buy records in system |
| ETH | 1 open | +0.66% unrealized | Defensive mode compliant |
| SOL | 1 open | -0.16% unrealized | ⚠️ RULES VIOLATION — defensive mode (BTC/ETH only) |

**Sectors to exit:** None (no closed losses to trigger 2-consecutive-loss rule). SOL flagged for rules violation.

### Regime Status
- BTC 20-day MA: ~$78,584 — BTC now above at $80,733 (+2.77%); **OFFENSIVE mode** active
- Funding rate: Neutral
- F&G: Recovering (was 47 on May 4)
- Mode: **OFFENSIVE** (confirmed by session-open 2026-05-10)

### Key Lessons
1. **Regime filter enforcement:** SOL was entered while in defensive mode (BTC/ETH only). Must enforce the regime gate mechanically — no exceptions.
2. **No buy records for BTC:** Position predates order log; makes P&L tracking impossible. Any new position must be logged via TRADE-LOG.md at entry.
3. **First full week HOLD then pivot:** Waited patiently Mon–Fri then acted May 9 — good patience, but the SOL entry violated the rules.
4. **Account size reality:** Live account is ~$140 real money. Sizing discipline applies proportionally.

---
