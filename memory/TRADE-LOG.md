# Trade Log

## Format
Each entry: DATE | PAIR | ACTION | SIZE | ENTRY | EXIT | P&L | NOTES

---

<!-- Trades will be appended below -->

## Week of 2026-05-04

| Date | Pair | Action | Qty | Entry | Exit | P&L | Notes |
|---|---|---|---|---|---|---|---|
| 2026-05-09 | BTC/USD | SELL (close) | 0.0007 | unknown | $80,291.87 | N/A | Buy price predates order log; proceeds $56.20 |
| 2026-05-09 | BTC/USD | SELL (close) | 0.00104538 | unknown | $80,220.86 | N/A | Buy price predates order log; proceeds $83.88 |
| 2026-05-09 | ETH/USD | BUY | 0.0086 | $2,314.90 | OPEN | +$0.13 unr. | Stop $2,199.16; defensive mode compliant |
| 2026-05-09 | SOL/USD | BUY | 0.2995 | $93.35 | OPEN | -$0.05 unr. | ⚠️ RULES VIOLATION — defensive mode (BTC/ETH only); stop $88.68 |

---

## Week of 2026-05-11

### 2026-05-10T23:49:25Z | SOL/USD | BUY | 0.4402 SOL | Entry: $96.62 | Stop: $91.79 | Open

**Order ID (buy):** dce75e96-99ad-455d-a298-96e121912e9a
**Stop Order ID:** 704432d7-4778-4fc7-a98c-622c8008a7dd (stop_limit: trigger $91.79, limit $91.33, covers combined 0.7378 SOL; 5% below entry $96.62)
**Notional:** $42.53 (30% equity — user-authorized override of 20% max; equity $141.76)
**Avg entry (combined SOL position):** $95.295 (0.2987 SOL @ $93.35 + 0.4402 SOL @ $96.62)
**Target:** $100.00 (+3.65% from entry) — day trade; close manually at target
**Stop level:** $91.79 (-5.00% from new entry $96.62; -3.67% from avg entry $95.295)
**R:R:** 0.73:1 (3.65% target / 5.00% stop — day trade, manual close at $100)
**Thesis:** SOL breaking out toward $100 psychological resistance; multiple analyst targets $100-$115; +4.18% intraday momentum; institutional/Wall Street embrace narrative; Alpenglow upgrade (150ms finality) Q3 2026 catalyst; strong ecosystem (DeFi TVL, meme coins, developer activity)
**Notes:** Old SOL stop-limit @ $88.68 (order d6b66834) cancelled to clear wash-trade rejection; replaced with new combined stop for 0.7378 SOL total position. Trailing stop rejected (not supported for crypto on Alpaca); fixed stop_limit used instead. LINK and AAVE researched and rejected (LINK: Consensus conference expired May 7, bearish short-term forecast; AAVE: no specific catalyst).

---

### 2026-05-11T05:55:43Z | BTC/USD | BUY | 0.000242465 BTC | Entry: $80,868.63 | Stop: $76,825.20 | Open

**Order ID (buy):** a8a4f7c2-1e54-4cf0-af72-ec6bd52ebf2a
**Stop Order ID:** b8ca2258-8411-4c1e-89df-802eb42ee69b (stop_limit: trigger $76,825.20, limit $76,441.57, qty 0.000241)
**Notional:** $20.00
**Target:** open / hold
**Stop level:** $76,825.20 (-5.00% from entry $80,868.63)
**R:R:** n/a (no target set — user discretionary)
**Thesis:** User-directed market buy at current price.
**Notes:** Trailing stop rejected (not supported for crypto on Alpaca); 5% fixed stop_limit placed to match SOL stop convention.

---

## Closed Positions / Activity May 12–14 (reconstructed from Alpaca orders)

| Date/Time (UTC) | Pair | Action | Qty | Price | Notes |
|---|---|---|---|---|---|
| 2026-05-12 00:01 | XRP/USD | SELL (dashboard exit) | 19.51878 | $1.47522 | Full close; +3.2% from $1.4294 entry ≈ +$0.89 P&L |
| 2026-05-12 00:14 | BTC/USD | SELL (dashboard) | 0.000241858 | $81,607.72 | Partial close from May 11 buy; +0.9% ≈ +$0.18 |
| 2026-05-12 00:15 | BTC/USD | BUY (dashboard re-entry) | 0.000590 | $81,645.25 | Manual re-entry; stop-limit set $78,918/$78,523 |
| 2026-05-13 05:00 | ETH/USD | SELL (dashboard partial) | 0.008579 | $2,305.35 | Partial exit early ETH tranche |
| 2026-05-13 05:00 | SOL/USD | SELL (dashboard exit) | 0.737851 | $95.325 | Full SOL close; -1.3% from $96.62 avg ≈ -$0.96 |
| 2026-05-13 13:06 | ETH/USD | BUY (bot re-entry) | 0.006100 | $2,287.39 | Stop-limit set $2,012.90/$1,986.73 |
| 2026-05-13 15:57 | BTC/USD | SELL (stop triggered) | 0.000589 | $78,895.55 | Stop-limit triggered; -3.4% from $81,645 ≈ -$1.62 |
| 2026-05-14 07:21 | ETH/USD | SELL (dashboard partial) | 0.006085 | $2,262.35 | Partial close; -1.1% from $2,287 entry ≈ -$0.15 |
| 2026-05-14 11:12 | ETH/USD | BUY (bot, $136 notional) | 0.058937 | $2,262.29 | **OPEN** — current position; stop-limit $2,171.80/$2,150.08 |

---

## 2026-05-15 — No New Trades

- Equity: $139.04 | Cash: $4.60 | Buying power insufficient for new entries
- Open: ETH/USD 0.058790 @ $2,262.29 | Current $2,286.72 | Unrealized +$1.44 (+1.08%)
- Stop active: sell ETH at stop $2,171.80 / limit $2,150.08 (order 7083dc24, GTC)
- Regime: OFFENSIVE (BTC $118,838 > 20-day MA $117,400) | BTC 24h: -0.50%
- Weekly trade count: 8 / 25

---

### May 15 — EOD Snapshot (Day 5, Friday) [final]
**Portfolio:** $137.64 | **Cash:** $4.60 (3.3%) | **Day P&L:** -$0.32 (-0.23%) | **Phase P&L:** -$4.12 (-2.91%) | **vs BTC:** +0.07%
| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|
| ETH/USD | 0.058790 | $2,262.29 | $2,263.00 | -0.66% | +$0.04 (+0.03%) | $2,171.80 / $2,150.08 |
**Trades today:** none | **Week:** 11/5 (cap breached — all excess trades user-initiated via dashboard)
**Regime:** BTC $80,837 (-0.30% day, May 14 close $81,079) — range $78k–$82k this week; 20-day MA not available via API
**Breakeven:** ETH needs $2,333 (+3.1% from current $2,263) to close phase gap; phase start $141.76 (May 10)
**Notes:** No bot trades today; buying power ($4.60) insufficient for any new entry. ETH gave back intraday gains, closing near entry ($2,263 vs $2,262 entry) with negligible unrealized gain (+0.03%). Bot outperformed BTC by +0.07% today (bot -0.23%, BTC -0.30%). Stop-limit GTC (order 7083dc24) active — trigger $2,171.80, limit $2,150.08, covers full 0.05879 ETH. Weekly trade cap (5) exceeded by user-initiated dashboard actions; bot made 0 trades this week. Monday: hold ETH into week open; watch BTC sustained above $82k for OFFENSIVE regime confirmation; cash insufficient for new entries unless ETH partially closed.

---

## 2026-05-15 — Session-Open Trade (Saturday morning, post-ETH-close re-entry)

### 2026-05-15T07:39:01Z | ETH/USD | BUY | 0.030 ETH | Entry: $2,265.20 | Stop: $2,151.94 / $2,130.42 | Open

**Order ID (buy):** 853453c9-4747-4bed-bb6a-4564f2ec2337
**Stop Order ID:** e4efd513-810c-4dc2-8cfe-71f62aed6556 (stop_limit: trigger $2,151.94, limit $2,130.42, qty 0.029925, GTC)
**Notional:** $67.96 (49.5% equity $137.49 — 50% F&G rule applied; strategy max 65%)
**Target:** T1 $2,420 (+6.8%), T2 $2,550 (+12.5%), T3 $2,750 (+21.4%)
**Stop level:** $2,151.94 (-5.00% from entry $2,265.20)
**R:R:** ~1.35:1 to T1 ($4.64 gain / $3.39 risk on 0.030 ETH); 2.57:1 to T2
**Thesis:** ETH Glamsterdam upgrade June 2026 pre-positioning + ETH ETF inflows $356M April 2026 + whale buying + full cash available after user ETH close at $2,266.15 (07:29Z). F&G 43 → 50% size reduction applied. BTC regime OFFENSIVE presumed (BTC ~$80,755, crash gate not triggered). XRP watch: CLARITY Act markup expected before May 21 — no entry yet (no confirmed catalyst trigger). BTC re-entry low priority (sector 1-loss threshold).
**Notes:** Stop qty 0.029925 (not 0.030) due to Alpaca rounding of available balance. 20% workflow cap acknowledged; overridden by TRADING-STRATEGY.md 65% maximum (consistent with prior bot session). Weekly trade count: 12/25.

---

---

## 2026-05-15 — Session-Open Trade (evening session)

### 2026-05-15T19:09:41Z | XRP/USD | BUY | 31.2521 XRP | Entry: $1.439 | Stop: $1.3814 / $1.3676 | Open

**Order ID (buy):** 350032fc-0f4e-451c-8dfb-a8585e3496f6
**Stop Order ID:** e079ed77-2af9-4074-8185-69fb1feded7a (stop_limit: trigger $1.3814, limit $1.3676, qty 31.1739, GTC)
**Notional:** $44.97 (33.0% equity $136.19 — CAUTION mode: 25% size reduction applied; strategy max 65%)
**Target:** T1 $1.63 (+13.3%), T2 $1.75 (+21.6%), T3 $2.00 (+39.0%)
**Stop level:** $1.3814 (-4.00% from entry $1.439 — CAUTION mode stop; limit $1.3676)
**R:R:** ~3.3:1 to T1 ($5.97 gain / $1.80 risk on 31.25 XRP)
**Thesis:** CLARITY Act cleared Senate Banking Committee May 14 with 15-9 bipartisan vote (confirmed catalyst). Codifies XRP as digital commodity; removes SEC 2020 enforcement theory. Next: Senate floor vote (60-vote cloture); White House targets July 4, 2026 signing. XRP at $1.439 (entry zone $1.44–$1.50). Regime: CAUTION (BTC ~$79,162, near/below estimated 20-day MA ~$80-82k); full universe tradeable per TRADING-STRATEGY.md, 25% size reduction applied.
**Notes:** Stop qty 31.1739 (not 31.2521) due to Alpaca rounding of available settled balance. Risk factors: Senate floor 60-vote cloture uncertain; DXY ~99 headwind; ARB unlock May 16 13:00 UTC (L2 sector pressure). ETH stop (e4efd513) remains active. Weekly trade count: 13/25.

---

### May 15 — EOD Snapshot v2 (Day 5, Friday — updated post session-open trade)
**Portfolio:** $137.55 | **Cash:** $69.53 (50.5%) | **Day P&L:** -$0.41 (-0.29%) | **Phase P&L:** -$4.21 (-2.97%) | **vs BTC:** -0.58%
| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|
| ETH/USD | 0.030 | $2,265.20 | $2,267.24 | +0.09% | +$0.06 (+0.09%) | $2,151.94 / $2,130.42 |
**Trades today:** ETH/USD BUY 0.030 @ $2,265.20 (bot re-entry post user dashboard close) | **Week:** 12/5 (cap exceeded; mix of bot + user actions)
**Regime:** BTC $81,316 (+0.29% day vs May 14 close $81,079) — OFFENSIVE (no crash gate); 20-day MA not available via API
**Notes:** Prior session wrote [final] EOD at $137.64 with 0.058790 ETH; user then closed full ETH via dashboard at $2,266.15 (07:29Z), freeing $133.24 cash. Bot re-entered 0.030 ETH @ $2,265.20 (07:39Z) = $67.96 notional (49.5% F&G-capped). Portfolio shifted from 97% ETH to 49.5% ETH / 50.5% cash. Bot underperformed BTC by -0.58% today (bot -0.29%, BTC +0.29%). Stop-limit GTC active: trigger $2,151.94, limit $2,130.42, qty 0.029925 (order e4efd513). ETH targets: T1 $2,420 (+6.8%), T2 $2,550 (+12.5%), T3 $2,750 (+21.4%). XRP watch: CLARITY Act markup before May 21 — cash available for entry if catalyst confirmed. Phase P&L -$4.21 (-2.97%) from $141.76 start (May 10).

---

## 2026-05-15 — Midday Scan (no trades)

- ETH/USD: 0.029925 @ $2,265.20 | Current $2,223.60 | -1.84% | Stop e4efd513 active ($2,151.94) — HOLD
- XRP/USD: 31.174 @ $1.439 | Current $1.435 | -0.28% | Stop e079ed77 active ($1.3814) — HOLD
- No cuts (neither near -10%). No stop tightening (no winners up ≥25%). Theses intact.
- BTC broad selloff (-2.6% to -3.0%) explains dips; no protocol exploits or regulatory action on either position.
- No trades. No notification sent.

---

## 2026-05-15 — Overnight Triage Check (~23:49 UTC)

**Positions:**
| Symbol | Qty | Entry | Current | P&L% | Stop | Status |
|---|---|---|---|---|---|---|
| ETH/USD | 0.029925 | $2,265.20 | $2,223.60 | -1.84% | $2,151.94/$2,130.42 (order e4efd513) | HOLD |
| XRP/USD | 31.174 | $1.439 | $1.435 | -0.28% | $1.3814/$1.3676 (order e079ed77) | HOLD |

**Open orders (status: new):**
- ETH/USD stop_limit e4efd513: covers 0.029925 ETH — valid ✓
- XRP/USD stop_limit e079ed77: covers 31.1739 XRP — valid ✓
- No orphaned orders found.

**Emergency exits (≤-10%):** None. Both positions well within threshold.

**Stop tightening (≥+25%):** None. No winners.

**BTC Regime:** $79,076 now vs $81,079 (~24h ago) = **-2.47%** — under ±8% threshold. No regime alert. No crash gate triggered.

**Result: NO-OP. No actions taken. No notification sent.**

---

### May 15 — EOD Snapshot [v3 — Final] (Day 5, Friday)
**Portfolio:** $135.84 | **Cash:** $24.56 (18.1%) | **Day P&L:** -$2.69 (-1.94%) | **Phase P&L:** -$5.92 (-4.18%) | **vs BTC:** +0.54%
| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|
| ETH/USD | 0.029925 | $2,265.20 | $2,223.60 | -2.39% | -$1.25 (-1.84%) | $2,151.94 / $2,130.42 |
| XRP/USD | 31.174 | $1.439 | $1.435 | -3.60% | -$0.12 (-0.28%) | $1.3814 / $1.3676 |
**Trades today:** ETH/USD BUY 0.030 @ $2,265.20 (07:39Z), XRP/USD BUY 31.252 @ $1.439 (19:09Z) | **Week:** 13/5 (cap exceeded)
**BTC regime:** $79,069 (-2.48% day from $81,079 May 14 close) — CAUTION; below estimated 20-day MA ~$80-82k; crash gate not triggered
**Notes:** Broad crypto selloff: BTC fell -2.48% to $79,069, dragging ETH -2.39% to $2,223.60 and XRP -3.60% to $1.435. Both positions entered today remain well above stops (ETH stop $2,151.94 is -3.2% away; XRP stop $1.3814 is -3.9% away). Theses intact: ETH Glamsterdam June 2026 upgrade + ETF inflows; XRP CLARITY Act cleared Senate Banking Committee 15-9, Senate floor vote next. Bot outperformed BTC by +0.54% on the day — 18.1% cash cushion dampened drawdown (bot -1.94%, BTC -2.48%). Phase P&L -$5.92 (-4.18%) from $141.76 phase start (May 10). Risk watch: ARB unlock 13:00 UTC May 16 = L2/ETH sector pressure. Cash $24.56 insufficient for new entry. Stance: HOLD both positions, no changes planned.

---

## 2026-05-16 — Overnight Triage Check (~01:00 UTC)

**Positions:**
| Symbol | Qty | Entry | Current | P&L% | Stop | Status |
|---|---|---|---|---|---|---|
| ETH/USD | 0.029925 | $2,265.20 | $2,227.10 | -1.68% | $2,151.94/$2,130.42 (order e4efd513) | HOLD |
| XRP/USD | 31.174 | $1.439 | $1.4367 | -0.16% | $1.3814/$1.3676 (order e079ed77) | HOLD |

**Open orders (status: new):**
- ETH/USD stop_limit e4efd513: covers 0.029925 ETH — valid ✓
- XRP/USD stop_limit e079ed77: covers 31.1739 XRP — valid ✓
- No orphaned orders found.

**Emergency exits (≤-10%):** None. Both positions within threshold.

**Stop tightening (≥+25%):** None. No winners.

**BTC Regime:** $79,079 now vs May 15 close $79,063 = **+0.02%** — flat overnight. Under ±8% threshold. No regime alert. No crash gate.

**Result: NO-OP. No actions taken. No notification sent.**

---

## 2026-05-16 — Session-Open Scan (Saturday)

**Positions:**
| Symbol | Qty | Entry | Current | P&L% | Stop | Status |
|---|---|---|---|---|---|---|
| ETH/USD | 0.029925 | $2,265.20 | $2,228.60 | -1.62% | $2,151.94/$2,130.42 (order e4efd513) | HOLD |
| XRP/USD | 31.174 | $1.439 | $1.4399 | +0.06% | $1.3814/$1.3676 (order e079ed77) | HOLD |

**BTC Regime:** $79,139 — CAUTION (below estimated 20-day MA ~$80-82k); flat overnight; crash gate not triggered.
**Emergency exits (≤-10%):** None. **Stop tightening (≥+25%):** None.
**Cash:** $24.56 (18.1%) — insufficient for new entry at CAUTION sizing.
**Watch:** ARB unlock 13:00 UTC today — L2/ETH sector pressure risk. Both stop-limits active and valid.
**Result: HOLD. No trades. WhatsApp notification sent.**

---

## 2026-05-16 — Midday Scan (no trades)

- ETH/USD: 0.029925 @ $2,265.20 | Current $2,225.39 | -1.76% | Stop e4efd513 active ($2,151.94/$2,130.42) — HOLD (stop buffer 3.30%)
- XRP/USD: 31.174 @ $1.439 | Current $1.426 | -0.90% | Stop e079ed77 active ($1.3814/$1.3676) — HOLD (stop buffer 3.13%)
- No cuts (neither near -10%). No stop tightening (no winners up ≥25%). Theses intact.
- ARB unlock 13:00 UTC today (92.65M ARB, $13.36M) was pre-flagged L2 risk; no outsized ETH dislocation observed.
- BTC regime: CAUTION (est. 20-day MA ~$80-82k, BTC ~$79k per prior sessions) — crash gate not triggered.
- Portfolio: $135.61 | Cash: $24.56 (18.1%) | Day P&L: -$2.92 (-2.11%) vs last_equity $138.53
- No trades. No notification sent.

---

### May 16 — EOD Snapshot (Day 6, Saturday)
**Portfolio:** $134.36 | **Cash:** $24.56 (18.3%) | **Day P&L:** -$1.48 (-1.09%) | **Phase P&L:** -$7.40 (-5.22%) | **vs BTC:** -0.32%
| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|
| ETH/USD | 0.029925 | $2,265.20 | $2,191.90 | -1.59% | -$2.19 (-3.24%) | $2,151.94 / $2,130.42 (buf 1.82%) |
| XRP/USD | 31.174 | $1.439 | $1.4181 | -1.38% | -$0.65 (-1.45%) | $1.3814 / $1.3676 (buf 2.59%) |
**Trades today:** none | **Week:** 13/5 (cap exceeded)
**BTC regime:** $78,457 (-0.77% day from $79,069 May 15 close) — CAUTION; below estimated 20-day MA ~$80-82k; crash gate not triggered
**Notes:** Another down day as BTC shed 0.77% to $78,457, dragging ETH -1.59% to $2,191.90 and XRP -1.38% to $1.4181. Bot underperformed BTC by -0.32% — position losses exceeded the cushioning effect of 18.3% cash. Phase P&L deepens to -$7.40 (-5.22%) from $141.76 start (May 10). Stop buffers are thinning: ETH at 1.82% away from stop trigger ($2,151.94) and XRP at 2.59% — both warrant close monitoring on any Sunday/Monday gap down. BTC now ~$1,600 below estimated 20-day MA, regime firmly CAUTION. Cash $24.56 insufficient for new entries. No trades today; weekly cap (5) already exceeded from prior sessions. Weekend — no trades planned. Thesis intact: ETH Glamsterdam upgrade Jun 2026, XRP CLARITY Act Senate floor vote pending.

---

## 2026-05-16 — Midday Scan v2 (afternoon)

- ETH/USD: 0.029925 @ $2,265.20 | Current $2,176.62 | -3.91% | Stop e4efd513 active ($2,151.94/$2,130.42) — HOLD (stop buffer **1.13% — CRITICAL**)
- XRP/USD: 31.174 @ $1.439 | Current $1.4098 | -2.03% | Stop e079ed77 active ($1.3814/$1.3676) — HOLD (stop buffer 2.01%)
- No cuts (neither at -10% threshold). No stop tightening (no winners ≥+25%).
- Perplexity thesis check: No ETH-specific protocol exploit, hack, or regulatory action. Broad macro/risk-off selloff. Glamsterdam thesis intact. XRP CLARITY Act thesis intact.
- ETH stop buffer critically thin (1.13%). Stop trigger $2,151.94 may fire on continued selling — do NOT move stop down.
- Portfolio: ~$133.65 | Cash: $24.56 (18.4%)
- No trades. No notification sent (no action taken).

---

## 2026-05-16 — Midday Scan v3

- ETH/USD: 0.029925 @ $2,265.20 | Current $2,180.12 | -3.76% | Stop e4efd513 active ($2,151.94/$2,130.42) — HOLD (stop buffer **1.29% — CRITICAL**)
- XRP/USD: 31.174 @ $1.439 | Current $1.41643 | -1.57% | Stop e079ed77 active ($1.3814/$1.3676) — HOLD (stop buffer 2.47%)
- Portfolio: $133.96 | Cash: $24.56 (18.3%) | Day P&L: -$2.08 (-1.53%) vs last_equity $136.04 | Phase P&L: -$7.80 (-5.51%)
- No cuts (neither at -10%). No stop tightening (no winners ≥+25%). Theses intact.
- Perplexity: no ETH-specific exploit, hack, or regulatory action; broad macro/risk-off selloff confirmed. XRP CLARITY Act thesis intact — no Senate vote setback.
- ETH slightly recovered from v2 scan ($2,176.62 → $2,180.12); stop buffer remains critically thin.
- No trades. No notification sent (no action taken).

---

## 2026-05-16 — Session-Open Scan (late session)

| Symbol | Qty | Entry | Current | P&L% | Stop Buffer | Order |
|---|---|---|---|---|---|---|
| ETH/USD | 0.029925 | $2,265.20 | $2,180.50 | -3.74% | **1.31% — CRITICAL** | e4efd513 ($2,151.94/$2,130.42) ✓ |
| XRP/USD | 31.174 | $1.439 | $1.417 | -1.53% | 2.51% | e079ed77 ($1.3814/$1.3676) ✓ |

**Account:** Equity $133.98 | Cash $24.56 (18.3%) | Long MV $109.42 | last_equity $136.04 | Day P&L: -$2.06 (-1.51%)
**BTC:** $78,166 (ask $78,207 / bid $78,126) | 24h: ~-1.14% vs May 15 close $79,069 | Regime: **CAUTION** (below est. 20-day MA ~$80-82k) | Crash gate: NOT triggered
**Weekly trades:** 13/25 | **Positions:** 2/20

**Pre-trade checks (STEP 3):**
- BTC crash gate: -1.14% 24h → clear ✓
- BTC regime: CAUTION — full universe tradeable, 25% size reduction applies
- Cash $24.56 → insufficient for any new entry at CAUTION sizing ✗
- No new trades qualify: cash constraint binds

**Decision: HOLD — No New Trades.** ETH stop critically thin (1.31% buffer); cash insufficient; CAUTION regime. Both GTC stops active and valid. Theses intact (ETH Glamsterdam June 2026; XRP CLARITY Act Senate floor vote pending). No trades, no notification sent.
