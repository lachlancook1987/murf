# Weekly Review Log

<!-- Entries appended below, newest last -->

---

## Week of 2026-05-18 — Review Date: 2026-05-22

### Context
**Profile switch week.** Kraken profile activated May 21. First half of week ran on Alpaca (old CAUTION-mode rules still applied to ETH/XRP positions); second half transitioned to Kraken with new Kraken aggressive profile. All future weeks will be Kraken-only.

### Account Snapshot (Friday close)
| Account | Equity | Cash | Positions |
|---|---|---|---|
| Kraken | $179.85 | $0.86 ZUSD | SOL, LINK, NEAR, XRP (all open) |
| Alpaca | $0 (fully transferred) | — | — |
| **Total** | **$179.85** | — | 4 open |

### Weekly Performance
| Metric | Value |
|---|---|
| Starting Equity (Mon May 18) | $177.91 (Alpaca $131.64 + Kraken ETH $46.27) |
| Ending Equity (Fri May 22) | **$179.85** |
| **Week Return** | **+1.09%** (+$1.94) |
| BTC Week Return | **+0.64%** (Mon open $76,910 → Fri $77,402) |
| **Bot vs BTC** | **+0.45%** |

### Trade Summary
| # | Date | Pair | Platform | Entry | Exit | P&L | Status |
|---|---|---|---|---|---|---|---|
| 1 | May 18–21 | ETH/USD | Alpaca | $2,123.79 avg | $2,136.40 | **+$0.49** | WIN |
| 2 | May 18–20 | XRP/USD | Alpaca | $1.3962 | $1.3403 (stop) | **-$1.48** | LOSS |
| 3 | May 21–22 | BTC/USD | Alpaca | $77,910 | $77,574 | **-$0.54** | LOSS |
| 4 | May 21–22 | JTO/USD | Kraken | $0.5006 | ~$0.5235 (trail stop) | **+$0.92** | WIN |
| 5 | May 21→ | SOL/USD | Kraken | $85.90 | open | +$0.23 unr. | OPEN |
| 6 | May 21→ | LINK/USD | Kraken | $9.616 | open | +$0.24 unr. | OPEN |
| 7 | May 22→ | NEAR/USD | Kraken | $2.187 | open | +$3.67 unr. | OPEN |
| 8 | May 22→ | XRP/USD | Kraken | $1.363 | open | +$0.06 unr. | OPEN |

### Weekly Stats
| Metric | Value |
|---|---|
| Total Trades | 8 (4 closed, 4 open) |
| Wins (closed) | 2 |
| Losses (closed) | 2 |
| Win Rate | **50%** |
| Gross Wins / Losses | $1.41 / $2.03 |
| Profit Factor (closed) | **0.70** |
| Avg Win | $0.71 |
| Avg Loss | $1.01 |
| Largest Win | JTO +$0.92 |
| Largest Loss | XRP (Alpaca) -$1.48 |
| Open Unrealized | **+$4.21** (NEAR +$3.67 dominant) |
| Est. Fees Paid | ~$1.15 (8 trades × $55 avg notional × 0.26%) |

### Open Positions (End of Week)
| Pair | Qty | Entry | Current | Stop Level | Stop Buffer | Unrealized |
|---|---|---|---|---|---|---|
| SOL/USD | 0.17211 | $85.90 | $87.265 | $83.51 (trail 5%, HWM $87.90) | 4.3% | +$0.23 (+1.6%) |
| LINK/USD | 1.1533 | $9.616 | $9.827 | $9.362 (trail 5%, HWM $9.855) | 4.7% | +$0.24 (+2.2%) |
| NEAR/USD | 55.000 | $2.187 | $2.254 | $2.180 (trail 5%, HWM $2.295) | 3.3% | +$3.67 (+3.1%) |
| XRP/USD | 21.000 | $1.363 | $1.366 | $1.299 (trail 5%, HWM $1.367) | 4.9% | +$0.06 (+0.2%) |

### Trade Quality Review

**Entry types that worked:**
- **Catalyst breakout (NEAR):** Grayscale ETF filing + intraday volume acceleration (+43% of 24h volume in 4h window) = cleanest entry of the week. Already +$3.67 unrealized in <1 day.
- **Momentum with trailing stop (JTO):** a16z $50M raise + Solana ecosystem narrative. Trailing stop captured +4.57% gain before exit on pullback — exactly how the Kraken profile should work.
- **Thesis re-entry at lower price (ETH):** Re-entered below prior stop-out; Glamsterdam Q3 catalyst intact. Small win.

**Entry types that underperformed:**
- **XRP binary-catalyst play (Alpaca):** Third consecutive stop-out on XRP. CLARITY Act thesis valid but price action too volatile around news headlines; fixed stop_limit too rigid, depleting buffer repeatedly.
- **BTC directional bet (Alpaca):** Brief user-directed position; -$0.54.

**Stop quality:**
- Kraken trailing stops: **Excellent.** JTO auto-managed its exit cleanly. NEAR/SOL/LINK trailing correctly. No buffer monitoring anxiety.
- Alpaca fixed stop_limits: Multiple "CRITICAL buffer" alerts (ETH, XRP). Now retired — fully on Kraken.

**Profile violations:** None. All Kraken trades confirmed spread ≤1%, trailing stops placed at entry, no leverage (margin restriction active — working around it with spot entries).

**Concrete adjustment for next week:** Use **7% trailing stop** (not 5%) for assets with pending binary regulatory catalysts (XRP, assets with Senate/SEC votes pending). Headline volatility on CLARITY Act news will spike ±3–4% intraday; 5% trail is too tight. Updated in TRADING-STRATEGY.md.

### Key Lesson
**Trailing stops and the Kraken profile are the upgrade this bot needed.** Fixed stop_limits on Alpaca created constant buffer-monitoring stress and three XRP stop-outs. Kraken trailing stops let winners run (JTO), protect capital on reversals, and eliminate the "critical buffer" anxiety loop. NEAR breakout entry was the textbook Kraken play: confirmed intraday volume acceleration + ETF filing catalyst = entry with 5% trailing stop. Next week: continue this pattern — catalyst first, spread check, then trailing stop.

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
| Equity (final post-market) | $137.77 |
| Cash | $4.60 |
| Long Market Value | $133.17 (ETH) |
| Open Positions | 1 (ETH/USD) |

### Weekly Performance
| Metric | Value |
|---|---|
| Starting Equity (May 10 phase start) | $141.76 |
| Ending Equity (final, post-market May 15) | $137.77 |
| **Week Return** | **-2.81%** (-$3.99) |
| BTC Week Return | **-1.47%** (Mon open $82,209 → Fri close $81,003) |
| **Bot vs BTC** | **-1.34%** (underperformed BTC by 1.34 pp) |

### Trade Summary (May 11–15 closed positions)
| # | Date | Pair | Side | Entry | Exit | P&L | Sector |
|---|---|---|---|---|---|---|---|
| 1 | May 10→12 | XRP/USD | Long→Close | $1.4294 | $1.4752 | **+$0.89** | Alts |
| 2 | May 11→12 | BTC/USD | Long→Partial close | $80,868 | $81,607 | **+$0.18** | BTC Core |
| 3 | May 12→13 | BTC/USD | Long (re-entry)→Stop | $81,645 | $78,895 | **-$1.62** | BTC Core |
| 4 | May 9→13 | SOL/USD | Long (combined)→Close | $95.295 avg | $95.325 | **+$0.02** | L2/DeFi |
| 5 | May 9→13 | ETH/USD | Long (tranche 1)→Partial | $2,314.90 | $2,305.35 | **-$0.08** | ETH/L1 |
| 6 | May 13→14 | ETH/USD | Long (re-entry)→Partial | $2,287.39 | $2,262.35 | **-$0.15** | ETH/L1 |

*All except #1 and #3 were dashboard-initiated. Bot-placed orders: BTC buy May 11, ETH re-entry May 13, ETH large entry May 14.*

### Weekly Stats
| Metric | Value |
|---|---|
| Total Trades (closed round trips) | 6 |
| Open Positions | 1 (ETH long) |
| Wins | 3 |
| Losses | 3 |
| Win Rate | 50% |
| Gross Wins / Gross Losses | $1.09 / $1.85 |
| Profit Factor | **0.59** |
| Avg Win | $0.36 |
| Avg Loss | $0.62 |
| Fills this week (all orders) | 10 |

### Open Positions (End of Week)
| Pair | Qty | Entry | Current | Stop | Unrealized P&L |
|---|---|---|---|---|---|
| ETH/USD | 0.058790 | $2,262.29 | $2,265.10 | $2,171.80 / $2,150.08 | +$0.17 (+0.12%) |

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
| L2 / DeFi | SOL full close | ~Breakeven (+$0.02) | 0 | Exit was orderly; combined avg vs exit near-flat |
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

### Addendum — Saturday Morning (2026-05-15T07:29–07:39Z)

A second session opened Saturday morning. The user closed the full ETH position via dashboard; the bot then ran pre-session research and re-entered at 50% size (F&G 43 rule applied).

| Time (UTC) | Action | Qty | Price | P&L |
|---|---|---|---|---|
| 07:29:33Z | ETH SELL (user, dashboard) | 0.058790 | $2,266.15 | **+$0.23** (+0.16%) |
| 07:39:01Z | ETH BUY (bot) | 0.029925 | $2,265.20 | OPEN |

**Revised Final Account State**
| Metric | Prior Review | Updated (post-Saturday) |
|---|---|---|
| Ending Equity | $137.77 | **$136.99** |
| Week Return | -2.81% | **-3.37%** |
| Bot vs BTC | -1.34% | **-1.90%** |
| Open Position | ETH 0.058790 @ $2,262.29 | ETH 0.029925 @ $2,265.20 |
| Unrealized P&L (open) | +$0.17 (+0.12%) | -$0.32 (-0.48%) |

**Revised Stats (all 7 closed trades)**
| Wins | 4 | Losses | 3 |
|---|---|---|---|
| Win Rate | **57%** | Profit Factor | **0.71** |
| Gross Wins | $1.32 | Gross Losses | $1.85 |
| Avg Win | $0.33 | Avg Loss | $0.62 |

*Saturday ETH close (+$0.23) adds 1 WIN to prior 3W/3L, improving week stats. ETH/L1 sector consecutive losses stays at 0.*

**Open risk:** ETH stop-limit $2,151.94 / $2,130.42 (order e4efd513, GTC). Max loss on open: ~$3.39 (-5% from $2,265.20 entry).

---

## Week of 2026-05-25 — Review Date: 2026-05-29

### Context
**Day trading profile week.** Day trading focus formally added May 26. High-churn week — 22+ round trips across FET, HYPE, WLD, XLM, HBAR, RENDER, ONDO, AVAX, XRP, BTC, ETH, NEAR. BTC fell -4.83% on the week ($77,402 → $73,665), dragging all positions into a persistent headwind. Alpaca residual BTC closed May 22 — no Alpaca exposure remaining.

### Account Snapshot (Friday close)
| Account | Equity | Cash | Positions |
|---|---|---|---|
| Kraken | $150.55 | $150.55 ZUSD | 0 — fully in cash |
| Alpaca | $0 | — | Closed May 22 |
| **Total** | **$150.55** | $150.55 | 0 open |

### Weekly Performance
| Metric | Value |
|---|---|
| Starting Equity (May 22 EOD) | $179.85 |
| Ending Equity (May 29 current) | **$150.55** |
| **Week Return** | **-16.3%** (-$29.30) |
| BTC Week Return | **-4.83%** ($77,402 → $73,665) |
| **Bot vs BTC** | **-11.5%** (underperformed) |

### Trade Summary (all closed trades May 22–29)
| # | Date | Pair | Entry | Exit | P&L | Status |
|---|---|---|---|---|---|---|
| 1 | May 22→24 | LINK/USD | $9.147 | $9.278 (trail stop) | **+$0.21** | WIN |
| 2 | May 22→24 | SUI/USD | $1.069 | $1.016 (trail stop) | **-$1.43** | LOSS |
| 3 | May 22→24 | XRP/USD (21u) | $1.363 | ~$1.299 (trail stop) | **~-$1.34** | LOSS |
| 4 | May 25 | NEAR/USD | $2.137 | $2.335 (trail stop) | **+$7.52** | WIN |
| 5 | May 25→26 | AVAX/USD | $9.22 | $8.83 (trail stop) | **-$1.88** | LOSS |
| 6 | May 25→26 | ONDO/USD | $0.448 | $0.417 (trail stop) | **-$3.15** | LOSS |
| 7 | May 26 | HYPE/USD (1st) | $60.65 | $57.62 (trail stop) | **-$2.06** | LOSS |
| 8 | May 26 | ETH/USD | $2,026 | $2,089 (tightened stop) | **+$1.25** | WIN |
| 9 | May 26 | FET/USD (DT1) | $0.2452 | ~$0.2367 (trail stop) | **~-$1.50** | LOSS |
| 10 | May 26 | RENDER/USD | $2.372 | $2.301 (trail stop) | **-$1.29** | LOSS |
| 11 | May 26 | FET/USD (DT2) | $0.2454 | ~$0.254 (manual) | **~+$1.55** | WIN |
| 12 | May 26 | WLD/USD (1st) | $0.3947 | $0.3849 (trail stop) | **-$1.06** | LOSS |
| 13 | May 26 | FET/USD (DT3) | $0.2531 | $0.2447 (trail stop) | **-$1.38** | LOSS |
| 14 | May 26 | HYPE/USD (2nd) | $63.53 | $61.22 (trail stop) | **-$1.39** | LOSS |
| 15 | May 26→27 | WLD/USD (2nd) | $0.386 | $0.373 (trail stop) | **-$1.28** | LOSS |
| 16 | May 26→28 | BTC/USD | ~$76,957 | ~$74,050 (trail stop) | **-$1.51** | LOSS |
| 17 | May 24→28 | XRP/USD (31u) | $1.344 | ~$1.268 (trail stop) | **-$2.36** | LOSS |
| 18 | May 26→28 | XRP/USD add | ~$1.350 | ~$1.268 (trail stop) | **-$2.44** | LOSS |
| 19 | May 27 | ETH/USD | $2,070.90 | ~$2,035 (trail stop) | **-$0.84** | LOSS |
| 20 | May 28 | HYPE/USD (3rd) | $58.46 | ~$57.08 (trail stop) | **-$1.80** | LOSS |
| 21 | May 28 | XLM/USD | $0.17362 | $0.17884 (T1, tight trail) | **+$2.74** | WIN |
| 22 | May 28→29 | HBAR/USD | $0.09060 | ~$0.08964 (trail stop) | **-$1.06** | LOSS |

### Weekly Stats
| Metric | Value |
|---|---|
| Total Closed Trades | 22 |
| Wins | 5 |
| Losses | 17 |
| Win Rate | **22.7%** |
| Gross Wins | **$13.27** (NEAR $7.52, XLM $2.74, FET-manual $1.55, ETH $1.25, LINK $0.21) |
| Gross Losses | **$27.77** |
| Profit Factor | **0.48** |
| Avg Win | **$2.65** |
| Avg Loss | **$1.63** |
| Largest Win | NEAR trailing stop **+$7.52 (+9.3%)** |
| Largest Loss | ONDO token unlock stop **-$3.15 (-6.95%)** |
| Open Unrealized | $0 (100% cash) |
| Est. Fees Paid | **~$4.47** (~40 txns × $43 avg notional × 0.26%) |

### Open Positions (End of Week)
None — 100% ZUSD $150.55 in Kraken. All trailing stops executed cleanly.

### Trade Quality Review

**Entry types that worked:**
- **Trailing stop swing inheritance (NEAR +9.3%):** Best trade of the week required no active management — the trailing stop inherited from a strong-momentum entry executed perfectly. Let it work.
- **T1 tightening execution (XLM +3.0%):** DTCC/Stellar partnership was a clean catalyst entry. Tightening to 0.5% trailing stop at T1 locked the gain. This is the exact workflow the strategy prescribes.
- **Manual profit take (FET DT2 ~+3.5%):** Only the user-directed exit worked among FET's three attempts — confirming that FET's intraday volatility makes the 2.5% trailing stop unreliable.

**Entry types that failed:**
- **2.5% trailing stop on volatile mid/small caps in choppy conditions (FET×3, HYPE×3, WLD×2, HBAR, RENDER):** All nine entries were stopped at -2.5% to -5%, then recovered past entry within hours. The 2.5% trail is too tight for assets with 3–5% intraday ATR. This is the dominant source of losses this week.
- **XRP binary catalyst in a downtrending market:** Both XRP legs (7% trail) eventually stopped at -5.6% and -6.0%. The CLARITY Act thesis is intact but BTC's weekly decline created a persistent bid-side headwind that the binary catalyst could not overcome.
- **ONDO with known unlock overhang:** Pre-flagged risk materialised immediately. Entry quality was poor — the unlock was a direct bearish catalyst.
- **Entering new longs in a confirmed weekly downtrend:** BTC fell every day this week (-4.83% total). Most new day-trade long entries were placed into persistent selling pressure. Without a BTC stabilisation signal, day-trade long win rates compress toward 10–15%.

**Stop quality:**
- All trailing stops executed correctly as designed. Zero orphaned positions (one stop was accidentally cancelled and immediately re-placed within 30 seconds). The stop system is sound.
- The issue was not stop placement — it was entry selection and trail width vs asset volatility.

**Profile violations:**
- FET DT2: Used 4% trail per user instruction (R:R was 0.75:1, below 1.2:1 threshold, explicitly noted at entry). No other violations. Spread ≤1% confirmed on all entries; no leverage used this week.

**Concrete adjustment for next week:**
**Add a BTC trend gate:** If BTC has declined >3% over the past 5 trading days, require 1h momentum >5% AND a fresh catalyst <3h old before entering new momentum day trades. Pure momentum entries (no specific catalyst) are banned in a weekly BTC downtrend — they have near-zero edge. This does NOT affect catalyst-driven entries (CLARITY Act, protocol upgrade, exchange listing) which remain open regardless of BTC trend.

Additionally: for assets with expected intraday ATR >3% (FET, HYPE, WLD-type), use **3.5% trailing stop** (not 2.5%) to give trades room to work without noise-stopping.

### Key Lesson
**Day trading into a BTC downtrend with tight trailing stops is a reliable way to lose money fast.** The trailing stop system works exactly as designed — every stop protected capital from larger losses. The failure was entry selection: 9 of the 17 losses were assets that recovered past entry after stopping. In a downtrending BTC week, the correct move is to wait for BTC stabilisation above a key level ($75K+) before deploying fresh capital into intraday longs. Cash is a position. The one trade that worked cleanly without active management (NEAR, inherited) and the one catalyst trade that worked (XLM) validate the strategy's core thesis — the churn was entirely from discretionary day-trade entries that violated the "catalyst required" rule.

---
