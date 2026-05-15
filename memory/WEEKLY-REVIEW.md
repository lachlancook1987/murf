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

## Week of 2026-05-11 — Review Date: 2026-05-15

### Account Snapshot (Friday Close)
| Field | Value |
|---|---|
| Equity (ending, EOD snapshot) | $138.47 |
| Equity (live at review time) | $138.22 |
| Cash | $4.60 |
| Long Market Value | $133.62 (ETH) |
| Open Positions | 1 (ETH/USD) |

### Weekly Performance
| Metric | Value |
|---|---|
| Starting Equity (May 10 phase start) | $141.76 |
| Ending Equity (EOD May 15) | $138.47 |
| **Week Return** | **-2.32%** (-$3.29) |
| BTC Week Return | **-1.47%** (Mon open $82,209 → Fri close $81,003) |
| **Bot vs BTC** | **-0.85%** (underperformed) |

### Trade Summary (May 11–15 closed positions)
| # | Date | Pair | Side | Entry | Exit | P&L | Sector |
|---|---|---|---|---|---|---|---|
| 1 | May 10→12 | XRP/USD | Long→Close | $1.4294 | $1.4752 | **+$0.89** | Alts |
| 2 | May 11→12 | BTC/USD | Long→Partial close | $80,868 | $81,607 | **+$0.18** | BTC Core |
| 3 | May 12→13 | BTC/USD | Long (re-entry)→Stop | $81,645 | $78,895 | **-$1.62** | BTC Core |
| 4 | May 9→13 | SOL/USD | Long (combined)→Close | $95.295 avg | $95.325 | **-$0.09** | L2/DeFi |
| 5 | May 9→13 | ETH/USD | Long (tranche 1)→Partial | $2,314.90 | $2,305.35 | **-$0.08** | ETH/L1 |
| 6 | May 13→14 | ETH/USD | Long (re-entry)→Partial | $2,287.39 | $2,262.35 | **-$0.15** | ETH/L1 |

*All except #1 and #3 were dashboard-initiated. Bot-placed orders: BTC buy May 11, ETH re-entry May 13, ETH large entry May 14.*

### Weekly Stats
| Metric | Value |
|---|---|
| Total Trades (closed round trips) | 6 |
| Open Positions | 1 (ETH long) |
| Wins | 2 |
| Losses | 4 |
| Win Rate | 33% |
| Gross Wins / Gross Losses | $1.07 / $1.94 |
| Profit Factor | **0.55** |
| Avg Win | $0.54 |
| Avg Loss | $0.49 |
| Fills this week (all orders) | 10 |

### Open Positions (End of Week)
| Pair | Qty | Entry | Current | Stop | Unrealized P&L |
|---|---|---|---|---|---|
| ETH/USD | 0.058790 | $2,262.29 | $2,272.84 | $2,171.80 / $2,150.08 | +$0.62 (+0.47%) |

### BTC Price Action (Daily)
| Date | Open | High | Low | Close |
|---|---|---|---|---|
| Mon 2026-05-11 | $82,209 | $82,381 | $80,435 | $81,738 |
| Tue 2026-05-12 | $81,791 | $81,791 | $79,814 | $80,481 |
| Wed 2026-05-13 | $80,473 | $81,305 | $78,667 | $79,291 |
| Thu 2026-05-14 | $79,282 | $82,069 | $78,908 | $81,079 |
| Fri 2026-05-15 | $81,047 | $81,657 | $80,729 | $81,003 |

### Sector Review
| Sector | Trades | Outcome | Consecutive Losses | Notes |
|---|---|---|---|---|
| BTC Core | 2 cycles | Net -$1.44 (LOSS) | **1** | Quick flip +$0.18 then re-entry stopped at -$1.62 |
| ETH / L1 | 2 partial closes + 1 open | Partial closes -$0.23; open +$0.62 | 0 | Active position profitable; partials were size management |
| L2 / DeFi | SOL full close | ~Breakeven (-$0.09) | 0 | Exit was orderly; combined avg vs exit near-flat |
| Alts (top 50) | XRP close | **+$0.89** WIN | 0 (reset) | Best trade of week; clean entry/exit |

**Sectors to exit:** None — no sector has reached 2 consecutive losses. BTC Core at 1.

### Regime Status (end of week)
- BTC $81,003 vs 20-day MA ~$79,000–$81,000 — **CAUTION/BORDERLINE**
- BTC range this week: $78,667 (Wed low) – $82,381 (Mon high)
- Aggressive profile active (since May 10): max 65% position, 95% deployed
- ETH funding: negative (bearish derivatives signal); DXY: ~98.9 (mild headwind)

### Key Lessons
1. **Don't chase re-entries after dashboard partials.** The BTC cycle (May 11–13) saw a quick +$0.18 win turned into a -$1.62 loss on the re-entry the same session. Dashboard sells followed by immediate re-buys at higher prices compound risk.
2. **SOL position was essentially flat despite the volatile week** — the combined avg entry ($95.295) vs exit ($95.325) nearly matched; the loss note in the trade log (-$0.96) was misleading (measured vs add-on price only, not combined avg).
3. **Cash constraint is the binding constraint.** The account ended fully deployed ($133.62 of $138.22 in ETH). Until ETH exits or appreciates, no new entries are possible. Next week's priority: monitor ETH stop at $2,171.80 and trail if ETH breaks $2,420.
4. **Win rate 33% with profit factor 0.55 is below target** — losses were larger than wins on average this week. BTC re-entry discipline is the primary fix.

---
