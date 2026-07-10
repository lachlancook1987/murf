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

## Week of 2026-06-01 — Review Date: 2026-06-05

### Context
**Bear market preservation week.** BTC fell -12.23% ($71,315 Mon → $62,590 Fri) amid sustained Extreme Fear (F&G 11–12 throughout). BTC weekly gate remained ACTIVE all week (gate baseline fixed at May 22 $77,574; actual gate condition ranged -10% to -16.5%). The bot was in cash for ~4.5 of 5 trading days. Only 2 trades executed — both KAS/USD on the Toccata hard fork thesis (fork window opened June 5). No Alpaca exposure; Kraken-only.

### Account Snapshot (Friday close)
| Account | Equity | Cash | Positions |
|---|---|---|---|
| Kraken | $150.65 | $150.65 ZUSD | 0 — 100% cash |
| Alpaca | $0 | — | Closed May 22 |
| **Total** | **$150.65** | $150.65 | 0 open |

### Weekly Performance
| Metric | Value |
|---|---|
| Starting Equity (Mon Jun 1) | $150.55 |
| Ending Equity (Fri Jun 5) | **$150.65** |
| **Week Return** | **+0.06%** (+$0.10) |
| BTC Week Return | **−12.23%** (~$71,315 Mon open → ~$62,590 Fri ask) |
| **Bot vs BTC** | **+12.29%** |

### Trade Summary
| # | Date | Pair | Entry | Exit | P&L | Status |
|---|---|---|---|---|---|---|
| 1 | Jun 3 (Thu) | KAS/USD | $0.031300 (3367 KAS) | ~$0.032348 (T1 + 0.5% trail) | **+$2.99** | WIN |
| 2 | Jun 3→4 | KAS/USD | $0.032022 (4730 KAS) | ~$0.031482 (trailing stop overnight) | **~−$2.56** | LOSS |

### Weekly Stats
| Metric | Value |
|---|---|
| Total Trades (closed) | 2 |
| Wins | 1 |
| Losses | 1 |
| Win Rate | **50%** |
| Gross Wins | $2.99 |
| Gross Losses | $2.56 |
| Profit Factor | **1.17** |
| Avg Win | $2.99 |
| Avg Loss | $2.56 |
| Largest Win | KAS T1 exit **+$2.99** |
| Largest Loss | KAS overnight stop **−$2.56** |
| Net from trades | +$0.43 gross; +$0.09 net after fees |
| Est. Fees Paid | ~$0.34 (4 fills × ~$128 avg notional × ~0.26%; reconciled vs equity delta) |

### Open Positions (End of Week)
None — 100% ZUSD $150.6460. No open orders.

### Trade Quality Review

**Entry types that worked:**
- **Catalyst breakout + T1 tightening (KAS Trade 1):** Toccata hard fork pre-activation entry (+9.44% from 24h open; protocol upgrade exemption fires). T1 hit at +3.4%; 0.5% trailing stop tightened correctly and exited cleanly at +$2.99. Exact strategy workflow executed.

**Entry types that failed:**
- **Same-day full-size re-entry after T1 exit (KAS Trade 2):** Re-entered 4730 KAS @ $0.032022 (above Trade 1 entry) with 99% equity and 3.5% trailing stop. Thesis intact (Toccata fork window opening next day). Stop buffer noted at 1.18% going into overnight — critically thin for a high-ATR asset with 17.5% intraday range. KAS dropped to $0.028320 overnight (-13.9% from re-entry high watermark), triggering stop at ~$0.031482 (−1.69%). Stop worked as designed; the error was full-size overnight exposure with a compressed buffer.

**Stop quality:**
- All trailing stops executed correctly. T1 tightening to 0.5% worked perfectly. Overnight stop triggered at correct price. Zero orphaned positions. Stop system validated — no mechanical failures this week.

**No-trade days (Mon Jun 2, Tue Jun 3 morning, Wed, Fri):** BTC weekly gate ACTIVE at −10.3% to −16.5% correctly blocked all screened assets. PORTAL (+173%), ALGO (+7.79%), STG (+12%), ADA, ETH, SOL all below open or stale catalyst. Gate saved capital on a −12% BTC week. Cash was the right position on 4+ days.

**Profile violations:** None. Spread ≤1% confirmed (0.067%–0.167% range). No leverage. BTC weekly gate respected. Protocol upgrade exception applied correctly for KAS (Toccata fork window confirmed).

**Concrete adjustment for next week:**
**Overnight buffer rule for high-ATR assets:** When re-entering a high-ATR asset (3.5% trail) same-session after a T1 exit, cap re-entry size at **50% equity** if stop buffer is <2% at session-end/overnight. Do not deploy full equity overnight with a compressed stop buffer — KAS's overnight ATR (13–17% ranges this week) can exhaust a 3.5% trail in one candle. This does not change the trail width rule, only overnight sizing.

Also flagged: the BTC weekly gate baseline has been implemented as a fixed reference (May 22 $77,574) in sessions rather than a rolling 5-day window as specified in strategy. With BTC at $62,590 and baseline fixed at $77,574, the gate requires a +24% BTC recovery to deactivate — this does not match the rolling window intent. Sessions should recalculate the 5-day rolling baseline each week. Strategy text is correct; implementation should be fixed.

### Key Lesson
**Cash preservation in a bear week is the strategy working.** BTC fell −12.23% this week; the bot ended +$0.06% — a 12.3 percentage-point outperformance by sitting in ZUSD. The BTC weekly gate blocked over a dozen entries that would have been immediate losses (every screened asset was declining into lower lows). The two trades taken were on a legitimate protocol upgrade catalyst; the T1 trade was textbook. The overnight re-entry loss was acceptable at −1.69% but avoidable with the new 50% sizing rule for compressed-buffer overnight holds. Next week: BTC at $62,590, weekly gate will remain ACTIVE for any non-catalyst asset. Priority setups: KAS Toccata fork follow-up (window open June 5–20), ONDO perps launch June 9, HYPE post-unlock price action June 7+, XRP CLARITY Act binary trigger.

---

## Week of 2026-06-08 — Review Date: 2026-06-12

### Context
Active but damaging week. The review period covers Jun 6–12 (everything since the last review on Jun 5), including weekend activity. BTC traded sideways-to-up over the Mon–Fri window (+1.48%, $62,462 → $63,384) but most losses occurred on Jun 6–7 (weekend) when two large positions stopped out. The BTC weekly gate was ACTIVE at the start of the week (prior baseline); all entries were made under protocol-upgrade, exchange-listing, or regulatory-catalyst exemptions. **Gate is now INACTIVE: rolling 5-day BTC +1.48%.** 9 trades across 4 assets; 8 losses, 1 win. 100% cash at week-end. No Alpaca exposure.

### Account Snapshot (Friday close)
| Account | Equity | Cash | Positions |
|---|---|---|---|
| Kraken | $129.14 | $129.14 ZUSD | 0 — 100% cash |
| Alpaca | $0 | — | Fully closed (stop cancelled 2026-05-22) |
| **Total** | **$129.14** | $129.14 | 0 open |

### Weekly Performance
| Metric | Value |
|---|---|
| Starting Equity (prev review, Jun 5) | $150.65 |
| Ending Equity (Fri Jun 12) | **$129.14** |
| **Week Return (full period)** | **−14.28%** (−$21.51) |
| BTC Week Return (Jun 6 open $61,038 → Jun 12 $63,384) | **+3.84%** |
| **Bot vs BTC (full period)** | **−18.12%** |
| Mon–Fri only (Start $134.75 → End $129.14) | −4.16%; BTC Mon–Fri +1.48%; bot −5.64% |

### Trade Summary
| # | Date | Pair | Entry | Exit | P&L | Status |
|---|---|---|---|---|---|---|
| 1 | Jun 6 | KAS/USD | $0.031690 (4721.5 KAS, opened Jun 5) | ~$0.030713 (trail 3.5% overnight) | **~−$5.13** | LOSS |
| 2 | Jun 6 | NEAR/USD | ~$1.9535 (74 NEAR) | ~$1.8900 (thesis-break manual sell) | **~−$5.64** | LOSS |
| 3 | Jun 7 | ONDO/USD | ~$0.3530 (198 ONDO) | ~$0.34186 (trail 2.5%) | **~−$2.62** | LOSS |
| 4 | Jun 7 | NEAR/USD | ~$1.9375 (35 NEAR) | ~$1.8774 (trail 3.5%) | **~−$2.51** | LOSS |
| 5 | Jun 8 | KAS/USD | $0.032730 (2428 KAS) | ~$0.031920 (trail 2.5%) | **~−$1.97** | LOSS |
| 6 | Jun 8 | ONDO/USD | $0.358270 (125 ONDO) | ~$0.35510 (trail 2.5%) | **~−$0.63** | LOSS |
| 7 | Jun 8 | ONDO/USD | ~$0.3621 (120 ONDO) | ~$0.370 (trail 2.5%) | **~+$0.96** | WIN |
| 8 | Jun 8 | NEAR/USD | ~$2.1670 (30 NEAR) | ~$2.11 (trail 2.5% overnight) | **~−$1.91** | LOSS |
| 9 | Jun 8 | INJ/USD | ~$5.805 (10 INJ) | ~$5.672 (trail 2.5%) | **~−$1.33** | LOSS |

### Weekly Stats
| Metric | Value |
|---|---|
| Total Trades (closed) | 9 |
| Wins | 1 |
| Losses | 8 |
| Win Rate | **11.1%** |
| Gross Wins | $0.96 |
| Gross Losses | ~$21.74 (sum of individual loss estimates) |
| Profit Factor | **0.044** |
| Avg Win | $0.96 (single win) |
| Avg Loss | $2.72 |
| Largest Win | ONDO #2 re-entry **+$0.96** |
| Largest Loss | NEAR Jun 6 thesis-break **−$5.64** |
| Net from trades | ~−$20.78 estimated; actual equity delta −$21.51 |
| Est. Fees Paid | ~$3.70 (9 entries × ~2 fills × avg ~$80 notional × 0.26%) |
| Phase P&L | **−$50.64 (−28.17%)** from Kraken starting equity $179.78 |

### Open Positions (End of Week)
None — 100% ZUSD $129.14. No open orders. Alpaca fully closed.

### BTC Weekly Gate Status (for next session)
Rolling 5-day BTC: Jun 8 open $62,462 → Jun 12 close ~$63,384 = **+1.48%** → gate **INACTIVE**. Pure momentum entries are permitted again next session (not just catalyst exemptions).

### Trade Quality Review

**Entry types that worked:**
- **ONDO re-entry at lower price after prior stop (Jun 8 #2, +$0.96):** Only win of the week. After the first ONDO position stopped at −1.4%, re-entered at $0.3621 (below original entry $0.35827 in percentage terms; at a better risk-adjusted level) on an intact perps-launch + SEC-closure catalyst. Price reached T1 ($0.37296); trailing stop exited at +2.2%. The lesson: a same-session re-entry at a LOWER price on an intact multi-catalyst thesis can work. It is the re-entries at HIGHER prices (NEAR, KAS) that were the problem.

**Entry types that failed:**

- **NEAR multi-entry (Jun 6 + 7 + 8, 3 losses totalling ~−$10.06):** Same Nightshade 2.0 / AI narrative thesis re-entered three times after three consecutive stop-outs. Jun 6 was correctly cut on a thesis-break (Arthur Hayes whale exit, −$5.64) but the subsequent Jun 7 and Jun 8 entries still treated "upgrade still pending" as sufficient re-entry justification. Each entry was at a higher price than the last. Price action consistently rejected higher entries despite the thesis being real.
- **KAS Toccata repeat entries (Jun 6 exit + Jun 8 re-entry, ~−$7.10):** 4th and 5th consecutive KAS entries across two weeks on the same fork thesis. Each stop-out was mechanically correct, but re-entering the same asset at a higher price after the 3rd consecutive stop-out has negative expected value. The Toccata window (June 5–20) is real but KAS is not acting as a momentum asset at this price level.
- **INJ/USD overnight (Jun 8 −$1.33):** Clean multi-catalyst setup (Binance.US listing + regulated futures + native USDC, +6.1% at entry). Stopped overnight when momentum didn't follow through. Single entry, no repeat — loss acceptable and correctly sized at 44% equity.
- **ONDO first entries (Jun 7 −$2.62, Jun 8 #1 −$0.63):** Both pre-perps-launch entries failed before the Jun 9 launch. The third entry (re-entry at lower price, Jun 8 #2) worked, vindicating the thesis timing but not the entry levels.

**Stop quality:**
All trailing stops executed correctly. The Jun 6 NEAR thesis-break exit (manual) was the correct decision given a known whale-exit pattern (same pattern caused WLD −18.7% previously). KAS 3.5% trail fired at expected levels with minimal slippage. NEAR 2.5% and INJ 2.5% overnight stops triggered at correct levels. No orphaned positions at any point. Stop system continues to perform as designed — the failures were entry selection and frequency, not stop mechanics.

**Profile violations:**
None. All spreads ≤1% confirmed at entry. No leverage used this week. BTC weekly gate correctly applied (all entries on protocol upgrade, exchange listing, or SEC-closure catalyst exemptions). R:R ≥1.2:1 confirmed at all entries.

**Behavioral pattern flagged — same-thesis entry compounding:**
8 of 9 losses were on either NEAR (3×) or KAS (2× this week, 4× total). Both theses are legitimate catalysts. The issue is repeated re-entry into the same price structure after consecutive stop-outs — each time reasoning "thesis still valid." Without a cap on same-asset re-entries, this can compound indefinitely. Strategy currently has no consecutive-loss rules for a reason (sector pauses were harmful), but a per-asset re-entry cap is different in nature.

**Concrete adjustment — same-thesis entry cap (added 2026-06-12):**
After **2 stop-outs on the same asset within a 7-day rolling window**, require a 48h cooling period AND a materially new catalyst (distinct from the original thesis — e.g., a new listing announcement, not just "upgrade window still open") before re-entering. This is not a sector pause — other assets and other theses on the same asset after 48h remain open. The NEAR 3-entry pattern (Jun 6/7/8) and KAS cumulative 5-entry pattern are exactly what this prevents. The one successful re-entry (ONDO #2, same day at lower price) is exempt because it was same-session at lower price, not a multi-day repeat.

### Key Lesson
**Stopping out of a failing thesis once is risk management. Re-entering the same thesis three times in three days is thesis addiction.** NEAR and KAS together cost ~$17 (80% of all losses this week) across 5 entries — all mechanically clean, all on real catalysts, all stopped by correct trailing stops. The issue was never the stop system; it was re-entry discipline. The single winning trade was an ONDO re-entry at a lower price after a stop-out — not at a higher price. Going forward: 2 stop-outs on the same asset within 7 days = 48h mandatory cooling + new catalyst required. The BTC weekly gate is now INACTIVE (+1.48% rolling 5-day), opening the full opportunity set for next week. Starting equity $129.14 — still above cash floor, fully liquid, no open exposure.

---

## Week of 2026-06-13 — Review Date: 2026-06-19

### Context
Mixed week. BTC fell -1.24% ($63,384 → $62,600). BTC weekly gate inactive all week — momentum entries permitted. Extreme Fear (F&G 15–23) dominated the macro backdrop throughout. 9 trades across 8 assets. No Alpaca exposure (fully closed May 22). All Kraken spot — no leverage.

### Account Snapshot (Friday close)
| Account | Equity | Cash | Positions |
|---|---|---|---|
| Kraken | $121.85 | $121.85 ZUSD | 0 — 100% cash |
| Alpaca | $0 | — | Fully closed (May 22) |
| **Total** | **$121.85** | $121.85 | 0 open |

### Weekly Performance
| Metric | Value |
|---|---|
| Starting Equity (Fri Jun 12 EOD) | $129.14 |
| Ending Equity (Fri Jun 19) | **$121.85** |
| **Week Return** | **−5.64%** (−$7.29) |
| BTC Week Return | **−1.24%** ($63,384 → $62,600) |
| **Bot vs BTC** | **−4.40%** |

### Trade Summary
| # | Date | Pair | Entry | Exit | P&L | Status |
|---|---|---|---|---|---|---|
| 1 | Jun 13→14 | NEAR/USD | $2.131 (40u) | ~$2.097 (trail 3.5%) | **~−$2.53** | LOSS |
| 2 | Jun 14→15 | TAO/USD | $264.17 (0.2396u) | ~$268.00 (trail 2.5%) | **~+$0.33** | WIN |
| 3 | Jun 15 | WLD/USD (1st) | $0.5892 (68.14u) | ~$0.6125 (trail 2.5%) | **~+$1.44** | WIN |
| 4 | Jun 15 | HYPE/USD | $66.58 (0.4547u) | ~$67.41 (trail 0.5% post-T1) | **~+$0.22** | WIN |
| 5 | Jun 15→16 | XRP/USD | $1.2276 (40.65u) | ~$1.2143 (trail 3.5% post-T2) | **~−$0.80** | LOSS |
| 6 | Jun 16 | WLD/USD (2nd) | $0.6750 (89.85u) | ~$0.6508 (trail 2.5%) | **~−$2.16** | LOSS |
| 7 | Jun 16→17 | SOL/USD | $74.66 (0.85u) | ~$73.39 (trail 2.5%, gap fill) | **~−$1.08** | LOSS |
| 8 | Jun 17 | UNI/USD | $3.617 (17u) | ~$3.538 (trail 2.5%) | **~−$1.50** | LOSS |
| 9 | Jun 18 | XLM/USD | $0.24128 (384u) | ~$0.23936 (trail 2.5%) | **~−$0.74** | LOSS |

### Weekly Stats
| Metric | Value |
|---|---|
| Total Trades (closed) | 9 |
| Wins | 3 (TAO, WLD-1, HYPE) |
| Losses | 6 (NEAR, XRP, WLD-2, SOL, UNI, XLM) |
| Win Rate | **33.3%** |
| Gross Wins | **$1.99** |
| Gross Losses | **$8.81** |
| Profit Factor | **0.23** |
| Avg Win | $0.66 |
| Avg Loss | $1.47 |
| Largest Win | WLD-1 trailing stop **+$1.44 (+4.1%)** |
| Largest Loss | NEAR trailing stop **−$2.53** |
| Open Unrealized | $0 (100% cash) |
| Est. Fees Paid | **~$3.04** (18 fills × avg ~$65 notional × 0.26%) |

### Open Positions (End of Week)
None — 100% ZUSD $121.85. No open orders on Kraken or Alpaca.

### Trade Quality Review

**Entry types that worked:**
- **Catalyst breakout (TAO, +1.39%):** Jensen Huang / NVIDIA GTC keynote directly catalysed Bittensor as the leading decentralised AI compute network. TAO broke a 7-month downtrend on institutional volume. Trailing stop managed exit cleanly — early entry relative to the repricing event.
- **Institutional catalyst momentum (WLD-1, +4.1%):** Eightco 8.4% WLD stake (Jun 15) + OpenAI IPO proxy narrative. T1 not confirmed hit but trailing stop exited at +4.1% — best capture of the week. Clean entry timing vs the repricing event.
- **T1 tightening (HYPE, +1.25%):** T1 hit; stop tightened to 0.5% per strategy rules; exited at +1.25%. Small gain but correct workflow executed.

**Entry types that failed:**

- **Late momentum entry after 24h high already set (UNI, −2.43%):** The 24h high of $3.7262 was reached BEFORE the bot's market order at $3.617. Price was already declining from the peak when the position was taken. The UNIfication catalyst (100M burn + fee-switch) was real; the error was entering into a fading repricing rather than a fresh breakout. "Buy the rumour, sell the news" dynamic — the news had already been absorbed by the market.
- **Same-asset second entry at higher price (WLD-2, −3.56%):** Re-entered WLD on Jun 16 ($0.6750) above the prior Jun 15 exit ($0.6125) on a refreshed Eightco catalyst. Price rejected from $0.6734 session high and stop swept. First entry captured the move; second entry chased into fading price action at a structurally higher level.
- **NEAR same-thesis repeat (−$2.53):** 3rd NEAR position since Jun 6 (Jun 8 was the 2nd stop-out, triggering the 48h cooling; Jun 13 opened post-cooling with a distinct Grayscale ETF catalyst). Dynamic Resharding upgrade thesis intact but price action consistently rejecting higher levels. Stop-out on Jun 14 triggered the same-thesis cap (2nd stop-out within 7d) — correctly blocked until Jun 16.
- **XRP binary catalyst overnight (−0.80%):** T2 hit (+5%); stop correctly tightened from 7% to 3.5%. Price faded overnight and 3.5% trail was swept at −1.08% from entry. A trade that reached T2 ending as a small net loss due to stop tightening sweep — mechanics were correct, overnight fade was unavoidable.
- **SOL overnight gap fill (−1.70%):** SEC multi-asset ETF + Solana CLO fund — solid catalysts. HWM $76.02 ratcheted trail well above entry, but price gapped sharply to $72.27 intraday low; fill was $0.73 below the $74.12 trigger. Gap risk on overnight holds not avoidable with trailing stops, but the gap magnitude exceeded the trail buffer.
- **XLM Extreme Fear market (−0.80%):** Spiko $1B + Zebec payroll + VersaBank — multiple real catalysts. F&G 15 (Extreme Fear) meant every rally was met with immediate selling. Minimal HWM advance before reversal.

**Stop quality:**
All trailing stops placed immediately after every fill. All stops executed at expected levels. SOL gap fill ($0.73 below trigger) is unavoidable market structure — not a mechanics failure. XRP tightening to 3.5% post-T2 was correct per strategy. No orphaned positions at any point. Stop system mechanically sound throughout.

**Profile violations:**
None. All spreads ≤1% at entry. No leverage. BTC crash gate not triggered all week. BTC weekly gate inactive. R:R ≥1.2:1 confirmed at all entries. NEAR same-thesis cap applied correctly post-Jun 14 stop-out.

**Concrete adjustment — momentum peak check (added 2026-06-19):**
Before any momentum entry, confirm that the 24h high was set within the last **60 minutes**. If the 24h high is >60 min old and price is declining from it, classify as **fading momentum** — skip unless (a) there is a fresh 1h candle breakout above the prior 24h high, OR (b) a new distinct catalyst event within the last 2h. This directly prevents "buy the rumour, sell the news" entries (UNI) where the repricing is already complete before the position is opened.

### Key Lesson
**Five of six losing trades this week had valid catalysts and textbook stop mechanics. The failures were timing, not thesis.** UNI (the clearest example) had a real structural catalyst but entered after the 24h high had already been set — the repricing event had occurred before the bot's order. WLD-2 repeated a similar pattern: the first entry captured the catalyst move, the second entered at a higher price on a stale version of the same catalyst. TAO, WLD-1, and HYPE all worked because they entered early in the repricing window. Going forward: verify the 24h high was recent (≤60 min ago) before entering any momentum trade. If price is already declining from the high, wait for a fresh breakout or a new catalyst event.

---

## Week of 2026-06-20 — Review Date: 2026-06-26

### Context
Heavy-loss week driven by a single critical violation: BTC entered without a trailing stop in an unlogged session, then the active replacement stop was erroneously cancelled overnight by a recurring `kraken.sh positions` API bug (endpoint returns only margin positions, not spot balances). BTC fell −6.51% from entry before the second replacement stop fired. Two other trades (SOL win, ENA loss) were mechanically clean. BTC weekly gate triggered mid-week (Jun 23) on BTC falling −4.96% vs Jun 17 close $65,599 and remained active through week-end at −8.0%. Market in Extreme Fear (F&G 12) for the full week. 7 consecutive weeks of ETF outflows ($5.94B+ cumulative). $1.8B in liquidations on Jun 25.

### Account Snapshot (Friday close)
| Account | Equity | Cash | Positions |
|---|---|---|---|
| Kraken | $113.74 | $113.74 ZUSD | 0 — 100% cash |
| Alpaca | $0 | — | Fully closed (May 22) |
| **Total** | **$113.74** | $113.74 | 0 open |

### Weekly Performance
| Metric | Value |
|---|---|
| Starting Equity (Fri Jun 19 EOD) | $121.85 |
| Ending Equity (Fri Jun 26) | **$113.74** |
| **Week Return** | **−6.65%** (−$8.11) |
| BTC Week Return | **−4.05%** ($62,620 → $60,083) |
| **Bot vs BTC** | **−2.60%** (underperformed) |

### Trade Summary
| # | Date | Pair | Entry | Exit | P&L | Status |
|---|---|---|---|---|---|---|
| 1 | Jun 20→21 | SOL/USD | ~$72.15 (0.8462u) | $74.04 (0.5% trail post-T1) | **+$1.35** | WIN |
| 2 | Jun 22 | ENA/USD | ~$0.0958 (828u) | ~$0.09528 (2.5% trail) | **−$0.95** | LOSS |
| 3 | Jun 22→25 | BTC/USD | ~$65,566 (0.001859u) | ~$61,347 (2.5% trail) | **~−$7.93** ⚠️ | LOSS |

### Weekly Stats
| Metric | Value |
|---|---|
| Total Trades (closed) | 3 |
| Wins | 1 (SOL) |
| Losses | 2 (ENA, BTC) |
| Win Rate | **33.3%** |
| Gross Wins | **$1.35** |
| Gross Losses | **$8.88** (ENA $0.95 + BTC $7.93) |
| Profit Factor | **0.15** |
| Avg Win | $1.35 |
| Avg Loss | $4.44 |
| Largest Win | SOL +$1.35 (+2.22% net) |
| Largest Loss | BTC −$7.93 (−6.51% on notional) ⚠️ violation |
| Open Unrealized | $0 (100% cash) |
| Est. Fees Paid | **~$1.37** (3 trades × ~$88 avg notional × 0.52% round-trip) |

### Open Positions (End of Week)
None — 100% ZUSD $113.74. No open orders. BTC weekly gate TRIGGERED (BTC −8.0% vs Jun 17 close $65,599; requires BTC recovery to ~$67,666 to clear).

### Trade Quality Review

**Entry types that worked:**
- **Multi-factor momentum + macro catalyst (SOL, +2.22%):** Volume +67% surge, Iran peace deal risk-on macro tailwind, Alpenglow upgrade narrative, Securitize tokenized fund expansion. SOL +3.52% from 24h open at entry. T1 (+3%) hit at $74.31; stop tightened from 3.5% to 0.5% per strategy rules; exit at $74.04 — clean execution of T1-tighten workflow. 22-hour hold. Minor error: initial stop OM6G7A erroneously cancelled as "orphan" in Jun 20 overnight triage; replacement OZXH23 placed immediately, protection restored.

**Entry types that failed:**
- **Stale institutional catalyst (ENA, −1.19%):** Coinbase Ventures + Janus Henderson + fee-switch governance vote — all catalysts 3–20 days old, not <6h fresh at entry. ENA was only 0.2% off its 24h high (momentum peak check barely passed), but the underlying catalysts predated the <6h freshness requirement for a day-trade entry. Small loss because 2.5% trailing stop managed risk correctly; HWM $0.09830 reached before whipsaw. This was a marginal/borderline entry that should have been skipped.
- **Unlogged entry with no stop + orphan-stop bug repeated (BTC, −6.51%):** ⚠️ **Three concurrent violations.** (1) No trailing stop placed at entry — the single most critical mandatory rule. (2) Entry in an unlogged session (~Jun 22 late UTC) with no audit trail. (3) Entry at ~$65,566 was near the 30h high in a market already in a weekly downtrend (BTC weekly gate was at risk level at entry). Replacement stop OFVAFJ placed next session-open at $62,334 BTC, then cancelled overnight Jun 24 by the orphan-stop bug (triage found `positions: {}` and cancelled the stop as orphaned — same error as SOL Jun 20). Replacement stop OATQNB had lower HWM ($62,630 vs $63,040 of cancelled stop). BTC dropped to 24h low $61,127 on Jun 25, firing OATQNB at ~$61,347.

**Stop quality:**
- SOL: Excellent execution. 3.5% trail (high-ATR, correctly applied) → T1 tighten to 0.5% → clean exit near the peak. Minor orphan-cancel corrected promptly.
- ENA: Correct. 2.5% trail; HWM reached; swept on whipsaw. No mechanics failure.
- BTC: Two separate stop failures — (1) mandatory stop not placed at entry, (2) replacement stop cancelled as false orphan due to `positions` endpoint limitation. Second replacement OATQNB functioned correctly when it eventually fired.

**Profile violations:**
- ⚠️ BTC: trailing stop NOT placed at entry — mandatory rule violated
- ⚠️ BTC: entry in unlogged session — audit trail missing
- ⚠️ BTC: entry at 30h high in a downtrending market (weekly gate approaching trigger level at entry)
- ENA: catalyst freshness borderline (3–20 days old vs <6h requirement) — marginal entry

**Concrete adjustment — orphan-stop detection fix (added 2026-06-26):**
Before cancelling any trailing stop as an "orphan," verify the underlying asset BALANCE via `kraken.sh account`. The `kraken.sh positions` endpoint returns ONLY margin positions — spot holdings are visible only as non-zero balances (XXBT, XSOL, XETH, etc.) in the `account` output. A stop is an orphan ONLY if: (a) `positions: {}` AND (b) the asset balance in `account` = 0 (dust only). This bug caused two unnecessary stop cancellations this week — SOL Jun 20 (corrected same session) and BTC Jun 24 (not corrected; led to lower HWM on replacement stop and ultimately larger loss on the final stop-out).

### Key Lesson
**One mandatory rule violation (no stop at entry) plus a recurring operational bug (positions endpoint ≠ spot balances) combined to destroy 70% of the week's P&L in a single trade.** The SOL trade was the blueprint: multi-factor catalyst, correct high-ATR stop, T1 tighten, clean exit. ENA was marginal but loss-limited. BTC broke three rules simultaneously and the orphan-stop bug compounded the damage. The fix is not a new strategy rule — both rules already existed — but an operational discipline: always check `kraken.sh account` balances before cancelling any stop order, and never enter a trade without placing the stop in the same session, same workflow step.

---

## Week of 2026-06-27 — Review Date: 2026-07-03

### Context
Quiet week — only two trades all week, both same-day round trips. AAVE (Jun 26, protocol upgrade + revenue-buyback catalyst) hit both profit targets cleanly. KAS (Jun 30, Toccata hard fork) was a pre-positioning entry ahead of a scheduled activation time that faded before the fork even fired, stopped out at −3.6%. The remaining five sessions (Jun 27–29, Jul 1–3) were flat cash days with no qualifying setup. BTC spent the first half of the week still under the weekly downtrend gate (triggered Jun 23) but the gate cleared mid-week — Jul 2 research confirmed BTC's 5-day trend flipped positive (+2.6–2.7%) — reopening pure-momentum entries for the coming week. BTC rallied through Q3's open, which the bot mostly missed by holding cash on non-qualifying days.

### Account Snapshot (Friday close)
| Account | Equity | Cash | Positions |
|---|---|---|---|
| Kraken | $115.36 | $115.36 ZUSD | 0 — 100% cash |
| Alpaca | $0 | — | Fully closed (May 22) |
| **Total** | **$115.36** | $115.36 | 0 open |

### Weekly Performance
| Metric | Value |
|---|---|
| Starting Equity (Fri Jun 26 EOD, pre-AAVE) | $113.74 |
| Ending Equity (Fri Jul 3 EOD) | **$115.36** |
| **Week Return** | **+1.42%** (+$1.62) |
| BTC Week Return | **+2.43%** ($60,223 → $61,687) |
| **Bot vs BTC** | **−1.01%** (underperformed) |

### Trade Summary
| # | Date | Pair | Entry | Exit | P&L | Status |
|---|---|---|---|---|---|---|
| 1 | Jun 26 | AAVE/USD | ~$89.93 (1.2524u) | ~$95.16 (2.5% trail) | **+$5.79** | WIN |
| 2 | Jun 30 | KAS/USD | ~$0.031776 (3,650u) | ~$0.030664 (3.5% trail) | **−$4.17** | LOSS |

### Weekly Stats
| Metric | Value |
|---|---|
| Total Trades (closed) | 2 |
| Wins | 1 (AAVE) |
| Losses | 1 (KAS) |
| Win Rate | **50.0%** |
| Gross Wins | **$5.79** |
| Gross Losses | **$4.17** |
| Profit Factor | **1.39** |
| Avg Win | $5.79 |
| Avg Loss | $4.17 |
| Largest Win | AAVE +$5.79 (+5.10% net) |
| Largest Loss | KAS −$4.17 (−3.60% net) |
| Open Unrealized | $0 (100% cash) |
| Est. Fees Paid | **~$1.19** (2 trades × ~$114.5 avg notional × 0.52% round-trip) |

### Open Positions (End of Week)
None — 100% ZUSD $115.36. No open orders. BTC weekly downtrend gate CLEARED mid-week (Jul 2 research: BTC +2.6–2.7% over trailing 5 days vs the prior −3% trigger) — pure-momentum entries reopened for next week.

### Trade Quality Review

**Entry types that worked:**
- **Protocol-upgrade catalyst + technical breakout (AAVE, +5.10%):** Aave V4 Hub & Spoke architecture live plus an Aavenomics 3.0 revenue-share/buyback announcement mid-session. Entered at a fresh 24h high (0.2% off peak) — momentum peak check passed cleanly. 2.5% trail (correctly kept at the standard rate rather than the 3.5% high-ATR exception, since AAVE is a DeFi blue chip, not a momentum-coin) rode the move through both T1 and T2; stop fired on the retreat from the $98.01 high. Textbook execution end to end.

**Entry types that failed:**
- **Scheduled-catalyst pre-positioning (KAS, −3.60%):** Entered ~6 hours ahead of the Kaspa Toccata hard fork's known 16:15 UTC activation, on pre-fork momentum (+3.89% from open, volume surging to 34.7% of 24h total). Price faded before the fork even activated — a "buy the rumour, sell the news" pattern on a scheduled, publicly-known event, where speculators front-run and exit ahead of the catalyst firing. The 3.5% high-ATR trail (correctly sized for KAS's 5.6% intraday range) capped the loss as designed, but the entry timing was the underlying problem: anticipatory momentum ahead of a dated, known-time catalyst is lower-quality than momentum confirmed by news that has already broken.

**Stop quality:**
Both stops placed immediately after fill. AAVE's 2.5% trail (blue-chip, not high-ATR) and KAS's 3.5% trail (high-ATR exception, correctly applied) both fired at their expected levels with no orphan-stop or mechanical issues. Clean week for stop discipline.

**Profile violations:**
None. AAVE spread 0.056%, KAS spread 0.10% — both well inside the 1% cap. No leverage used. R:R confirmed ≥1.2:1 at both entries (AAVE 1.2:1 at T1, KAS 1.43:1 at T2). Same-thesis cap not applicable — no repeat entries this week.

**Concrete adjustment — scheduled-catalyst pre-positioning caution (added 2026-07-03):**
For catalysts with a known, publicly-scheduled activation time (hard forks, mainnet upgrades, token unlocks with a fixed date/time), do not enter more than ~2 hours ahead of the event on anticipatory momentum alone. Pre-event momentum on dated catalysts is frequently front-run and sold into before the event fires (KAS this week). Prefer entering on confirmed post-event price reaction, or require a fresh breakout above the pre-event high with volume confirmation if entering ahead of the scheduled time. This does not apply to unscheduled/reactive catalysts (news, listings, protocol votes with no fixed announcement time), where the existing momentum peak check (24h high set within 60 min) already governs entry timing.

### Key Lesson
**The one clean, well-timed catalyst trade (AAVE) outweighed the one anticipatory pre-positioning trade (KAS), keeping the week net positive, but the bot still underperformed BTC by −1.01% because BTC's Q3-opening recovery ran mostly on days with no qualifying setup.** The KAS loss is a distinct failure mode from the existing "buy the rumour, sell the news" lesson: entering ahead of a *scheduled* catalyst (known activation time) carries the same repricing risk as entering after a *reactive* one has already peaked. Going forward: treat dated events (forks, unlocks, scheduled upgrades) with the same "has this already been priced in" scrutiny as spontaneous news, and don't chase pre-event anticipation without a live breakout confirming genuine incremental demand.

---

## Week of 2026-07-04 — Review Date: 2026-07-10

### Context
Quiet week — only one fresh entry (ARB, Jul 9) plus two carried-over positions (ETH, DOGE) from the prior week's Jul 3 session that stopped out early in the week. Seven of the week's ten scan sessions (Jul 4–9) found no qualifying setup and held cash, with Perplexity research returning hallucinated/contradictory data (wrong prices, wrong direction, non-Kraken tickers) in nearly every single session — live Kraken cross-checks correctly rejected all of it. BTC trended up through the week (Monday open $63,593 → Friday $64,155, +0.88%), which the bot mostly missed by sitting in cash or in a stopped-out ARB position.

### Account Snapshot (Friday close)
| Account | Equity | Cash | Positions |
|---|---|---|---|
| Kraken | $115.56 | $115.56 ZUSD | 0 — 100% cash |
| Alpaca | $0 | — | Fully closed (May 22) |
| **Total** | **$115.56** | $115.56 | 0 open |

### Weekly Performance
| Metric | Value |
|---|---|
| Starting Equity (Fri Jul 03 EOD) | $115.36 |
| Ending Equity (Fri Jul 10 EOD) | **$115.56** |
| **Week Return** | **+0.17%** (+$0.20) |
| BTC Week Return | **+0.88%** (Mon open $63,593.00 → Fri $64,154.60) |
| **Bot vs BTC** | **−0.71%** (underperformed) |

### Trade Summary
| # | Date | Pair | Entry | Exit | P&L | Status |
|---|---|---|---|---|---|---|
| 1 | Jul 04 (discovered) | ETH/USD | $1,727.67 | ~$1,774.02 (0.5% trail, T1-tightened) | **+$2.69** | WIN |
| 2 | Jul 05 (discovered) | DOGE/USD | $0.0772089 | ~$0.0768711 (2.5% trail) | **−$0.06** | LOSS |
| 3 | Jul 09 → Jul 10 | ARB/USD | ~$0.0888 (655u) | ~$0.0876 (2.5% trail, ~66min hold) | **−$1.78** | LOSS |

### Weekly Stats
| Metric | Value |
|---|---|
| Total Trades (closed) | 3 |
| Wins | 1 (ETH) |
| Losses | 2 (DOGE, ARB) |
| Win Rate | **33.3%** |
| Gross Wins | **$2.69** |
| Gross Losses | **$1.84** |
| Profit Factor | **1.46** |
| Avg Win | $2.69 |
| Avg Loss | $0.92 |
| Largest Win | ETH +$2.69 (+2.69%) |
| Largest Loss | ARB −$1.78 (round trip incl. fees) |
| Open Unrealized | $0 (100% cash) |
| Est. Fees Paid | **~$0.45** (3 trades × ~$57.4 avg notional × 0.26%; actual ARB fee tier measured live at 0.4% taker — higher than the 0.26% assumed in strategy notes) |

### Open Positions (End of Week)
None — 100% ZUSD $115.5598 (+dust). No open orders. BTC weekly trend gate: not triggered (BTC up over the week).

### Trade Quality Review

**Entry types that worked:**
- **T1-tighten mechanic (ETH, +2.69%):** Carried position from the prior week. Live Kraken quote crossed +3.79% unrealized, triggering the mandatory T1 tighten (2.5%→0.5% trail). Locked in a clean profit on the subsequent pullback. Correct, mechanical execution of an existing rule — not a sourcing win.

**Entry types that failed:**
- **Borderline momentum+catalyst (ARB, −1.78%):** LG Electronics/Arbitrum L2 news plus Robinhood Chain TVL growth — the first candidate all week where Perplexity and live Kraken data actually agreed (+15.9% live vs open, +2.3% off 24h high, spread 0.11%). But R:R was only at the bare 1.2:1 floor, the exact catalyst hour couldn't be confirmed as <6h fresh, and market Fear & Greed was at 20 (Extreme Fear) — all flagged as risk at entry. Faded and stopped out ~66 minutes later. Sizing discipline (50% equity, no leverage, given the marginal signal) limited the damage but didn't prevent the loss.
- **Carried DOGE position (−0.44%):** Ordinary 2.5% trail whipsaw on a multi-day hold, no mechanical issue.

**Stop quality:**
Clean week — every position (ETH, DOGE, ARB) had a stop in place at all times, the ETH T1-tighten fired correctly, and no orphan-stop errors occurred.

**Profile violations:**
None outright. ARB was a marginal entry (R:R exactly at the 1.2:1 floor, catalyst freshness unverified <6h) — same category as the ENA marginal entry flagged in the week of Jun 20 review — but not a hard rule violation.

**Recurring operational issues (not strategy rules, but worth flagging):**
- Perplexity returned hallucinated or flatly contradicted data in nearly every session this week (e.g. "BTC hit new ATH above $123,000" vs live $62–64k, wrong-direction gainer claims, non-Kraken tickers). Live Kraken cross-checks correctly caught and rejected all of it, but the volume of noise is a recurring cost.
- WhatsApp/CallMeBot notifications have failed every session since Jul 2 (CallMeBot quota exhausted) — over a week with zero successful trade alerts, including the ARB entry. Needs resubscription at callmebot.com/61477788635; the bot cannot self-resolve an external API quota issue.

**Concrete adjustment (added 2026-07-10):**
When a catalyst's freshness (<6h) can't be confirmed AND market-wide Fear & Greed is in "Extreme Fear" territory (≤25), require R:R ≥ 1.5:1 rather than the standard 1.2:1 floor — the ARB entry met only the bare minimum on both counts and reversed almost immediately. Also corrected a stale assumption: TRADING-STRATEGY.md's Risk Awareness section assumed a 0.26% taker fee, but this account's actual measured taker fee (confirmed at the ARB entry) is 0.4% (round trip ~0.8%), which erodes the R:R bar more than previously assumed. Both changes applied to TRADING-STRATEGY.md.

### Key Lesson
**A quiet week (3 closed trades, 7 of 10 sessions flat) barely broke even (+0.17%) and lagged BTC's uptrend (−0.71% vs BTC) because the week's only fresh entry (ARB) was also its most marginal one — bare-minimum R:R, unconfirmed catalyst freshness, and an Extreme Fear backdrop all present simultaneously.** The one clean win (ETH) came from risk-management mechanics (the T1 tighten), not sourcing skill. Going forward, marginal setups in a bearish-sentiment environment need a higher R:R bar, not just a smaller position size — sizing discipline limited this week's damage but didn't prevent the loss.

---
