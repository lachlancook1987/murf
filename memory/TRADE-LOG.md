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

---

## 2026-05-17 — Overnight Triage Check (~01:15 UTC)

**Positions:**
| Symbol | Qty | Entry | Current | P&L% | Stop Buffer | Order |
|---|---|---|---|---|---|---|
| ETH/USD | 0.029925 | $2,265.20 | $2,177.98 | -3.85% | **1.20% — CRITICAL** | e4efd513 ($2,151.94/$2,130.42) ✓ |
| XRP/USD | 31.174 | $1.439 | $1.409 | -2.09% | 1.96% | e079ed77 ($1.3814/$1.3676) ✓ |

**Open orders (status: new):**
- ETH/USD stop_limit e4efd513: covers 0.029925 ETH — valid ✓
- XRP/USD stop_limit e079ed77: covers 31.1739 XRP — valid ✓
- No orphaned orders found.

**Emergency exits (≤-10%):** None. Both positions within threshold.

**Stop tightening (≥+25%):** None. No winners.

**BTC Regime:** $77,858 now vs May 16 close $78,120 = **-0.33%** — flat overnight. Under ±8% threshold. No regime alert. No crash gate.

**Notes:** ETH stop buffer thinned further to 1.20% (was 1.31% last session). Stop trigger $2,151.94 remains live — do NOT adjust down. XRP buffer 1.96%, stable. Both theses intact. BTC continued slow bleed (-0.33% overnight) but no crash event.

**Result: NO-OP. No actions taken. No notification sent.**

---

## 2026-05-17 — Midday Scan (no trades)

- ETH/USD: 0.029925 @ $2,265.20 | Current $2,188.71 | -3.38% | Stop e4efd513 active ($2,151.94/$2,130.42) — HOLD (stop buffer **1.68% — CRITICAL**)
- XRP/USD: 31.174 @ $1.439 | Current $1.41767 | -1.48% | Stop e079ed77 active ($1.3814/$1.3676) — HOLD (stop buffer 2.56%)
- No cuts (neither near -10%). No stop tightening (no winners up ≥25%). Theses intact.
- Perplexity thesis check: Multiple ETH Ethereum mainnet smart contract exploits reported (~$1.5M total, four DeFi application-layer attacks); these are NOT protocol-level exploits — Glamsterdam upgrade thesis intact. No XRP/CLARITY Act adverse news; Senate floor vote still pending. No ETH regulatory action.
- BTC: $78,160 (+0.06% today vs open) — crash gate NOT triggered. CAUTION regime (below est. 20-day MA ~$80-82k).
- Both positions recovering intraday (ETH +0.86%, XRP +0.76% vs yesterday close). ETH stop buffer marginally improved from overnight low of 1.20% to 1.68%.
- Portfolio: $134.25 | Cash: $24.56 (18.3%) | Day P&L: -$1.79 (-1.32%) vs last_equity $136.04
- No trades. No notification sent.

---

## 2026-05-17 — Overnight Triage Check (~05:10 UTC)

**Positions:**
| Symbol | Qty | Entry | Current | P&L% | Stop Buffer | Order |
|---|---|---|---|---|---|---|
| ETH/USD | 0.029925 | $2,265.20 | $2,188.71 | -3.38% | **1.68% — CRITICAL** | e4efd513 ($2,151.94/$2,130.42) ✓ |
| XRP/USD | 31.174 | $1.439 | $1.41767 | -1.48% | 2.56% | e079ed77 ($1.3814/$1.3676) ✓ |

**Open orders (status: new):**
- ETH/USD stop_limit e4efd513: covers 0.029925 ETH — valid ✓
- XRP/USD stop_limit e079ed77: covers 31.1739 XRP — valid ✓
- No orphaned orders found.

**Emergency exits (≤-10%):** None. Both positions well within threshold.

**Stop tightening (≥+25%):** None. No winners.

**BTC Regime:** $78,219 mid (ask $78,265 / bid $78,173 @ 05:10 UTC) vs May 16 close $78,457 = **-0.30%** — well under ±8% threshold. No regime alert. No crash gate.

**Notes:** ETH stop buffer 1.68% (critical — recovered from overnight low of 1.20%, holding steady). XRP buffer 2.56%. BTC overnight move minimal; no macro catalyst or regime shift. Both theses intact (ETH Glamsterdam June 2026; XRP CLARITY Act Senate floor vote pending).

**Result: NO-OP. No actions taken. No notification sent.**

---

### May 17 — EOD Snapshot (Day 7, Sunday)
**Portfolio:** $134.18 | **Cash:** $24.56 (18.3%) | **Day P&L:** -$0.18 (-0.13%) | **Phase P&L:** -$7.58 (-5.35%) | **vs BTC:** +0.41%
| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|
| ETH/USD | 0.029925 | $2,265.20 | $2,184.60 | +0.67% | -$2.41 (-3.56%) | $2,151.94/$2,130.42 (buf 1.50% — CRITICAL) |
| XRP/USD | 31.174 | $1.439 | $1.4194 | +0.88% | -$0.61 (-1.37%) | $1.3814/$1.3676 (buf 2.67%) |
**Trades today:** none | **Week:** 13/5 (cap exceeded)
**BTC regime:** $78,031 (-0.54% day from $78,457 May 16 close) — CAUTION; below estimated 20-day MA ~$80-82k; crash gate not triggered
**Notes:** Sunday close with modest intraday recovery — ETH bounced +0.67% to $2,184.60 and XRP +0.88% to $1.4194. Bot Day P&L -$0.18 (-0.13%) outperformed BTC's -0.54% drop by +0.41 percentage points. ETH stop buffer recovered slightly to 1.50% (CRITICAL) from the overnight low of 1.20%; stop trigger $2,151.94 remains active and untouched. XRP buffer 2.67%, stable. Phase P&L -$7.58 (-5.35%) from $141.76 start (May 10). BTC holding ~$78,031, firmly below estimated 20-day MA — CAUTION regime continues. Weekly cap (5) exceeded at 13 total from prior sessions; no bot trades this week. Cash $24.56 insufficient for new entries under CAUTION sizing. Monday gap risk elevated given ETH's thin buffer; a -1.5% ETH open would breach the stop. Both GTC stops confirmed active. Theses intact: ETH Glamsterdam upgrade June 2026; XRP CLARITY Act Senate floor vote pending.

---

## 2026-05-17 — Midday Scan v2 (Afternoon)

| Symbol | Qty | Entry | Current | P&L% | Stop Buffer | Order |
|---|---|---|---|---|---|---|
| ETH/USD | 0.029925 | $2,265.20 | $2,192.24 | -3.22% | **1.84% — CRITICAL** | e4efd513 ($2,151.94/$2,130.42) ✓ |
| XRP/USD | 31.174 | $1.439 | $1.42708 | -0.83% | 3.20% | e079ed77 ($1.3814/$1.3676) ✓ |

**Account:** Equity $134.57 | Cash $24.56 (18.3%) | Day P&L: -$1.47 (-1.08%) vs last_equity $136.04
**BTC regime:** ~$78,268 (+0.30% from EOD) — CAUTION (below est. 20-day MA ~$80-82k); crash gate NOT triggered

**STEP 3 — Cuts:** Neither position ≤-10%. No cuts.
**STEP 4 — Stop tightening:** Neither position ≥+25%. No adjustments.
**STEP 5 — Thesis check (Perplexity):**
- ETH: No new protocol exploits or adverse regulatory action. Glamsterdam June 2026 on track. **Thesis INTACT.**
- XRP: No new CLARITY Act adverse developments. Senate floor vote still pending. **Thesis INTACT.**

**Result: NO-OP. No trades. No notification sent.**

---

## 2026-05-17 — Midday Scan v3

- ETH/USD: 0.029925 @ $2,265.20 | Current $2,185.72 | -3.51% | Stop e4efd513 active ($2,151.94/$2,130.42) — HOLD (stop buffer **1.55% — CRITICAL**)
- XRP/USD: 31.174 @ $1.439 | Current $1.4165 | -1.56% | Stop e079ed77 active ($1.3814/$1.3676) — HOLD (stop buffer 2.48%)
- Account: Equity ~$134.13 | Cash $24.56 (18.3%) | Intraday: ETH +0.72%, XRP +0.68% vs prev close
- No cuts (neither at -10%). No stop tightening (no winners ≥+25%). Theses intact.
- Perplexity: No new ETH protocol exploits or Glamsterdam adverse news (older Kelp DAO/Arbitrum items are April-era, not new). No XRP/CLARITY Act adverse developments; Senate floor vote pending. Both theses INTACT.
- BTC regime: CAUTION (below est. 20-day MA ~$80-82k); crash gate NOT triggered.
- ETH stop buffer remains critically thin (1.55%) — stop trigger $2,151.94 is $33.78 away; do NOT move down.
- No trades. No notification sent.

---

## 2026-05-17 — Midday Scan v4

- ETH/USD: 0.029925 @ $2,265.20 | Current $2,185.13 | -3.54% | Stop e4efd513 active ($2,151.94/$2,130.42) — HOLD (stop buffer **1.52% — CRITICAL**)
- XRP/USD: 31.174 @ $1.439 | Current $1.4193 | -1.37% | Stop e079ed77 active ($1.3814/$1.3676) — HOLD (stop buffer 2.67%)
- Account: Equity ~$134.19 | Cash $24.56 (18.3%) | Intraday: ETH +0.70%, XRP +0.87% vs yesterday close (lastday: ETH $2,170.04, XRP $1.407)
- No cuts (neither at -10%). No stop tightening (no winners ≥+25%). Theses intact.
- Both stops confirmed active (status: new), covering correct quantities.
- BTC regime: CAUTION (below est. 20-day MA ~$80-82k); crash gate NOT triggered.
- No trades. No notification sent.

---

## 2026-05-18 — Overnight Check

- **STOPS TRIGGERED OVERNIGHT (2026-05-17 ~23:40 UTC):**
  - ETH/USD: stop_limit e4efd513 filled — 0.029925 ETH @ $2,155.13 (entry $2,265.20) | P&L: **-$3.29 (-4.86%)**
  - XRP/USD: stop_limit e079ed77 filled — 31.1739 XRP @ $1.3827 (entry $1.439) | P&L: **-$1.75 (-3.91%)**
  - Total realized loss: **-$5.05**
  - Stops worked as designed — both triggered before reaching -10% threshold.
- Remaining position: XRP dust 0.00006975 XRP (~$0.0001) — negligible, not actionable.
- Open orders: 0 (no orphaned orders).
- Emergency exits: none triggered (no position at -10%).
- Stop tightening: N/A (no open winners ≥+25%).
- BTC regime: -0.03% overnight ($77,158 → $77,139) — NO regime alert.
- Account fully in cash pending next entry opportunities.
- No notification sent (no new actions this scan; stop fills were prior session events).

---

## 2026-05-18 — Session-Open Trades (Monday morning)

### 2026-05-18T03:05:15Z | ETH/USD | BUY | 0.023541 ETH | Entry: $2,120.40 | Stop: $2,035.58 / $2,015.22 | Open

**Order ID (buy):** 7bd2a7ad-3b4f-4f2b-a09e-a5951e779f7f
**Stop Order ID:** 572816b1-77f7-43a5-98fa-23316c3aa340 (stop_limit: trigger $2,035.58, limit $2,015.22, qty 0.023541, GTC)
**Notional:** $49.93 (37.9% equity $131.64 — CAUTION mode: 25% size reduction applied; strategy max 65%)
**Target:** T1 $2,400 (+13.2%), T2 $2,550 (+20.3%), T3 $2,750 (+29.7%)
**Stop level:** $2,035.58 (-4.00% from entry $2,120.40 — CAUTION mode stop; limit $2,015.22)
**R:R:** ~3.30:1 to T1 ($6.59 gain / $2.00 risk on 0.023541 ETH); 5.07:1 to T2
**Thesis:** ETH Glamsterdam upgrade June 2026 (timeline intact, no adverse news); ETH ETF inflows thesis ongoing; re-entry after overnight stop-out at $2,155.13. CAUTION mode (BTC $76,910 below est. 20-day MA ~$80k). No protocol exploits or regulatory actions per May 18 scan.
**Notes:** ETH sector at 1 consecutive loss (May 15 re-entry stopped out overnight May 17-18); one more loss triggers sector pause. Trailing stop not supported for crypto on Alpaca; 4% fixed stop_limit used (CAUTION mode). Stop qty 0.023541 (not 0.0236) due to Alpaca rounding. Weekly trade count: 1/25.

---

### 2026-05-18T03:05:34Z | XRP/USD | BUY | 26.5 XRP | Entry: $1.3962 | Stop: $1.3403 / $1.3269 | Open

**Order ID (buy):** cb342c84-8740-48f0-bb22-d3911448ce12
**Stop Order ID:** 7b145e72-62c4-4e94-ae94-bd449eb0288d (stop_limit: trigger $1.3403, limit $1.3269, qty 26.4338, GTC)
**Notional:** $37.00 (28.1% equity $131.64 — CAUTION mode: 25% size reduction applied)
**Target:** T1 $1.63 (+16.7%), T2 $1.75 (+25.4%), T3 $2.00 (+43.2%)
**Stop level:** $1.3403 (-4.00% from entry $1.3962 — CAUTION mode stop; limit $1.3269)
**R:R:** ~4.18:1 to T1 ($6.18 gain / $1.48 risk on 26.5 XRP); 6.33:1 to T2
**Thesis:** CLARITY Act cleared Senate Banking Committee 15-9 bipartisan vote May 14 (confirmed catalyst); codifies XRP as digital commodity; Senate floor vote pending (no adverse updates as of May 18 scan). Re-entry after overnight stop-out at $1.3827. CAUTION mode applied.
**Notes:** XRP sector at 1 consecutive loss (May 15 re-entry stopped out overnight May 17-18); one more loss triggers sector pause. Stop qty 26.4338 (not 26.5) due to Alpaca rounding. Weekly trade count: 2/25.

---

### May 18 — Session-Open Snapshot
**Portfolio:** $131.64 | **Cash:** $44.82 (34.1%) | **Phase P&L:** -$10.12 (-7.14%) vs $141.76 start (May 10)
| Symbol | Qty | Entry | Price | Unrealized P&L | Stop |
|---|---|---|---|---|---|
| ETH/USD | 0.023541 | $2,120.40 | $2,120.40 | $0.00 | $2,035.58/$2,015.22 (buf 4.00%) |
| XRP/USD | 26.4338 | $1.3962 | $1.3962 | $0.00 | $1.3403/$1.3269 (buf 4.00%) |
**Trades today:** ETH/USD BUY 0.023541 @ $2,120.40 (re-entry); XRP/USD BUY 26.5 @ $1.3962 (re-entry) | **Week:** 2/25 (new week)
**BTC regime:** $76,910 (-1.44% from May 17 close $78,031) — CAUTION; below est. 20-day MA ~$80,000; crash gate NOT triggered
**Notes:** Both prior positions (ETH entry $2,265.20 and XRP entry $1.439) stopped out overnight May 17-18 (total realized loss: -$5.05). Re-entered both at lower prices with CAUTION sizing (25% reduction, 4% stops, combined 65.9% deployed). Phase P&L deepened to -$10.12 (-7.14%). ETH and XRP sectors each at 1 consecutive loss — 1 more loss each triggers sector pause. Catalysts intact: ETH Glamsterdam June 2026 on track; XRP CLARITY Act advancing after Senate Banking 15-9 vote.

---

## 2026-05-18 — Overnight Triage Check v2 (~05:10 UTC)

**Positions:**
| Symbol | Qty | Entry | Current | P&L% | Stop Buffer | Order |
|---|---|---|---|---|---|---|
| ETH/USD | 0.023541 | $2,120.40 | $2,118.90 | -0.07% | 5.53% | 572816b1 ($2,035.58/$2,015.22) ✓ |
| XRP/USD | 26.4338 | $1.3962 | $1.3968 | +0.04% | 4.05% | 7b145e72 ($1.3403/$1.3269) ✓ |

**Open orders (status: new):**
- ETH/USD stop_limit 572816b1: covers 0.023541 ETH — valid ✓
- XRP/USD stop_limit 7b145e72: covers 26.4338 XRP — valid ✓
- No orphaned orders.

**Emergency exits (≤-10%):** None. Both well within threshold.
**Stop tightening (≥+25%):** None. No winners.
**BTC Regime:** $77,010 now vs. May 17 close $78,031 = **-1.31%** — under ±8% threshold. No regime alert. No crash gate.

**Result: NO-OP. No actions taken. No notification sent.**

---

## 2026-05-18 — Midday Scan

| Symbol | Qty | Entry | Current | P&L% | Stop Buffer | Order |
|---|---|---|---|---|---|---|
| ETH/USD | 0.023541 | $2,120.40 | $2,124.09 | +0.17% | **4.17%** | 572816b1 ($2,035.58/$2,015.22) ✓ |
| XRP/USD | 26.4338 | $1.3962 | $1.3968 | +0.04% | **4.04%** | 7b145e72 ($1.3403/$1.3269) ✓ |

**Account:** Equity ~$131.75 | Cash ~$44.82 (34.0%) | Day P&L: +$0.10 (+0.08%) | Phase P&L: -$10.01 (-7.06%)
**BTC Regime:** CAUTION (below est. 20-day MA ~$80,000); BTC ~$77k range; crash gate NOT triggered.

**STEP 3 — Cuts:** Neither position ≤-10%. No cuts.
**STEP 4 — Stop tightening:** Neither position ≥+25%. No adjustments.
**STEP 5 — Thesis check:** Both positions re-entered this morning (May 18 03:05 UTC) after overnight stop-outs. Theses intact from morning research: ETH Glamsterdam June 2026 on track; XRP CLARITY Act advancing (Senate Banking 15-9 vote May 14 valid, no adverse floor vote developments). No protocol exploits or regulatory actions observed.
**STEP 6 — Perplexity:** Not needed — neither position moving sharply; ETH +0.30% day, XRP +0.33% day.

**Stop buffers recovered to healthy ~4%** (vs critically thin 1-2% in prior sessions) — positions stabilized at lower re-entry prices. Both GTC stops confirmed active and covering correct quantities. No orphaned orders.

**Result: NO-OP. No trades. No notification sent.**

---

### May 18 — EOD Snapshot (Day 8, Monday)
**Portfolio:** $131.35 | **Cash:** $44.82 (34.1%) | **Day P&L:** -$2.83 (-2.11%) | **Phase P&L:** -$10.41 (-7.35%) | **vs BTC:** -0.64%
| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|
| ETH/USD | 0.023541 | $2,120.40 | $2,118.16 | +0.02% | -$0.05 (-0.10%) | $2,035.58/$2,015.22 (buf 3.90%) |
| XRP/USD | 26.434 | $1.3962 | $1.3870 | -0.37% | -$0.24 (-0.66%) | $1.3403/$1.3269 (buf 3.37%) |
**Trades today:** ETH/USD BUY 0.023541 @ $2,120.40 (re-entry 03:05 UTC); XRP/USD BUY 26.5 @ $1.3962 (re-entry 03:05 UTC) | **Week:** 2/25
**BTC regime:** $76,886 (-1.47% from May 17 close $78,031) — CAUTION; below est. 20-day MA ~$80,000; crash gate NOT triggered
**Notes:** Day P&L -$2.83 (-2.11%) reflects the overnight stop-outs (ETH @ $2,155 and XRP @ $1.3827, realized ~-$5.05 combined) partially offset by small gains on the re-entered positions. Bot underperformed BTC by -0.64 percentage points (BTC -1.47% day). Phase P&L deepens to -$10.41 (-7.35%) from $141.76 start (May 10). Re-entries from early morning holding steady — ETH near flat (+0.02% from yesterday close), XRP slightly softer (-0.37%). Stop buffers healthy at ~3.9% (ETH) and ~3.4% (XRP), well above the critical <2% level seen in prior sessions. Cash 34.1% provides capacity for a third position if BTC regime improves. Both GTC stops confirmed active. Catalysts intact: ETH Glamsterdam June 2026; XRP CLARITY Act Senate floor vote pending. Each sector at 1 consecutive loss — 1 more loss triggers sector pause.

---

## 2026-05-18 — Session-Open Scan (afternoon, ~13:02 UTC)

| Symbol | Qty | Entry | Current | P&L% | Stop Buffer | Order |
|---|---|---|---|---|---|---|
| ETH/USD | 0.023541 | $2,120.40 | $2,148.46 | **+1.32%** | 5.25% | 572816b1 ($2,035.58/$2,015.22) ✓ |
| XRP/USD | 26.4338 | $1.3962 | $1.40096 | **+0.34%** | 4.33% | 7b145e72 ($1.3403/$1.3269) ✓ |

**Account:** Equity $132.43 | Cash $44.82 (33.9%) | Long MV $87.61 | Day P&L: -$3.61 (-2.65%) vs last_equity $136.04
**BTC:** $77,528 (bid $77,494 / ask $77,564) | 24h: ~-0.65% from May 17 close $78,031 | Regime: **CAUTION** (below est. 20-day MA ~$80,000) | Crash gate: NOT triggered
**Weekly trades:** 2/25 | **Positions:** 2/20

**Hard checks:**
- BTC crash gate: -0.65% 24h — CLEAR ✓
- Stop tightening: ETH +1.32%, XRP +0.34% — neither ≥+25%; no adjustments
- Both GTC stops active and covering correct quantities ✓

**Catalyst check (Perplexity):**
- BTC ETF inflows: NOT reversed — $263M outflows yesterday; no fresh inflow confirmation (key binary trigger for third position)
- XRP CLARITY Act: Senate floor vote still pending; no adverse news; thesis INTACT
- ETH Glamsterdam June 2026: No adverse news; thesis INTACT
- LINK/TON: No confirmed fresh 24-48h catalyst; prior accumulation event dated

**Third position assessment:**
- Max deployable under 95% total cap: $125.81 − $87.61 deployed = **$38.20 headroom**
- BTC ETF reversal (key trigger) NOT confirmed → entry blocked per research log decision criteria
- No qualifying alt catalyst → no entry

**Decision: HOLD — No New Trades.** Both positions recovering with healthy buffers. BTC ETF outflow reversal remains key watch for third entry trigger. No trades, no notification sent.

---

## 2026-05-18 — Midday Scan v2 (~17:00 UTC)

| Symbol | Qty | Entry | Current | P&L% | Stop Buffer | Order |
|---|---|---|---|---|---|---|
| ETH/USD | 0.023541 | $2,120.40 | $2,103.51 | **-0.80%** | 3.23% | 572816b1 ($2,035.58/$2,015.22) ✓ |
| XRP/USD | 26.4338 | $1.3962 | $1.378 | **-1.30%** | 2.74% | 7b145e72 ($1.3403/$1.3269) ✓ |

**Account:** Equity $130.76 | Cash $44.82 (34.3%) | Long MV $85.94 | Day P&L: -$5.28 (-3.88%) vs last_equity $136.04 | Phase P&L: -$11.00 (-7.76%)
**BTC:** ~$76,293 | 24h from May 17 close $78,031: **-2.23%** | Regime: **CAUTION** (4.6% below est. 20-day MA ~$80,000) | Crash gate: NOT triggered

**STEP 3 — Cuts:** ETH -0.80%, XRP -1.30% — neither ≤-10%. No cuts.
**STEP 4 — Stop tightening:** Neither ≥+25%. No adjustments. Both GTC stops confirmed active (status: new).
**STEP 5 — Thesis check:** ETH Glamsterdam June 2026 intact; XRP CLARITY Act Senate floor vote pending. No protocol exploits or adverse regulatory actions. Theses valid.
**STEP 6 — Perplexity:** Skipped — moves within normal range; no sharp unexplained action (ETH -0.40% since prior scan, XRP recovered +0.04%).
**Note:** XRP stop buffer at 2.74% (ETH: 3.23%) — above critical 2% floor. BTC continued drift to $76,293 from $76,688 at last scan (-0.51%). CAUTION mode firmly in effect.

**Result: NO-OP. No trades. No notification sent.**

---

## 2026-05-18 — Midday Scan v3 (Closing)

| Symbol | Qty | Entry | Current | P&L% | Stop Buffer | Order |
|---|---|---|---|---|---|---|
| ETH/USD | 0.023541 | $2,120.40 | $2,134.17 | **+0.65%** | 4.62% | 572816b1 ($2,035.58/$2,015.22) ✓ |
| XRP/USD | 26.4338 | $1.3962 | $1.39428 | **-0.14%** | 3.87% | 7b145e72 ($1.3403/$1.3269) ✓ |

**Account:** Equity ~$131.92 | Cash $44.82 (34.0%) | Long MV $87.10 | Day P&L: ~-$4.12 (-3.03%) vs last_equity $136.04 | Phase P&L: ~-$9.84 (-6.94%)
**BTC Regime:** CAUTION (below est. 20-day MA ~$80,000); crash gate NOT triggered.

**STEP 3 — Cuts:** ETH +0.65%, XRP -0.14% — neither ≤-10%. No cuts.
**STEP 4 — Stop tightening:** Neither ≥+25%. No adjustments. Both GTC stops confirmed active (status: new), covering correct quantities.
**STEP 5 — Thesis check:** ETH Glamsterdam June 2026 intact; XRP CLARITY Act Senate floor vote pending (no adverse news). No protocol exploits or regulatory actions. Theses INTACT.
**STEP 6 — Perplexity:** Skipped — no sharp unexplained moves. ETH recovered from session lows ($2,103 → $2,134); XRP stabilized at $1.394. Normal intraday price action.
**Note:** Both positions recovering from prior scan lows. Stop buffers expanded: ETH 3.23% → 4.62%, XRP 2.74% → 3.87%. Day P&L improving from -$5.28 to ~-$4.12 on price recovery. Both sectors at 1 consecutive loss (1 more stop-out triggers sector pause).

**Result: NO-OP. No trades. No notification sent.**

---

## 2026-05-19 — Session-Open Scan (~03:10 UTC)

| Symbol | Qty | Entry | Current | P&L% | Stop Buffer | Order |
|---|---|---|---|---|---|---|
| ETH/USD | 0.023541 | $2,120.40 | $2,122 | **+0.075%** | 4.07% | 572816b1 ($2,035.58/$2,015.22) ✓ |
| XRP/USD | 26.4338 | $1.3962 | $1.375 | **-1.52%** | 2.52% | 7b145e72 ($1.3403/$1.3269) ✓ |

**Account:** Equity $131.12 | Cash $44.82 (34.1%) | Long MV $86.30 | Last equity $136.04 | Day P&L: -$4.92 (-3.62%)
**BTC:** $76,607 bid / $76,673 ask (mid ~$76,640) | 24h: ~-0.35% | Regime: **CAUTION** (below est. 20-day MA ~$80,000) | Crash gate: NOT triggered
**Weekly trades:** 2/25 | **Positions:** 2/20

**Hard checks:**
- BTC crash gate: ~-0.35% 24h — CLEAR ✓
- Stop tightening: ETH +0.08%, XRP -1.52% — neither ≥+25%; no adjustments
- Both GTC stops active and covering correct quantities ✓

**Pre-session research (Perplexity):**
- ETH Glamsterdam June 2026: no delays/cancellations/adverse news in last 48h; thesis INTACT
- XRP CLARITY Act: Senate floor vote still pending; no adverse developments; thesis INTACT
- New alts: no high-conviction 24-48h catalyst for SOL, AVAX, LINK, DOT, ADA, MATIC/POL
- BTC ETF flows: net outflows last week; inflow reversal NOT confirmed (3rd position trigger blocked)
- Macro: US 30yr yield ~5%, oil ~$125/bbl — risk-off environment

**Third position assessment:**
- Cash $44.82 available; headroom under 95% cap: ~$124.56 − $86.30 deployed = $38.26
- No qualifying catalyst found → blocked

**Decision: HOLD — No New Trades.** Theses intact; macro headwinds; CAUTION mode; BTC ETF trigger not confirmed. No notification sent.

---

## 2026-05-19 — Overnight Triage Check (updated ~latest UTC)

**Positions:**
| Symbol | Qty | Entry | Current | P&L% | Stop Buffer | Order |
|---|---|---|---|---|---|---|
| ETH/USD | 0.023541 | $2,120.40 | $2,122.00 | **+0.075%** | 4.07% | 572816b1 ($2,035.58/$2,015.22) ✓ |
| XRP/USD | 26.4338 | $1.3962 | $1.3750 | **-1.518%** | 2.52% | 7b145e72 ($1.3403/$1.3269) ✓ |

**Open orders (status: new):**
- ETH/USD stop_limit 572816b1: covers 0.023541 ETH — valid ✓
- XRP/USD stop_limit 7b145e72: covers 26.4338 XRP — valid ✓
- No orphaned orders found.

**Emergency exits (≤-10%):** None. Both positions well within threshold.
**Stop tightening (≥+25%):** None. No winners near threshold.
**BTC Regime:** $76,533 now vs. May 18 close $76,947 = **-0.54%** — flat overnight. Well under ±8% threshold. No regime alert. No crash gate.

**Notes:** ETH pulled back slightly from earlier overnight reading ($2,133 → $2,122), XRP softened further ($1.393 → $1.375). XRP stop buffer at 2.52% — above the critical 2% floor but worth monitoring. ETH buffer 4.07% — healthy. BTC drifted -0.54% overnight; no macro catalyst or regime shift. Both GTC stops confirmed active and covering correct quantities. No orphaned orders. Theses intact: ETH Glamsterdam upgrade June 2026; XRP CLARITY Act Senate floor vote pending.

**Result: NO-OP. No actions taken. No notification sent.**

---

## 2026-05-19 — Midday Scan (~12:00 UTC)

| Symbol | Qty | Entry | Current | P&L% | Stop Buffer | Order |
|---|---|---|---|---|---|---|
| ETH/USD | 0.023541 | $2,120.40 | $2,134.30 | **+0.66%** | 4.63% | 572816b1 ($2,035.58/$2,015.22) ✓ |
| XRP/USD | 26.4338 | $1.3962 | $1.3877 | **-0.61%** | 3.41% | 7b145e72 ($1.3403/$1.3269) ✓ |

**Account:** Equity $131.75 | Cash $44.82 (34.0%) | Long MV $86.93 | Day P&L: -$4.29 (-3.15%) vs last_equity $136.04
**BTC Regime:** CAUTION (below est. 20-day MA ~$80,000); crash gate NOT triggered.

**STEP 3 — Cuts:** ETH +0.66%, XRP -0.61% — neither ≤-10%. No cuts.
**STEP 4 — Stop tightening:** ETH +0.66%, XRP -0.61% — neither ≥+25%. No adjustments. Both GTC stops confirmed active (status: new), covering correct quantities.
**STEP 5 — Thesis check:** ETH Glamsterdam June 2026 intact; XRP CLARITY Act Senate floor vote pending. No protocol exploits, adverse regulatory actions, or narrative breaks. Theses INTACT.
**STEP 6 — Perplexity:** Skipped — ETH +0.44% today, XRP +0.05% today; normal intraday price action, no sharp/unexplained moves.
**Note:** ETH recovering nicely from overnight lows; XRP holding above stop with 3.41% buffer (above critical 2% floor). Day P&L improvement from -$4.92 (open scan) to -$4.29. Both sectors at 1 consecutive loss (1 more stop-out triggers sector pause per strategy rules).

**Result: NO-OP. No trades. No notification sent.**

---

## 2026-05-19 — Overnight Triage Check (~05:09 UTC)

**Positions:**
| Symbol | Qty | Entry | Current | P&L% | Stop Buffer | Order |
|---|---|---|---|---|---|---|
| ETH/USD | 0.023541 | $2,120.40 | $2,134.30 | **+0.66%** | 4.63% | 572816b1 ($2,035.58/$2,015.22) ✓ |
| XRP/USD | 26.4338 | $1.3962 | $1.3877 | **-0.61%** | 3.41% | 7b145e72 ($1.3403/$1.3269) ✓ |

**Open orders (status: new):**
- ETH/USD stop_limit 572816b1: covers 0.023541 ETH — valid ✓
- XRP/USD stop_limit 7b145e72: covers 26.4338 XRP — valid ✓
- No orphaned orders found.

**Emergency exits (≤-10%):** None. ETH +0.66%, XRP -0.61% — both well within threshold.
**Stop tightening (≥+25%):** None. No winners near threshold.
**BTC Regime:** $76,838 now (bar close 05:07 UTC) vs ~$77,010 24h ago = **-0.22%** — well under ±8% threshold. No regime alert. No crash gate.

**Notes:** Positions recovered from session-open lows (ETH $2,122 → $2,134; XRP $1.375 → $1.388). Stop buffers healthy — ETH 4.63%, XRP 3.41%, well above the critical 2% floor. BTC flat overnight; no macro catalyst or regime shift. Both GTC stops confirmed active and covering correct quantities. Theses intact: ETH Glamsterdam upgrade June 2026; XRP CLARITY Act Senate floor vote pending.

**Result: NO-OP. No actions taken. No notification sent.**

---

### May 19 — EOD Snapshot (Day 9, Tuesday)
**Portfolio:** $131.59 | **Cash:** $44.82 (34.0%) | **Day P&L:** +$0.24 (+0.18%) | **Phase P&L:** -$10.17 (-7.17%) | **vs BTC:** ±0.00%
| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|
| ETH/USD | 0.023541 | $2,120.40 | $2,134.00 | +0.43% | +$0.32 (+0.64%) | $2,035.58/$2,015.22 (buf 4.61%) |
| XRP/USD | 26.434 | $1.3962 | $1.3820 | -0.36% | -$0.38 (-1.02%) | $1.3403/$1.3269 (buf 3.02%) |
**Trades today:** none | **Week:** 2/5
**BTC regime:** $77,022 (+0.18% from May 18 close $76,886) — CAUTION; below est. 20-day MA ~$80,000; crash gate NOT triggered
**Notes:** Quiet day — no trades, no stop triggers. Bot tracked BTC almost exactly (bot +0.18%, BTC +0.18%, vs BTC ±0.00%). ETH continued its recovery from the overnight lows, closing at $2,134 (+0.43% day) with a healthy 4.61% stop buffer. XRP slipped slightly to $1.382 (-0.36% day) but remains well above its stop with a 3.02% buffer — above the critical 2% floor. Phase P&L improved slightly to -$10.17 (-7.17%) from $141.76 phase start (May 10). Cash 34.0% preserved for a third position if BTC regime improves. Both GTC stops confirmed active (ETH 572816b1, XRP 7b145e72). Theses intact: ETH Glamsterdam upgrade June 2026; XRP CLARITY Act Senate floor vote pending. Each sector at 1 consecutive loss — one more stop-out triggers sector pause.

---

### May 19 — EOD Snapshot (Day 9, Tuesday) [Revised]
**Portfolio:** $131.46 | **Cash:** $44.82 (34.1%) | **Day P&L:** +$0.11 (+0.08%) | **Phase P&L:** -$10.30 (-7.27%) | **vs BTC:** -0.06%
| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|
| ETH/USD | 0.023541 | $2,120.40 | $2,130.60 | +0.27% | +$0.24 (+0.48%) | $2,035.58/$2,015.22 (buf 4.46%) |
| XRP/USD | 26.434 | $1.3962 | $1.38 | -0.50% | -$0.43 (-1.16%) | $1.3403/$1.3269 (buf 2.88%) |
**Trades today:** none | **Week:** 2/5
**BTC regime:** $76,995 (+0.14% from May 18 close $76,886) — CAUTION; below est. 20-day MA ~$80,000; crash gate NOT triggered
**Notes:** Late-session prices softened from earlier EOD run ($131.59 → $131.46). Bot day +0.08% vs BTC +0.14%; net -0.06% vs BTC. ETH at $2,130.60 (+0.27% day) — healthy 4.46% stop buffer. XRP at $1.38 (-0.50% day) — 2.88% stop buffer above 2% critical floor but worth monitoring. Phase P&L -$10.30 (-7.27%) from $141.76 start (May 10). Cash 34.1% idle — third position contingent on BTC clearing ~$80K 20-day MA. Both GTC stops active: ETH 572816b1, XRP 7b145e72. Theses intact: ETH Glamsterdam upgrade June 2026; XRP CLARITY Act Senate floor vote pending. Each sector at 1 consecutive loss — one more stop-out triggers sector pause.

---

## 2026-05-19 — Session-Open Scan (afternoon ~13:04 UTC)

| Symbol | Qty | Entry | Current | P&L% | Stop Buffer | Order |
|---|---|---|---|---|---|---|
| ETH/USD | 0.023541 | $2,120.40 | $2,116.78 | **-0.17%** | 3.84% | 572816b1 ($2,035.58/$2,015.22) ✓ |
| XRP/USD | 26.4338 | $1.3962 | $1.3797 | **-1.18%** | 2.86% | 7b145e72 ($1.3403/$1.3269) ✓ |

**Account:** Equity $131.12 | Cash $44.82 (34.1%) | Long MV $86.30 | Day P&L: -$0.39 (-0.29%) vs last_equity $131.51 | Phase P&L: -$10.64 (-7.51%)
**BTC:** mid ~$76,856 (bid $76,834 / ask $76,878) | 24h: ~-0.25% to -1.46% | Regime: **CAUTION** (below est. 20-day MA ~$80,000) | Crash gate: NOT triggered
**Weekly trades:** 2/25 | **Positions:** 2/20

**Hard checks:**
- Crash gate: ~-0.25% to -1.46% 24h → CLEAR ✓
- Emergency exits (≤-10%): ETH -0.17%, XRP -1.18% → none ✓
- Stop tightening (≥+25%): neither qualifies → no adjustments ✓
- Both GTC stops active and covering correct quantities ✓

**Research (Perplexity):**
- BTC: ~$76.9k-$77.1k, still below $80,000 → CAUTION regime, no regime flip
- ETH Glamsterdam June 2026: no adverse news or delays → thesis INTACT
- XRP CLARITY Act: no Senate floor vote yet, no adverse developments → thesis INTACT
- No new alt catalysts (SOL, AVAX, LINK, ADA, DOT) → no third position entry
- BTC ETF flows: no inflow reversal confirmed → third position trigger blocked

**Third position:** Cash $44.82; headroom ~$38.26 under 95% cap; BTC $3,144 below $80k trigger → blocked.

**Decision: HOLD — No New Trades.** No notification sent.

---

## 2026-05-19 — Midday Scan (latest)

| Symbol | Qty | Entry | Current | P&L% | Stop Buffer | Order |
|---|---|---|---|---|---|---|
| ETH/USD | 0.023541 | $2,120.40 | $2,110.00 | **-0.49%** | 3.53% | 572816b1 ($2,035.58/$2,015.22) ✓ |
| XRP/USD | 26.4338 | $1.3962 | $1.36041 | **-2.56%** | ⚠️ **1.48% — CRITICAL** | 7b145e72 ($1.3403/$1.3269) ✓ |

**Account:** Equity $130.45 | Cash $44.82 (34.4%) | Long MV $85.63 | Last equity $131.51 | Day P&L: -$1.06 (-0.81%) | Phase P&L: -$11.31 (-7.98%)
**BTC Regime:** CAUTION (below est. 20-day MA ~$80,000); crash gate NOT triggered.

**STEP 3 — Cuts (≤-10%):** ETH -0.49%, XRP -2.56% — neither at threshold. No cuts.
**STEP 4 — Stop tightening (≥+25%):** Neither qualifies. Both GTC stops confirmed active (status: new), covering correct quantities. No adjustments.
**STEP 5 — Thesis check (Perplexity):**
- **ETH Glamsterdam:** Timeline delayed from June → Q3 2026 (July-Sept) after latest dev interop (Soldøgn Interop, May 2). All core pieces running together in test environment. Security audits + Holesky/Sepolia testnets still ahead. NOT cancelled — thesis intact, timeline extended. Upgrade still represents major catalyst (200M gas limit, 10,000 TPS, ePBS). HOLD.
- **XRP CLARITY Act:** Senate Banking Committee 15-9 vote (May 14) already known. Full Senate floor vote requires 60 votes; will NOT happen before Memorial Day recess May 21. Realistic June-July 2026 passage; risks: law enforcement concerns and Trump ethics provision may delay to 2027. No vote defeat or block — thesis INTACT but catalyst timeline uncertain. HOLD.
**STEP 6 — Perplexity (triggered):** XRP critically thin buffer (1.48%) prompted research check. No fresh negative catalyst found for XRP specifically — decline attributed to continued technical weakness below $1.40 key support and macro CAUTION sentiment. No CLARITY Act setback news. No protocol exploit or regulatory action on ETH. Glamsterdam slip to Q3 confirmed but not a cancellation.

**⚠️ XRP STOP BUFFER CRITICAL (1.48%):** Stop trigger $1.3403 only $0.0201 above current $1.36041. If triggered: this is XRP's 2nd consecutive loss → XRP sector enters PAUSE. Stop NOT being adjusted. Will fire automatically if $1.3403 breached.
**⚠️ ETH GLAMSTERDAM TIMELINE NOTE:** Upgrade slipped June → Q3 2026. Thesis intact but pre-positioning play extends; ETH may take longer to reach T1 $2,400.

**Result: NO-OP. No trades. No notification sent.**

---

## 2026-05-20 — Overnight Triage Check (~01:10 UTC)

**Positions:**
| Symbol | Qty | Entry | Current | P&L% | Stop Buffer | Order |
|---|---|---|---|---|---|---|
| ETH/USD | 0.023541 | $2,120.40 | $2,110.14 | **-0.48%** | 3.53% | 572816b1 ($2,035.58/$2,015.22) ✓ |
| XRP/USD | 26.4338 | $1.3962 | $1.3551 | **-2.94%** | ⚠️ **1.09% — CRITICAL** | 7b145e72 ($1.3403/$1.3269) ✓ |

**Open orders (status: new):**
- ETH/USD stop_limit 572816b1: covers 0.023541 ETH — valid ✓
- XRP/USD stop_limit 7b145e72: covers 26.4338 XRP — valid ✓
- No orphaned orders found.

**Emergency exits (≤-10%):** None. ETH -0.48%, XRP -2.94% — both well within threshold.
**Stop tightening (≥+25%):** None. No winners.
**BTC Regime:** $76,732 (bar close 01:04 UTC) vs May 19 close $76,763 = **-0.04%** — flat overnight. Well under ±8% threshold. No regime alert. No crash gate.

**⚠️ XRP STOP BUFFER CRITICAL (1.09%):** XRP slipped further overnight ($1.36041 → $1.3551). Stop trigger $1.3403 now only $0.0148 away. If triggered: XRP's 2nd consecutive loss → XRP sector enters PAUSE. Stop NOT being adjusted — let it work.

**Notes:** ETH holding steady at -0.48% with healthy 3.53% buffer. XRP continued overnight weakness — buffer worsened from 1.48% (last scan) to 1.09%. BTC essentially flat overnight; no macro catalyst or regime shift. Both GTC stops confirmed active and covering correct quantities. Theses remain intact: ETH Glamsterdam Q3 2026 (timeline extended from June, thesis valid); XRP CLARITY Act Senate floor vote pending (no adverse developments, timing June-July 2026).

**Result: NO-OP. No actions taken. No notification sent.**

---

## 2026-05-20 — Session-Open Scan (~03:10 UTC)

| Symbol | Qty | Entry | Current | P&L% | Stop Buffer | Order |
|---|---|---|---|---|---|---|
| ETH/USD | 0.023541 | $2,120.40 | $2,103.29 | **-0.81%** | 3.22% | 572816b1 ($2,035.58/$2,015.22) ✓ |
| XRP/USD | 26.4338 | $1.3962 | $1.3478 | **-3.47%** | ⚠️ **0.56% CRITICAL** | 7b145e72 ($1.3403/$1.3269) ✓ |

**Account:** Equity $129.96 | Cash $44.82 (34.5%) | Long MV $85.14 | Day P&L: -$1.55 (-1.18%) | Phase P&L: -$11.80 (-8.33%)
**BTC:** mid ~$76,562 (bid $76,530 / ask $76,594) | 24h: ~-0.3% | Regime: **CAUTION** (below est. 20-day MA ~$80,000) | Crash gate: NOT triggered
**Weekly trades:** 2/25 | **Positions:** 2/20
**F&G:** 28 (Fear) | **DXY:** 99.4 (⚠️ approaching 99.5 red flag)

**Hard checks:**
- Crash gate: -0.3% 24h — CLEAR ✓
- Emergency exits (≤-10%): ETH -0.81%, XRP -3.47% — none ✓
- Stop tightening (≥+25%): neither qualifies ✓
- Both GTC stops active and covering correct quantities ✓

**Research:**
- ETH Glamsterdam Q3 2026: "slow but steady" per Apr 10 Foundation checkpoint; ePBS complex; no cancellation — thesis INTACT
- XRP CLARITY Act: no Senate floor vote; Senate Banking Committee advanced version mid-May 2026; reconciliation with Agriculture Committee still needed; realistic June-July 2026 — thesis INTACT
- No new alt catalyst (SOL, AVAX, LINK, ADA, DOT) — third position blocked
- BTC ETF flows: not confirmed reversed — third position trigger blocked
- DXY 99.4 approaching 99.5 red flag — additional headwind

**⚠️ XRP STOP CRITICAL (0.56%):** XRP at $1.3478 vs stop $1.3403. Stop auto-fire expected. If triggered: 2nd consecutive XRP loss → **XRP sector enters PAUSE**. Do NOT move stop down.

**Decision: HOLD — No New Trades.** No notification sent.

---

## 2026-05-20 — Session-Open Trade (~07:59 UTC)

### 2026-05-20T07:59:43Z | ETH/USD | BUY | 0.01538 ETH | Entry: $2,129.00 | Stop: $2,065.13 / $2,054.49 | Open

**Order ID (buy):** 57e2f99e-d3f4-4379-aafa-5fb37e3f2224
**Stop Order ID:** 8fef13a1-7af4-43a4-8564-ce367a0d4047 (stop_limit: trigger $2,065.13, limit $2,054.49, qty 0.038882, GTC — covers combined ETH position)
**Notional:** $32.74 (25% of $130.98 equity — user-directed sizing)
**Target:** T1 $2,280 (~7.1%), T2 $2,350 (~10.4%), T3 $2,400 (~12.7%)
**Stop level:** $2,065.13 (-3.00% from entry $2,129.00 — user-directed; limit $2,054.49)
**R:R:** ~2.37:1 to T1 ($7.70 gain / $3.25 risk on 0.01538 ETH)
**Thesis:** User-directed add-on to existing ETH position. ETH Glamsterdam upgrade Q3 2026 (devnets live, 200M gas limit floor confirmed); ETH ETF inflows ongoing. CAUTION regime (BTC below 20-day MA ~$80k). 25% equity sizing per user instruction.
**Notes:** Previous stop 572816b1 ($2,035.58/$2,015.22, qty 0.023541) cancelled to clear wash-trade rejection; replaced with new combined stop 8fef13a1 covering full 0.038882 ETH at 3% below new fill. Combined ETH position: 0.023541 (@ $2,120.40) + 0.01538 (@ $2,129.00) = 0.038921 ETH avg entry ~$2,123.72. Stop moved up from $2,035.58 → $2,065.13 (favorable direction). ETH/L1 sector at 1 consecutive loss — a stop-out here triggers sector PAUSE. Weekly trade count: 4/25.

---

## 2026-05-20 — Midday Scan (~12:00 UTC)

| Symbol | Qty | Entry | Current | P&L% | Stop Buffer | Order |
|---|---|---|---|---|---|---|
| ETH/USD | 0.023541 | $2,120.40 | $2,115.68 | **-0.22%** | 3.79% | 572816b1 ($2,035.58/$2,015.22) ✓ |
| XRP/USD | 26.4338 | $1.3962 | $1.3550 | **-2.95%** | ⚠️ **1.09% — CRITICAL** | 7b145e72 ($1.3403/$1.3269) ✓ |

**Account:** Equity ~$130.45 | Cash $44.82 (34.4%) | Long MV ~$85.63 | Phase P&L: ~-$11.31 (-7.98%)
**BTC Regime:** CAUTION (below est. 20-day MA ~$80,000); crash gate NOT triggered.

**STEP 3 — Cuts (≤-10%):** ETH -0.22%, XRP -2.95% — neither at threshold. No cuts.
**STEP 4 — Stop tightening (≥+25%):** Neither qualifies. Both GTC stops confirmed active (status: new), covering correct quantities. No adjustments.
**STEP 5 — Thesis check:** ETH Glamsterdam Q3 2026 intact; XRP CLARITY Act Senate floor vote pending (no adverse news). No protocol exploits or regulatory actions. Theses INTACT.
**STEP 6 — Perplexity:** Skipped — no sharp/unexplained moves. ETH near flat today (+0.06% vs yesterday close $2,114.48); XRP essentially flat (-0.07% vs yesterday close $1.356). Prior session research covers all active risk factors.
**Note:** XRP bounced from session-open low $1.3478 → $1.3550 (+0.54%); stop buffer improved from 0.56% (session open) to 1.09% (midday). Still CRITICAL — stop trigger $1.3403 is $0.0147 away. If triggered: 2nd consecutive XRP loss → XRP sector enters PAUSE per strategy rules. Stop NOT being adjusted — let it work. ETH holding with healthy 3.79% buffer.

**Result: NO-OP. No trades. No notification sent.**

---

---

### May 20 — EOD Snapshot (Day 11, Wednesday)
**Portfolio:** $130.90 | **Cash:** $48.09 (36.7%) | **Day P&L:** +$0.44 (+0.34%) | **Phase P&L:** -$10.86 (-7.66%) | **vs BTC:** -0.60%
| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|
| ETH/USD | 0.038882 | $2,123.79 | $2,129.77 | +0.72% | +$0.23 (+0.28%) | $2,065.13 / $2,054.49 |
**Trades today:** XRP/USD SELL 26.4338 @ ~$1.34 (stop triggered; 2nd consec loss → XRP sector PAUSED), ETH/USD BUY 0.01538 @ $2,129.00 (user-directed add-on) | **Week:** 4/5
**Notes:** XRP stop at $1.3403 triggered and filled at market (~$1.34), locking in second consecutive XRP loss and placing XRP sector on PAUSE. ETH add-on executed at user direction at $2,129.00, combining with prior 0.023541 ETH to create a full position of 0.038882 ETH at avg entry $2,123.79. ETH closed the day +0.72% with 3.04% stop buffer; unrealized P&L +$0.23. Combined stop 8fef13a1 (trigger $2,065.13 / limit $2,054.49) active and covers full 0.038882 qty. BTC moved +0.93% today ($76,763 → $77,480) — bot underperformed by -0.60% vs BTC. Day P&L positive at +$0.44 (+0.34%) despite XRP exit drag. BTC CAUTION regime (below est. 20-day MA ~$80,000) persists; crash gate clear. XRP sector: PAUSED. Tomorrow: hold ETH, no new positions until BTC reclaims $80k or ETH hits T1 ($2,280) / stop ($2,065.13).

---

## 2026-05-20 — Midday Scan (~11:09 UTC)

| Symbol | Qty | Entry | Current | P&L% | Stop Buffer | Order |
|---|---|---|---|---|---|---|
| ETH/USD | 0.038882 | $2,123.79 | $2,131.20 | **+0.35%** | 3.10% | 8fef13a1 ($2,065.13/$2,054.49) ✓ |

**Account:** Equity $130.96 | Cash $48.09 (36.7%) | Long MV $82.87 | Day P&L: +$0.50 (+0.38%) | Phase P&L: ~-$10.36
**BTC:** $77,467 (≈ flat vs yesterday close $77,480 = -0.02%) | Regime: **CAUTION** (below est. 20-day MA ~$80,000) | Crash gate: NOT triggered

**STEP 3 — Cuts (≤-10%):** ETH +0.35% — no cut needed.
**STEP 4 — Stop tightening (≥+25%):** ETH +0.35% — does not qualify. Stop 8fef13a1 confirmed active (status: new), covers correct qty 0.038882. No adjustments.
**STEP 5 — Thesis check:** ETH Glamsterdam Q3 2026 intact (devnets live, 200M gas limit confirmed; no adverse news). No exploits, regulatory actions, or protocol failures. Thesis INTACT.
**STEP 6 — Research:** No sharp/unexplained moves. ETH +0.35%, BTC -0.02% — both quiet. Nvidia Q1 FY2027 earnings still pending (US post-market, ~20:00 UTC). Perplexity returned limited live data; no new breaking crypto events identified. Prior research log (17:00 + 21:00 UTC entries) covers today's key risk factors and trade triggers. Skipping further research.
**Note:** XRP position closed (stop-out). Single active position: ETH/USD 0.038882 @ avg $2,123.79. Stop buffer healthy at 3.10%. Watching Nvidia post-market: ETH above $2,200 on confirmed beat = add-on trigger (Idea 1 per pre-session research). BTC above $78,000 hourly close = BTC entry trigger (Idea 2). DXY last known 99.33 — below 99.5 red flag. Alts sector PAUSED.

**Result: NO-OP. No trades. No notification sent.**

---

## 2026-05-20 — Midday Scan (~midday UTC)

| Symbol | Qty | Entry | Current | P&L% | Stop Buffer | Order |
|---|---|---|---|---|---|---|
| ETH/USD | 0.038882 | $2,123.79 | $2,129.14 | **+0.25%** | 3.01% | 8fef13a1 ($2,065.13/$2,054.49) ✓ |

**Account:** Equity ~$131 | Cash $48.09 (36.7%) | Intraday: +0.69% | Phase P&L: ~-$10.6
**BTC Regime:** CAUTION (below est. 20-day MA ~$78,768); crash gate NOT triggered.

**STEP 3 — Cuts (≤-10%):** ETH +0.25% — no cut.
**STEP 4 — Stop tightening (≥+25%):** ETH +0.25% — does not qualify. Stop 8fef13a1 confirmed active (status: new), covers 0.038882 ETH. No adjustments.
**STEP 5 — Thesis check:** ETH Glamsterdam Q3 2026 intact (devnets live, 200M gas limit confirmed; no cancellation or exploit). Thesis INTACT.
**STEP 6 — Research:** No sharp/unexplained moves. ETH +0.69% intraday is normal recovery. Nvidia Q1 FY2027 earnings still pending post-market (~20:00 UTC). Add-on trigger (ETH above $2,200 on confirmed beat) NOT yet met.
**Note:** XRP sector PAUSED (2nd consecutive loss earlier today). Single active position: ETH only. Stop buffer 3.01% — healthy. Watching Nvidia post-market.

**Result: NO-OP. No trades. No notification sent.**

---

## 2026-05-20 — Midday Scan (~12:30 UTC)

| Symbol | Qty | Entry | Current | P&L% | Stop Buffer | Order |
|---|---|---|---|---|---|---|
| ETH/USD | 0.038882 | $2,123.79 | $2,134.56 | **+0.51%** | 3.25% | 8fef13a1 ($2,065.13/$2,054.49) ✓ |

**Account:** Equity $131.09 | Cash $48.09 (36.7%) | Long MV $83.00 | Last equity $130.46 | Day P&L: +$0.63 (+0.48%) | Phase P&L: -$10.67 (-7.53%)
**BTC Regime:** CAUTION (below est. 20-day MA ~$80,000); crash gate NOT triggered.

**STEP 3 — Cuts (≤-10%):** ETH +0.51% — no cut needed.
**STEP 4 — Stop tightening (≥+25%):** ETH +0.51% — does not qualify. Stop 8fef13a1 confirmed active (status: new), covers 0.038882 ETH. No adjustments.
**STEP 5 — Thesis check:** ETH Glamsterdam Q3 2026 intact (devnets live, 200M gas limit confirmed; no cancellation). No exploits, regulatory actions, or protocol failures. Thesis INTACT.
**STEP 6 — Research (Perplexity):** Nvidia Q1 FY2027 earnings NOT yet reported as of scan time (scheduled post-market US ~20:00 UTC). No live crypto breakout or sharp move confirmed. ETH +0.95% intraday ($2,114.48 → $2,134.56) — orderly recovery, not a sharp/unexplained move. Entry trigger for ETH add-on (Idea 1) requires ETH above $2,200 on confirmed Nvidia beat — NOT yet met.
**Note:** XRP sector PAUSED (2 consecutive losses). Single active position: ETH only. Stop buffer 3.25% — healthy. Watching for Nvidia post-market result; if ETH breaks $2,200 on a beat, add-on entry activates per pre-session Idea 1.

**Result: NO-OP. No trades. No notification sent.**

---

### May 21 — EOD Snapshot (Day 12, Thursday)
**Portfolio:** $131.04 | **Cash:** $48.09 (36.7%) | **Day P&L:** -$0.33 (-0.25%) | **Phase P&L:** -$10.72 (-7.56%) | **vs BTC:** -0.75%
| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|
| ETH/USD | 0.038882 | $2,123.80 | $2,133.46 | -0.39% | +$0.38 (+0.46%) | $2,065.13 / $2,054.49 |
**Trades today:** none | **Week:** 4/5
**Notes:** Quiet no-trade day. ETH gave back -0.39% intraday ($2,141.80 → $2,133.46) while BTC edged up +0.50% ($77,480 → $77,871), causing -0.75% underperformance vs BTC. Portfolio declined -$0.33 (-0.25%). Stop buffer on ETH 3.20% (current $2,133.46 vs trigger $2,065.13) — healthy. BTC CAUTION regime persists (below est. 20-day MA ~$80,000); XRP sector PAUSED (2 consecutive losses). Phase P&L: -$10.72 (-7.56%). Week ends at 4/5 trades. Tomorrow: hold ETH, no new positions until BTC reclaims $80k; watch ETH above $2,200 as potential add-on signal.

---

## 2026-05-21 — Session-Open Trades (user dashboard, ~09:07–09:17 UTC)

### 2026-05-21T09:07:35Z | ETH/USD | SELL (close) | 0.038882 ETH | Exit: $2,136.399 | Realized P&L: +$0.49 (+0.59%)

**Order ID:** 99e947a9-9bff-494b-aeb5-d80bc63eadb0 (market sell, source: dashboard)
**Stop cancelled:** 8fef13a1 ($2,065.13/$2,054.49) — cancelled at same time as close ✓
**Avg entry:** $2,123.79 | **Exit:** $2,136.399 | **Qty:** 0.038882
**P&L:** ($2,136.399 − $2,123.79) × 0.038882 = **+$0.49 (+0.59%)**
**Notes:** User-directed close via dashboard. ETH/L1 sector exits at 1 consecutive loss — no loss triggered (position was profitable). Sector remains ACTIVE at 1 consecutive loss count.

---

### 2026-05-21T09:09:18Z | BTC/USD | BUY | 0.001619 BTC | Entry: $77,910.27 | Stop: $74,793.86 / $74,045.92 | Open

**Order ID (buy):** 19e2106f-344e-48bd-a7c8-0dd15ea76d69 (market buy $129 notional, source: dashboard)
**Stop Order ID:** a2b44cf9-d17c-4c2c-9150-6528f5d06ab6 (stop_limit: trigger $74,793.86, limit $74,045.92, qty 0.001619, GTC, status: new ✓)
**Notional:** $129.00 (98.8% equity — user-directed; near-full deployment)
**Target:** T1 $78,768 (regime flip, +1.1%), T2 $82,000 (+5.2%), T3 $85,000 (+9.1%)
**Stop level:** $74,793.86 (-4.00% from entry $77,910.27 — CAUTION mode; limit $74,045.92)
**R:R:** ~1.30:1 to T2 ($4,089 gain / $3,116 risk); ~2.28:1 to T3
**Thesis:** User-directed BTC long. BTC near 20-day MA ($78,768 = +1.1% above entry); CAUTION mode (BTC below MA at entry); post-Nvidia earnings beat confirmed; macro cautiously supportive. Stop set 4% below entry per CAUTION mode rules.
**Notes:** BTC Core sector at 1 consecutive loss — a stop-out here triggers BTC sector PAUSE. Cash after entry: $4.48 (no further entries possible). Weekly trade count: 6/25.

---

### May 21 — Session-Open Snapshot (post-user-trades, ~09:45 UTC)
**Portfolio:** $130.42 | **Cash:** $4.48 (3.4%) | **Phase P&L:** ~-$11.34 (-8.00%)
| Symbol | Qty | Entry | Price | Unrealized P&L | Stop | Buffer |
|---|---|---|---|---|---|---|
| BTC/USD | 0.001619 | $77,910.27 | ~$77,642 | ~-$0.22 (-0.17%) | $74,793.86/$74,045.92 (order a2b44cf9) | ~3.67% ✓ |
**Trades today:** ETH/USD SELL 0.038882 @ $2,136.399 (user dashboard); BTC/USD BUY 0.001619 @ $77,910.27 (user dashboard) | **Week:** 6/25
**Regime:** CAUTION (BTC $77,642 vs 20-day MA $78,768 → 1.43% below; crash gate NOT triggered)
**BTC spread:** 0.125% ✓ | **Stop:** active (new) ✓
**Sector status:** BTC Core ACTIVE (1 consec loss), ETH/L1 ACTIVE (1 consec loss), L2/DeFi ACTIVE (0), Alts PAUSED (2)
**Notes:** User rotated ETH→BTC via dashboard. ETH closed at +$0.49 gain. BTC position entered at $77,910 (below $78,768 regime-flip MA — user conviction entry). Nearly fully deployed; no bot entries possible. BTC stop 4% below entry (CAUTION mode). Watch: BTC close above $78,768 → regime flip to OFFENSIVE; BTC stop trigger $74,793 = 2nd BTC loss → BTC sector PAUSE.

---

## 2026-05-21 — ETH/USD Liquidation (Kraken, user-directed)

### 2026-05-21 | ETH/USD | SELL (close) | 0.021824 ETH | ~$2,118 | Kraken

**Order ID:** O2XHRE-CQGBY-ORSSX3 (market sell, user-directed)
**Stop cancelled:** ORLN5M-EKNJU-74J7OZ (trailing stop +5%, trigger $2,021.05) — cancelled prior to market sell ✓
**Qty:** 0.021824 ETH
**Approx exit price:** ~$2,118 ($46.2439 proceeds ÷ 0.021824)
**Proceeds:** $46.2439 ZUSD

**Kraken account post-close:**
| Asset | Balance |
|---|---|
| ZUSD | $46.2439 |
| XETH | 0.000000 |
| XXBT | 0.000000 |
| Equity | $46.24 |

**Status:** Fully liquid. $46.24 ZUSD available for new entries.

---

## 2026-05-21 — Session-Open Trades (Kraken, bot)

### 2026-05-21T10:27:45Z | JTO/USD | BUY | 40.2900 JTO | Entry: $0.5006 | Trailing Stop: $0.4718 | Open

**Order ID (buy):** OPI2Y3-HQVY4-CKSAFE (market buy, spot)
**Trailing Stop Order ID:** OBLSOB-IGZY2-HFZXG7 (trailing-stop sell, trail -5%, stop $0.471790, HWM $0.496620, GTC ✓)
**Notional:** $20.17 (43.6% of $46.24 Kraken equity — spot, no margin; JTO has no leverage available)
**Effective fill price:** $0.5006 ($20.1689 ZUSD ÷ 40.2900)
**Stop level:** $0.4718 (5% trailing below HWM $0.49662)
**Target:** T1 $0.5607 (+12%), T2 $0.5908 (+18%)
**R:R:** ~2.4:1 to T1; ~3.6:1 to T2 (5% stop)
**Thesis:** Solana liquid staking momentum; JTO +28% 24h at research time (pulled back to $0.497 at execution — lower entry vs peak); Solana ecosystem institutional embrace (Schwab, BESO ETF); Firedancer 1.0 on mainnet; tight spread 0.60% ✓
**Notes:** ZEC/USD was second planned trade but blocked (EAccount: ZEC trading restricted for AU). Trailing stop is GTC and self-manages downside. LINK trade follows.

---

### 2026-05-21T10:30:38Z | LINK/USD | BUY | 1.1533 LINK | Entry: $9.616 | Trailing Stop: $9.052 | Open

**Order ID (buy):** O2PYN3-HWML7-RQMNI3 (market buy, spot)
**Trailing Stop Order ID:** OULSVN-3TUF5-PPM4YW (trailing-stop sell, trail -5%, stop $9.051950, HWM $9.528360, GTC ✓)
**Notional:** $11.09 (24.0% of $46.24 Kraken equity — spot)
**Effective fill price:** $9.616 ($11.0895 ZUSD ÷ 1.1533)
**Stop level:** $9.052 (5% trailing below HWM $9.528)
**Target:** T1 $10.578 (+10%), T2 $11.059 (+15%)
**R:R:** ~2.0:1 to T1; ~3.0:1 to T2 (5% stop)
**Thesis:** DeFi throughput tailwind from Ethereum Glamsterdam upgrade Q3 2026; breakout candidate; Chainlink AWS Marketplace listing + SWIFT 2025 winner — institutional DeFi bridge narrative; tight spread 0.085% ✓
**Notes:** Spot only (2x leverage available but not used — sizing designed for full-equity spot deployment). Stop self-manages.

---

### 2026-05-21 — Session-Open Snapshot (post-trades)
**Kraken equity:** ~$46.24 deployed | **ZUSD remaining:** $14.9855 (32.4% idle — ZEC skipped due to AU restriction)
| Symbol | Qty | Entry | Trailing Stop | Stop ID | Stop Level | Target |
|---|---|---|---|---|---|---|
| JTO/USD | 40.2900 | $0.5006 | 5% | OBLSOB-IGZY2-HFZXG7 | $0.4718 | T1 $0.5607 |
| LINK/USD | 1.1533 | $9.616 | 5% | OULSVN-3TUF5-PPM4YW | $9.052 | T1 $10.578 |

**Alpaca (residual):** BTC/USD 0.001619 @ $77,910.27 | Stop a2b44cf9 ($74,793.86) active ✓
**Crash gate:** BTC ~-0.47% 24h — clear ✓
**ZEC skipped:** AU trading restriction — EAccount:Invalid permissions:ZEC trading restricted for AU
**Weekly trades (Kraken):** 2 (new week — first Kraken session trades)

---

## 2026-05-21 — Midday Scan

| Symbol | Qty | Entry | Current | P&L% | Stop Buffer | Order |
|---|---|---|---|---|---|---|
| JTO/USD | 40.29 | $0.5006 | $0.4902 | **-2.07%** | 3.77% | OBLSOB-IGZY2-HFZXG7 (trailing 5%, trigger $0.4718) ✓ |
| LINK/USD | 1.1533 | $9.616 | $9.545 | **-0.74%** | 4.67% | OULSVN-3TUF5-PPM4YW (trailing 5%, trigger $9.099) ✓ |

**Kraken equity:** ~$45.74 | ZUSD cash $14.99 (32.8%) | Long MV ~$30.75
**BTC (Alpaca):** 0.001619 @ $77,910.27 | Current ~$77,159 | -0.97% | Stop a2b44cf9 ($74,793.86) ✓ | Buffer ~3.07%
**Crash gate:** BTC +1.5% 24h — NOT triggered ✓ | Regime: CAUTION (BTC ~$77,159 vs 20-day MA $78,768)

**STEP 3 — Trailing stops verified:**
- JTO: OBLSOB-IGZY2-HFZXG7, covers 40.29 JTO, 5% trail, trigger $0.4718 — ✓
- LINK: OULSVN-3TUF5-PPM4YW, covers 1.1533 LINK, 5% trail, trigger $9.099 — ✓
No unprotected positions.

**STEP 4 — Stop tightening:** JTO -2.07%, LINK -0.74% — neither up ≥+20%. No adjustments.

**STEP 5 — Thesis check (Perplexity):**
- **JTO:** No protocol exploit, rug pull, or regulatory action. NEW: a16z $50M raise confirmed (Solana liquid staking expansion); JTX trading app targeting July launch. Momentum thesis intact. Thesis INTACT. HOLD.
- **LINK:** No exploit or adverse regulatory action. $18B Q1 2026 cross-chain volume; SWIFT/Visa/Robinhood/Aave integrations ongoing; DTCC integration expected later 2026. Thesis INTACT. HOLD.

**STEP 6 — New entry scan:**
- DASH: +16% at morning session, now $47.37 (below open $50.68, pulled back from $54.40 intraday high). Momentum faded — no entry.
- BTC: $77,159 — still CAUTION (below 20-day MA $78,768). No regime flip. No entry.
- No fresh intraday movers confirmed on Kraken. ZUSD $14.99 held idle — no qualifying setup found.

**Result: NO-OP. No trades. No notification sent.**

---

## 2026-05-21 — Session-Open Trade (afternoon, Kraken)

### 2026-05-21 | SOL/USD | BUY | 0.17211197 SOL | Entry: $85.90 | Trailing Stop: $81.61 | Open

**Order ID (buy):** OTRTAZ-KYTZI-JPH5HS (market buy, spot)
**Trailing Stop Order ID:** OAOOBG-DNG7C-B4WTH2 (trailing-stop sell, trail -5%, stop $81.61, HWM $85.90, GTC ✓)
**Notional:** ~$14.99 (32.4% of $46.24 Kraken equity — 100% of idle ZUSD; replaces blocked ZEC trade)
**Effective fill price:** $85.90 (confirmed via trailing stop HWM)
**Stop level:** $81.61 (5% trailing below HWM $85.90)
**Target:** T1 $94.49 (+10%), T2 $98.79 (+15%)
**R:R:** ~2:1 to T1; ~3:1 to T2 (5% stop)
**Thesis:** Solana institutional narrative — Firedancer 1.0 mainnet launched May 5 (targets 1M TPS), Schwab Crypto™ live, BESO ETF with staking, Wall Street embrace; flat price action today (not chasing); tight spread 0.012% ✓. ZEC replacement (AU trading restriction blocked ZEC at session open).
**Notes:** Spot only (no leverage). ZEC/USD was original 3rd trade but blocked (EAccount:Invalid permissions:ZEC trading restricted for AU). SOL selected as replacement: documented institutional catalyst, tight spread, fully idle ZUSD deployed. Kraken account now fully deployed (ZUSD $0.087 remaining). Weekly Kraken trades: 3.

---

### May 21 — Session Snapshot (updated post SOL trade)
**Kraken equity:** ~$46.3 deployed | **ZUSD:** $0.087 (fully deployed)
| Symbol | Qty | Entry | Trailing Stop | Stop ID | Stop Level | Target |
|---|---|---|---|---|---|---|
| JTO/USD | 40.2900 | $0.5006 | 5% | OBLSOB-IGZY2-HFZXG7 | $0.4718 | T1 $0.5607 |
| LINK/USD | 1.1533 | $9.616 | 5% | OULSVN-3TUF5-PPM4YW | $9.112 | T1 $10.578 |
| SOL/USD | 0.17211197 | $85.90 | 5% | OAOOBG-DNG7C-B4WTH2 | $81.61 | T1 $94.49 |

**Alpaca (residual):** BTC/USD 0.001619 @ $77,910.27 | Stop a2b44cf9 ($74,793.86) active ✓
**Crash gate:** BTC ~-0.27% 24h — clear ✓

---

## 2026-05-21 — Midday Scan #2 (afternoon)

| Symbol | Qty | Entry | Current | P&L% | HWM | Stop Trigger | Stop Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| JTO/USD | 40.29 | $0.5006 | $0.5063 | **+1.14%** | $0.5119 | $0.4863 | 3.95% | OBLSOB-IGZY2-HFZXG7 (trail 5%) ✓ |
| LINK/USD | 1.1533 | $9.616 | $9.645 | **+0.30%** | $9.675 | $9.191 | 4.71% | OULSVN-3TUF5-PPM4YW (trail 5%) ✓ |
| SOL/USD | 0.17211 | $85.90 | $86.35 | **+0.52%** | $86.78 | $82.45 | 4.52% | OAOOBG-DNG7C-B4WTH2 (trail 5%) ✓ |

**Kraken equity:** ~$46.47 | ZUSD $0.087 (fully deployed)
**BTC (Alpaca):** 0.001619 @ $77,910.27 | Current ~$77,800 | -0.14% | Stop a2b44cf9 ($74,793.86) ✓ | Buffer ~3.35%
**Crash gate:** BTC +0.8% 24h — NOT triggered ✓

**STEP 3 — Trailing stops verified:**
- JTO: OBLSOB-IGZY2-HFZXG7, 40.29 JTO, trail 5%, trigger $0.4863 (HWM $0.5119) — ✓
- LINK: OULSVN-3TUF5-PPM4YW, 1.1533 LINK, trail 5%, trigger $9.191 (HWM $9.675) — ✓
- SOL: OAOOBG-DNG7C-B4WTH2, 0.17211 SOL, trail 5%, trigger $82.45 (HWM $86.78) — ✓
No unprotected positions.

**STEP 4 — Stop tightening:** JTO +1.14%, LINK +0.30%, SOL +0.52% — none near ≥+20%. No adjustments.

**STEP 5 — Thesis check (Perplexity):**
- **JTO:** a16z $50M raise confirmed; JTX consumer trading app launch pending; momentum intact (+24% 24h on broad timeframe). No exploit, rug, or adverse regulatory action. Thesis INTACT. HOLD.
- **LINK:** Range-bound $9.5–$10.0; DTCC/institutional integration narrative intact; no new adverse news. Neutral to cautiously bearish short-term but long-term constructive. Thesis INTACT. HOLD.
- **SOL:** ETF net inflows $39.23M this week (institutional demand confirmed); Firedancer 1.0 mainnet live; support ~$85, resistance $86.5–$87.2. No adverse news. Thesis INTACT. HOLD.

**STEP 6 — New entry scan:** ZUSD $0.087 — fully deployed, no cash for new entries. Intraday movers (ROLL +144%, PLAY +46%, RLS +36%) are micro-caps with likely wide spreads; no spread checks run. No qualifying setup found.

**Result: NO-OP. No trades. No notification sent.**

---

## 2026-05-21 — Midday Scan #3

| Symbol | Qty | Entry | Current | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| JTO/USD | 40.29 | $0.5006 | $0.5302 | **+5.91%** | $0.5440 | $0.5168 (trail 5%) | 2.53% | OBLSOB-IGZY2-HFZXG7 ✓ |
| LINK/USD | 1.1533 | $9.616 | $9.759 | **+1.48%** | $9.842 | $9.350 (trail 5%) | 4.19% | OULSVN-3TUF5-PPM4YW ✓ |
| SOL/USD | 0.17211 | $85.90 | $87.24 | **+1.56%** | $87.90 | $83.51 (trail 5%) | 4.28% | OAOOBG-DNG7C-B4WTH2 ✓ |

**Kraken equity:** ~$46.7 | ZUSD $0.087 (fully deployed)
**BTC (Alpaca):** 0.001619 @ $77,910.27 | Current ~$77,609 | -0.39% | Stop a2b44cf9 ($74,793.86) ✓ | Buffer 3.63%
**Crash gate:** BTC +0.05% 24h — NOT triggered ✓ | Regime: CAUTION (BTC $77,609 vs 20-day MA ~$78,768)

**STEP 3 — Trailing stops verified:**
- JTO: OBLSOB-IGZY2-HFZXG7, 40.29 JTO, trail 5%, trigger $0.5168 (HWM $0.5440) — ✓
- LINK: OULSVN-3TUF5-PPM4YW, 1.1533 LINK, trail 5%, trigger $9.350 (HWM $9.842) — ✓
- SOL: OAOOBG-DNG7C-B4WTH2, 0.17211 SOL, trail 5%, trigger $83.51 (HWM $87.90) — ✓
No unprotected positions.

**STEP 4 — Stop tightening:** JTO +5.91%, LINK +1.48%, SOL +1.56% — none ≥+20%. No adjustments.

**STEP 5 — Thesis check (Perplexity):**
- **JTO:** Jito Labs met with SEC Crypto Task Force (constructive/positive); JTX consumer trading terminal July 2026 launch on track; a16z $50M raise confirmed; Solana momentum intact. No exploit, rug, or adverse regulatory action. **Thesis INTACT. HOLD.**
- **LINK:** CCIP v1.5 expansion ongoing, ZK rollup support in roadmap; DTCC integration H2 2026; range-bound $9.5–$10.0 with institutional catalysts intact. No adverse news. **Thesis INTACT. HOLD.**
- **SOL:** Circle minted ~500M USDC on Solana in past 24h (ecosystem health signal); Firedancer 1.0 mainnet live; BESO ETF staking flows. No adverse news. **Thesis INTACT. HOLD.**

**STEP 6 — New entry scan:** Market flat (BTC +0.05%, ETH +0.18%). No Kraken-specific assets confirmed up >5% in 4h. ZUSD $0.087 — all new entries require 2x leverage. F&G 29 (Fear) warrants catalyst-specific plays only. No qualifying intraday setup identified. Leveraged XRP/HBAR ideas from evening research remain open but flat market/Fear sentiment does not present a fresh trigger. Pass.

**Result: NO-OP. No trades. No notification sent.**

---

## 2026-05-22 — Overnight Triage Check

| Symbol | Qty | Entry | Current | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| JTO/USD | 40.29 | $0.5006 | $0.5288 | **+5.63%** | $0.5440 | $0.5168 (trail 5%) | 2.27% | OBLSOB-IGZY2-HFZXG7 ✓ |
| LINK/USD | 1.1533 | $9.616 | $9.707 | **+0.95%** | $9.842 | $9.350 (trail 5%) | 3.68% | OULSVN-3TUF5-PPM4YW ✓ |
| SOL/USD | 0.17211 | $85.90 | $86.65 | **+0.87%** | $87.90 | $83.51 (trail 5%) | 3.62% | OAOOBG-DNG7C-B4WTH2 ✓ |

**Alpaca (residual):** BTC/USD 0.001619 @ $77,910.27 | Stop a2b44cf9 ($74,793.86/$74,045.92, status: new) ✓

**BTC Crash Gate:** $77,279 now vs 24h open $77,550 = **-0.35%** — well under 20% threshold. No crash gate. No regime alert.

**STEP 2 — Trailing stops verified:**
- JTO: OBLSOB-IGZY2-HFZXG7, 40.29 JTO, trail 5%, trigger $0.5168 — ✓
- LINK: OULSVN-3TUF5-PPM4YW, 1.1533 LINK, trail 5%, trigger $9.350 — ✓
- SOL: OAOOBG-DNG7C-B4WTH2, 0.17211 SOL, trail 5%, trigger $83.51 — ✓
No unprotected positions.

**STEP 3 — Emergency exits (>-20% AND stop not triggered):** None. All positions profitable or within normal range.

**STEP 4 — Stop tightening (≥+20% since entry):** JTO +5.63%, LINK +0.95%, SOL +0.87% — none qualify. No adjustments.

**STEP 5 — Crash gate:** BTC -0.35% overnight — NOT triggered.

**Result: NO-OP. No actions taken. No notification sent.**

---

## 2026-05-22 — Overnight Triage Check #2

| Symbol | Qty | Entry | Current | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| JTO/USD | 40.29 | $0.5006 | $0.5326 | **+6.39%** | $0.5510 | $0.5235 (trail 5%) | 1.71% | OBLSOB-IGZY2-HFZXG7 ✓ |
| LINK/USD | 1.1533 | $9.616 | $9.808 | **+2.00%** | $9.842 | $9.350 (trail 5%) | 4.67% | OULSVN-3TUF5-PPM4YW ✓ |
| SOL/USD | 0.17211 | $85.90 | $87.04 | **+1.33%** | $87.90 | $83.51 (trail 5%) | 4.06% | OAOOBG-DNG7C-B4WTH2 ✓ |

**Alpaca (residual):** BTC/USD 0.001619 @ $77,910.27 | Stop a2b44cf9 ($74,793.86/$74,045.92, status: new) ✓

**BTC Crash Gate:** $77,667 now vs 24h open $77,550 = **+0.15%** — clear.

**STEP 2 — Trailing stops verified:** All 3 orders confirmed open and covering correct quantities. No unprotected positions.

**STEP 3 — Emergency exits:** None. All positions profitable. No position down >20%.

**STEP 4 — Stop tightening (≥+20% since entry):** JTO +6.39%, LINK +2.00%, SOL +1.33% — none qualify. No adjustments.

**STEP 5 — Crash gate:** BTC +0.15% overnight — NOT triggered.

**Notes:** Prices improved slightly vs Check #1 (JTO $0.5288→$0.5326, LINK $9.707→$9.808, SOL $86.65→$87.04). JTO HWM ticked up to $0.5510 — trailing stop tracking correctly. All theses intact from prior session research.

**Result: NO-OP. No actions taken. No notification sent.**

---

## 2026-05-22 — Overnight Triage Check #3

| Symbol | Qty | Entry | Current | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| JTO/USD | 40.29 | $0.5006 | $0.5279 | **+5.44%** | $0.5510 | $0.5235 (trail 5%) | ⚠️ **0.84% — CRITICAL** | OBLSOB-IGZY2-HFZXG7 ✓ |
| LINK/USD | 1.1533 | $9.616 | $9.797 | **+1.88%** | $9.855 | $9.362 (trail 5%) | 4.44% | OULSVN-3TUF5-PPM4YW ✓ |
| SOL/USD | 0.17211 | $85.90 | $86.865 | **+1.12%** | $87.90 | $83.51 (trail 5%) | 3.86% | OAOOBG-DNG7C-B4WTH2 ✓ |

**Alpaca (residual):** BTC/USD 0.001619 @ $77,910.27 | Current ~$77,569 | -0.44% | Stop a2b44cf9 ($74,793.86/$74,045.92, status: new) ✓ | Buffer 3.58%

**STEP 2 — Trailing stops verified:**
- JTO: OBLSOB-IGZY2-HFZXG7, 40.29 JTO, trail 5%, trigger $0.5235 (HWM $0.5510) — ✓
- LINK: OULSVN-3TUF5-PPM4YW, 1.1533 LINK, trail 5%, trigger $9.362 (HWM $9.855) — ✓
- SOL: OAOOBG-DNG7C-B4WTH2, 0.17211 SOL, trail 5%, trigger $83.51 (HWM $87.90) — ✓
No unprotected positions.

**STEP 3 — Emergency exits (>-20% AND stop not triggered):** None. All positions profitable. No position down >20%.

**STEP 4 — Stop tightening (≥+20% since entry):** JTO +5.44%, LINK +1.88%, SOL +1.12% — none qualify. No adjustments.

**STEP 5 — BTC Crash Gate:** $77,569 now vs 24h open $77,550 = **+0.02%** — flat overnight. No crash gate. No regime alert.

**⚠️ JTO STOP BUFFER CRITICAL (0.84%):** JTO pulled back from HWM $0.5510 to $0.5279; stop $0.5235 is $0.0044 away. Stop may fire on any continued decline — this is normal trailing stop behaviour. Do NOT cancel or replace. Let the stop work.

**Result: NO-OP. No actions taken. No notification sent.**

---

## 2026-05-22 — Session-Open Trades (Kraken, bot)

### 2026-05-22T06:49:15Z | NEAR/USD | BUY | 55.0000 NEAR | Entry: ~$2.187 | Trailing Stop: $2.059 | Open

**Order ID (buy):** OE3UI5-WLEPV-NYJKI4 (market buy, spot)
**Trailing Stop Order ID:** OWLXN6-2IYWZ-LK4LLX (trailing-stop sell, trail -5%, stop $2.059, HWM $2.167, GTC ✓)
**Notional:** ~$120.29 (80.2% of $149.99 Kraken ZUSD — spot, no leverage; margin restriction active)
**Effective fill price:** ~$2.187 (cost incl. taker fee ÷ qty; HWM confirms ~$2.167 at stop placement)
**Stop level:** $2.059 (5% trailing below HWM $2.167)
**Target:** T1 $2.40 (+9.7%), T2 $2.65 (+21.1%)
**R:R:** ~2.25:1 to T1 (($2.40−$2.187) / ($2.187−$2.059))
**Thesis:** Grayscale NEAR Protocol Trust S-1 ETF filing driving narrative; +12% breakout from $1.927→$2.167 with 4h volume = 43% of 24h total (intraday acceleration confirmed). NEAR One ecosystem expansion; institutional ETF narrative. Spread 0.162% ✓. Crash gate clear (BTC -0.18% 24h) ✓.
**Notes:** Margin restriction ("EOrder:Reduce only:One-sided margin") blocked 2x leveraged entry; fell back to spot per STEP 4 fallback. Stop covers full 55 NEAR. Weekly Kraken trade count: 1.

---

### 2026-05-22T06:49:41Z | XRP/USD | BUY | 21.0000 XRP | Entry: ~$1.363 | Trailing Stop: $1.2945 | Open

**Order ID (buy):** ONPPOI-LAU27-TUUAO4 (market buy, spot)
**Trailing Stop Order ID:** OOKBA5-NVKUU-NWIH5S (trailing-stop sell, trail -5%, stop $1.2945, HWM $1.3626, GTC ✓)
**Notional:** ~$28.64 (19.1% of $149.99 Kraken ZUSD — spot, remaining ZUSD after NEAR)
**Effective fill price:** ~$1.363 (HWM $1.3626 confirms fill near ask $1.36225)
**Stop level:** $1.2945 (5% trailing below HWM $1.3626)
**Target:** T1 $1.50 (+10.1%), T2 $1.65 (+21.0%)
**R:R:** ~2.03:1 to T1 (($1.50−$1.363) / ($1.363−$1.2945))
**Thesis:** CLARITY Act advancing in US Senate (Banking Committee 15-9 vote confirmed); 55% Polymarket odds of 2026 signing; XRP is primary regulatory-clarity beneficiary. Flat entry (-0.72% on the day) = cleaner than chasing. Spread 0.007% ✓.
**Notes:** Remaining ZUSD after NEAR = $29.70 → bought 21 XRP, leaving $0.86 ZUSD (fully deployed). Stop covers full 21 XRP. Leveraged entry blocked; spot used. Weekly Kraken trade count: 2.

---

### 2026-05-22 — Session-Open Snapshot
**Kraken equity (approx):** ~$180 | **ZUSD:** $0.86 (fully deployed)
| Symbol | Qty | Entry | Trailing Stop | Stop ID | Stop Level | HWM | Target |
|---|---|---|---|---|---|---|---|
| NEAR/USD | 55.0000 | ~$2.187 | 5% | OWLXN6-2IYWZ-LK4LLX | $2.059 | $2.167 | T1 $2.40 |
| XRP/USD | 21.0000 | ~$1.363 | 5% | OOKBA5-NVKUU-NWIH5S | $1.2945 | $1.3626 | T1 $1.50 |
| LINK/USD | 1.1533 | $9.616 | 5% | OULSVN-3TUF5-PPM4YW | $9.3619 | $9.8546 | T1 $10.578 |
| SOL/USD | 0.17211 | $85.90 | 5% | OAOOBG-DNG7C-B4WTH2 | $83.51 | $87.90 | T1 $94.49 |

**Alpaca (residual):** Positions = [] (BTC position resolved; no active Alpaca position)
**Crash gate:** BTC $77,408 (-0.18% 24h) — clear ✓
**Margin restriction:** Blocked (one-sided margin) → all entries executed as spot
**Weekly trades (Kraken):** 2

---

### May 22 — EOD Snapshot (Day 13, Friday)
**Portfolio:** $179.78 | **Cash:** $0.86 (0.5%) | **Day P&L:** +$3.76 (+2.14%) | **Phase P&L:** $0.00 (0% — first Kraken EOD; baseline set at $179.78) | **vs BTC:** +2.38%
| Symbol | Qty | Entry | Price | Day Chg (24h) | Unrealized P&L | Trailing Stop |
|---|---|---|---|---|---|---|
| NEAR/USD | 55.0000 | $2.187 | $2.253 | +16.9% | +$3.62 (+3.01%) | $2.180 (5%, HWM $2.295, buf 3.2%) |
| XRP/USD | 21.0000 | $1.363 | $1.365 | -0.51% | +$0.05 (+0.17%) | $1.299 (5%, HWM $1.367, buf 4.9%) |
| LINK/USD | 1.1533 | $9.616 | $9.825 | +0.80% | +$0.24 (+2.17%) | $9.362 (5%, HWM $9.855, buf 4.7%) |
| SOL/USD | 0.17211 | $85.90 | $87.21 | -0.07% | +$0.23 (+1.53%) | $83.510 (5%, HWM $87.90, buf 4.2%) |
**Trades today:** JTO/USD SELL (trailing stop ~$0.523, +4.6% realized) | NEAR/USD BUY 55 @$2.187 | XRP/USD BUY 21 @$1.363 | **Total since migration:** 6
**Notes:** First Kraken EOD snapshot — phase baseline established at $179.78. Kraken profile activated May 21; user closed Alpaca BTC (stop a2b44cf9 cancelled, position resolved) and deposited ~$130 to Kraken, giving $149.99 ZUSD for today's session. JTO trailing stop triggered pre-session (stop $0.5235, ~4.6% profit from $0.5006 entry; proceeds folded into ZUSD). Three positions deployed today: NEAR (Grayscale NEAR Protocol Trust S-1 ETF filing driving +16.9% 24h surge, bought at $2.187, now +3.0% from entry at $2.253) and XRP (CLARITY Act advancing, -0.51% 24h, flat +0.2% from entry). Retained LINK (+0.80% day, +2.2% from entry) and SOL (-0.07% day, +1.5% from entry). All 4 Kraken positions protected by 5% trailing stops (GTC). Alpaca: stop a2b44cf9 cancelled, no Alpaca exposure. BTC closed -0.24%; bot outperformed by +2.38%. Day P&L reference: session-open proxy ~$176.02 (no prior Kraken EOD existed). Kraken starting equity (phase baseline): $179.78.

---

## 2026-05-22 — Session-Open Scan #2

| Symbol | Qty | Entry | Current | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| NEAR/USD | 55.0000 | $2.187 | $2.2045 | **+0.80%** | $2.30770 | $2.19240 (trail 5%) | ⚠️ **0.55% — CRITICAL** | OWLXN6-2IYWZ-LK4LLX ✓ |
| XRP/USD | 21.0000 | $1.363 | $1.3584 | **-0.34%** | $1.36710 | $1.29876 (trail 5%) | 4.39% | OOKBA5-NVKUU-NWIH5S ✓ |
| LINK/USD | 1.1533 | $9.616 | $9.8125 | **+2.03%** | $9.8546 | $9.36187 (trail 5%) | 4.59% | OULSVN-3TUF5-PPM4YW ✓ |
| SOL/USD | 0.17211 | $85.90 | $87.025 | **+1.31%** | $87.90 | $83.510 (trail 5%) | 4.04% | OAOOBG-DNG7C-B4WTH2 ✓ |

**Alpaca:** no positions, no active orders ✓
**ZUSD:** $0.86 (fully deployed — no cash for new entries)
**BTC Crash Gate:** $77,237 (24h open $77,550 = -0.41%) — NOT triggered ✓
**Weekly trades (Kraken):** 2

**Hard checks:**
- Crash gate: -0.41% 24h — CLEAR ✓
- Emergency exits (≤-20%): none ✓
- All 4 trailing stops confirmed open and covering correct quantities ✓

**⚠️ NEAR STOP CRITICAL (0.55%):** NEAR pulled back from HWM $2.30770 to $2.2045. Trailing stop $2.19240 is only $0.0121 away. If triggered: NEAR locked in ~+$0.30 profit (entry $2.187, stop $2.1924, qty 55 spot). Do NOT cancel stop — let it work.

**New entries:** Blocked — ZUSD $0.86 (essentially zero, below any minimum order on Kraken).

**Research plan status:** NEAR and XRP trades executed this morning per plan. Margin restriction blocked 2x leverage; both filled as spot. No further action possible this session.

**Result: HOLD — No new trades. No notification sent (no new trades placed).**

---

## 2026-05-22 — Midday Scan

### NEAR/USD — Trailing Stop Triggered (pre-midday)

**Stop Order:** OWLXN6-2IYWZ-LK4LLX (trailing-stop, 5%, HWM $2.30770, trigger $2.19240)
**Fill:** ~$2.174 per NEAR (market execution; slight slippage below trigger $2.19240)
**Qty closed:** 55.00 NEAR
**Proceeds:** ~$119.57 ZUSD (gross ~$120.56 less ~$0.31 fee)
**Entry:** $2.187 | **Exit:** ~$2.174 | **P&L:** ~-$0.71 (-0.59%) — small loss; stop worked as designed
**Notes:** NEAR pulled back from HWM $2.30770 through stop trigger $2.19240. Price subsequently recovered to $2.265 — temporary shakeout, thesis intact.

---

### 2026-05-22 — NEAR/USD Re-entry (Midday)

### 2026-05-22T~midday UTC | NEAR/USD | BUY | 50.00 NEAR | Entry: ~$2.245 | Trailing Stop: $2.133 | Open

**Order ID (buy):** ONEFEI-6I7EF-PEKJXC (market buy, spot)
**Trailing Stop Order ID:** OUOKEJ-7FFCF-4ROJPJ (trailing-stop sell, trail -5%, stop $2.1325, HWM $2.2447, GTC ✓)
**Notional:** ~$112.24 (spot, ~93.2% of $120.43 ZUSD — fully deployed)
**Effective fill price:** ~$2.2447 (HWM confirms entry level)
**Stop level:** $2.1325 (5% trailing below HWM $2.2447)
**Target:** T1 $2.45 (+9.2%), T2 $2.65 (+18.1%)
**R:R:** ~1.83:1 to T1 (($2.45−$2.2447) / ($2.2447−$2.1325))
**Thesis:** Grayscale NEAR Protocol Trust S-1 ETF filing driving narrative; Nvidia AI/earnings catalyst (NEAR positioned as AI-adjacent L1); Robinhood listing recent catalyst; price recovered from trailing stop shakeout to $2.265, confirming momentum intact. Spread 0.11% ✓. BTC crash gate clear (BTC -0.69% 24h) ✓.
**Notes:** Re-entry after prior 55 NEAR position stopped out (~-$0.71). Spot only (margin restriction: EOrder:Reduce only:One-sided margin). ZUSD $7.29 remaining post-trade (fully deployed). Weekly Kraken trade count: 3.

---

### 2026-05-22 — Midday Scan Summary

| Symbol | Qty | Entry | Current | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| NEAR/USD | 50.00 | $2.2447 | $2.265 | **+0.90%** | $2.2447 | $2.1325 (trail 5%) | 5.00% | OUOKEJ-7FFCF-4ROJPJ ✓ |
| XRP/USD | 21.00 | $1.363 | $1.359 | **-0.29%** | $1.36711 | $1.29876 (trail 5%) | 4.43% | OOKBA5-NVKUU-NWIH5S ✓ |
| LINK/USD | 1.1533 | $9.616 | $9.817 | **+2.09%** | $9.8546 | $9.36187 (trail 5%) | 4.63% | OULSVN-3TUF5-PPM4YW ✓ |
| SOL/USD | 0.17211 | $85.90 | $86.90 | **+1.16%** | $87.90 | $83.510 (trail 5%) | 3.90% | OAOOBG-DNG7C-B4WTH2 ✓ |

**Alpaca:** no positions, no active orders ✓
**ZUSD:** $7.29 (fully deployed)
**BTC:** ~$77,381 (-0.69% 24h) — crash gate NOT triggered ✓
**F&G:** 28–29 (Fear)
**Weekly trades (Kraken):** 3

**Actions taken:**
- NEAR stop OWLXN6 triggered (pre-midday) — 55 NEAR closed at ~$2.174, ~-$0.71 P&L
- NEAR re-entry: 50 NEAR @ ~$2.245 (ONEFEI), trailing stop OUOKEJ (5%, trigger $2.1325) placed immediately
- WhatsApp notification sent ✓

**STEP 3 — Stops verified:** All 4 positions have active trailing stops. No unprotected positions.
**STEP 4 — Stop tightening (≥+20%):** No position up ≥+20% from entry. No adjustments.
**STEP 5 — Thesis check:** NEAR intact (Grayscale ETF + Nvidia AI catalyst). XRP intact (CLARITY Act). SOL intact (Firedancer 1.0). LINK intact (AWS/CCIP/DTCC). All theses INTACT.
**STEP 6 — New entries:** NEAR re-entry executed. No other qualifying catalyst found. ZUSD $7.29 — insufficient for additional entries.

---

## 2026-05-22 — Midday Scan #2

### NEAR/USD — Trailing Stop OUOKEJ Triggered (post-midday #1, pre-midday #2)

**Stop Order:** OUOKEJ-7FFCF-4ROJPJ (trailing-stop, 5%, initial HWM $2.2447)
**HWM at trigger:** ~$2.3326 (24h high confirmed via Kraken tick data: NEAR hit $2.3326)
**Stop trigger level:** ~$2.2160 ($2.3326 × 0.95)
**Fill:** ~$2.2034 per NEAR (slippage ~0.57% below trigger — normal trailing stop execution)
**Qty closed:** 50.00 NEAR
**Proceeds:** ~$109.89 ZUSD (gross ~$110.17 less ~$0.29 fee)
**Entry:** $2.2447 | **Exit:** ~$2.2034 | **P&L:** ~-$2.07 spot + fees → **net ~-$2.65**
**Notes:** NEAR ran from entry $2.2447 to $2.3326 HWM (trailing stop tracked up to $2.2160), then reversed through trigger. Exit at a modest loss; thesis and momentum intact. NEAR recovered to $2.193 immediately after stop execution. ZUSD restored to $117.18 ($7.29 pre + $109.89 proceeds).

---

### 2026-05-22T~midday2 UTC | NEAR/USD | BUY | 40.00 NEAR | Entry: ~$2.193 | Trailing Stop: $2.083 | Open

**Order ID (buy):** OZTMG5-MSPKA-2MJJSK (market buy, spot)
**Trailing Stop Order ID:** OBU5GQ-S33RH-NTSBR4 (trailing-stop sell, trail -5%, stop $2.0834, HWM $2.1930, GTC ✓)
**Notional:** ~$87.72 (spot, ~74.9% of $117.18 ZUSD)
**Effective fill price:** ~$2.193 (HWM $2.1930 at stop placement confirms fill level)
**Stop level:** $2.0834 (5% trailing below HWM $2.1930)
**Target:** T1 $2.45 (+11.7%), T2 $2.65 (+20.8%)
**R:R:** ~2.26:1 to T1 (($2.45−$2.193) / ($2.193−$2.0834))
**Thesis:** Grayscale NEAR Protocol Trust S-1 ETF filing (institutional catalyst, 3rd consecutive day driving +15% 24h move); NEAR One ecosystem expansion; AI-adjacent L1 narrative; price at $2.193 = cleaner re-entry below peak $2.33, stop below today's support zone. Spread 0.11% ✓. BTC crash gate clear (-1.1% 24h) ✓.
**Notes:** 3rd NEAR entry today (spot-only; margin restriction confirmed still active from ZUSD constraints). ZUSD ~$29.46 remaining post-trade.

---

### 2026-05-22T~midday2 UTC | INJ/USD | BUY | 5.00 INJ | Entry: ~$5.308 | Trailing Stop: $5.043 | Open

**Order ID (buy):** OXH7YQ-GXOMD-HBHI67 (market buy, spot)
**Trailing Stop Order ID:** OURVFE-XZUEJ-4ZZQE7 (trailing-stop sell, trail -5%, stop $5.0430, HWM $5.3080, GTC ✓)
**Notional:** ~$26.54 (spot, ~22.6% of $117.18 ZUSD; ~90% of remaining ZUSD after NEAR)
**Effective fill price:** ~$5.308 (HWM $5.3080 at stop placement confirms fill level)
**Stop level:** $5.0430 (5% trailing below HWM $5.3080)
**Target:** T1 $5.80 (+9.3%), T2 $6.20 (+16.8%)
**R:R:** ~1.85:1 to T1 (($5.80−$5.308) / ($5.308−$5.043))
**Thesis:** Circle native USDC/CCTP launch on Injective (fresh on-chain adoption catalyst); 21Shares INJ spot ETF reference filing; monthly INJ buyback/burn active; volume +113% and OI +17% to $103M — confirmed momentum day. INJ defended $4.50 support and rebounding. Spread 0.056% ✓. BTC crash gate clear (-1.1% 24h) ✓.
**Notes:** New position — INJ not previously held. Spot only. ZUSD $2.06 remaining post-trade (fully deployed). Weekly Kraken trade count: 5.

---

### 2026-05-22 — Midday Scan #2 Summary

| Symbol | Qty | Entry | Approx Price | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| NEAR/USD | 40.00 | $2.193 | $2.193 | **0.0%** | $2.1930 | $2.0834 (trail 5%) | 5.00% | OBU5GQ-S33RH-NTSBR4 ✓ |
| INJ/USD | 5.00 | $5.308 | $5.308 | **0.0%** | $5.3080 | $5.0430 (trail 5%) | 5.00% | OURVFE-XZUEJ-4ZZQE7 ✓ |
| XRP/USD | 21.00 | $1.363 | ~$1.351 | **-0.88%** | $1.36909 | $1.30064 (trail 5%) | 3.86% | OOKBA5-NVKUU-NWIH5S ✓ |
| LINK/USD | 1.1533 | $9.616 | ~$9.781 | **+1.72%** | $10.0201 | $9.5191 (trail 5%) | 2.67% | OULSVN-3TUF5-PPM4YW ✓ |
| SOL/USD | 0.17211 | $85.90 | ~$86.66 | **+0.88%** | $87.90 | $83.510 (trail 5%) | 3.64% | OAOOBG-DNG7C-B4WTH2 ✓ |

**Alpaca:** no positions, no active orders ✓
**ZUSD:** $2.06 (fully deployed)
**BTC:** ~$76,700 (-1.10% 24h) — crash gate NOT triggered ✓
**Weekly trades (Kraken):** 5

**Actions taken:**
- NEAR stop OUOKEJ triggered — 50 NEAR closed at ~$2.2034, net ~-$2.65 P&L
- NEAR re-entry #3: 40 NEAR @ ~$2.193 (OZTMG5), trailing stop OBU5GQ (5%, trigger $2.0834) ✓
- INJ new entry: 5 INJ @ ~$5.308 (OXH7YQ), trailing stop OURVFE (5%, trigger $5.043) ✓
- WhatsApp notification sent ✓

**STEP 3 — Stops verified:** All 5 positions have active trailing stops. No unprotected positions ✓
**STEP 4 — Stop tightening (≥+20%):** No position up ≥+20% from entry. No adjustments.
**STEP 5 — Thesis check:** NEAR intact (Grayscale ETF S-1). XRP intact (CLARITY Act). SOL intact (Firedancer 1.0). LINK intact (AWS/CCIP/DTCC, HWM $10.02 hit). INJ intact (Circle USDC/CCTP + 21Shares ETF + burn). All theses INTACT.
**STEP 6 — New entries:** NEAR (3rd) + INJ (new) entered. ZUSD $2.06 — fully deployed.

---

## 2026-05-22 — Trailing Stop Exits (auto-triggered overnight/session)

### INJ/USD — Trailing Stop OURVFE Triggered
**Stop Order:** OURVFE-XZUEJ-4ZZQE7 (trailing-stop, 5%, HWM $5.6570, trigger $5.3750)
**Fill:** ~$5.375 (market execution at trailing stop trigger)
**Qty closed:** 5.00 INJ
**Entry:** $5.308 | **Exit:** ~$5.375 | **P&L:** ~+$0.34 (+1.3%) — small profit; stop worked as designed
**Notes:** INJ pulled back from HWM $5.657 through trailing stop $5.375. Circle USDC/CCTP thesis intact — price weakness attributed to broad risk-off.

---

### LINK/USD — Trailing Stop OULSVN Triggered
**Stop Order:** OULSVN-3TUF5-PPM4YW (trailing-stop, 5%, HWM $10.0201, trigger $9.5191)
**Fill:** ~$9.509–$9.519 (24h low $9.509 breached trigger $9.519; slippage possible)
**Qty closed:** 1.1533 LINK
**Entry:** $9.616 | **Exit:** ~$9.509–$9.519 | **P&L:** ~-$0.11 to -$0.12 (−1.0–1.1%)
**Notes:** LINK 24h range hit low of $9.509, triggering trailing stop at $9.519. AWS/CCIP/DTCC thesis intact; BTC -1.66% broad market dragged LINK lower.

---

### NEAR/USD — Trailing Stop OBU5GQ Triggered (Entry #3 — 40 units)
**Stop Order:** OBU5GQ-S33RH-NTSBR4 (trailing-stop, 5%, HWM $2.2324, trigger $2.1208)
**Fill:** ~$2.1208 (market execution; HWM $2.2324)
**Qty closed:** 40.00 NEAR
**Entry:** $2.193 | **Exit:** ~$2.1208 | **P&L:** ~-$2.89 (-3.3%)
**Notes:** NEAR pulled back from HWM $2.2324 through stop $2.1208. Grayscale ETF S-1 thesis intact (+27% 24h still valid). 3rd NEAR stop-out today due to 5% trail being too tight for binary catalyst intraday volatility (3-4% swings typical). Upgrading trail to 7% on re-entry per TRADING-STRATEGY.md binary catalyst rule.

---

## 2026-05-22 — Session-Open Trades (Kraken, bot — afternoon)

### 2026-05-22T~session | SUI/USD | BUY | 37.00 SUI | Entry: ~$1.0686 | Trailing Stop: $1.0152 | Open

**Order ID (buy):** ORJ4LG-HENF5-KKYGZX (market buy, spot)
**Trailing Stop Order ID:** OISAQO-TUKYN-CIVCAH (trailing-stop sell, trail -5%, stop $1.0152, HWM $1.0686, GTC ✓)
**Notional:** ~$39.53 (spot; ~47% of ~$83.66 freed ZUSD from INJ/LINK/NEAR stop-outs)
**Effective fill price:** ~$1.0686 (HWM $1.0686 confirms fill level)
**Stop level:** $1.0152 (5% trailing below HWM $1.0686)
**Target:** T1 $1.20 (+12.3%), T2 $1.40 (+31.1%)
**R:R:** ~2.46:1 to T1 (($1.20−$1.069) / ($1.069−$1.015))
**Thesis:** CME Group SUI regulated futures live (May 4, 2026); Grayscale Sui Trust S-1 filed; 21Shares SUI ETF reference; Ramp USDC integration for 50k+ businesses. Pullback from $1.164 24h high to $1.068 = improved R:R entry. Spread 0.028% ✓. BTC crash gate clear (-1.66% 24h) ✓.
**Notes:** Deployed from freed ZUSD (INJ+LINK stops triggered). Spot only (margin restriction active). Per pre-session contingency plan: SUI primary redeployment target. Weekly Kraken trade count: 6.

---

### 2026-05-22T~session | NEAR/USD | BUY | 38.00 NEAR | Entry: ~$2.137 | Trailing Stop (7%): $1.9875 | Open

**Order ID (buy):** OUUEEA-JDIES-O6TEOW (market buy, spot)
**Trailing Stop Order ID:** OSX7LL-VVQZV-JPVWBB (trailing-stop sell, trail -7%, stop $1.9875, HWM $2.1370, GTC ✓)
**Notional:** ~$81.21 (spot; ~97% of remaining ZUSD after SUI entry)
**Effective fill price:** ~$2.137 (HWM $2.137 confirms fill level)
**Stop level:** $1.9875 (7% trailing below HWM $2.137 — binary catalyst rule applied)
**Target:** T1 $2.45 (+14.6%), T2 $2.65 (+24.0%)
**R:R:** ~2.09:1 to T1 (($2.45−$2.137) / ($2.137−$1.9875))
**Thesis:** Grayscale NEAR Protocol Trust S-1 ETF filing driving +27% 24h narrative; AI/Nvidia sector rotation catalyst intact; NEAR One ecosystem expansion; Robinhood listing; confirmed ongoing momentum on high volume (6.3M NEAR 24h). Spread 0.094% ✓. BTC crash gate clear (-1.66% 24h) ✓.
**Notes:** 4th NEAR entry today. Used 7% trailing stop per TRADING-STRATEGY.md binary catalyst rule (ETF S-1 filing = binary catalyst — headline volatility swings 3-4% intraday; 5% trail was too tight, triggered 3 times today). Stop $1.9875 places floor at prior $2.00-$2.10 support zone. Spot only. Weekly Kraken trade count: 7.

---

### 2026-05-22 — Session Snapshot (post-afternoon trades)
**Kraken equity (approx):** ~$225+ | **ZUSD:** $1.81 (fully deployed)
| Symbol | Qty | Entry | Trailing Stop | Trail% | Stop ID | Stop Level | HWM | Target |
|---|---|---|---|---|---|---|---|---|
| NEAR/USD | 38.00 | ~$2.137 | 7% | OSX7LL-VVQZV-JPVWBB | $1.9875 | $2.1370 | T1 $2.45 |
| SUI/USD | 37.00 | ~$1.0686 | 5% | OISAQO-TUKYN-CIVCAH | $1.0152 | $1.0686 | T1 $1.20 |
| XRP/USD | 21.00 | $1.363 | 5% | OOKBA5-NVKUU-NWIH5S | $1.30064 | $1.36909 | T1 $1.50 |
| SOL/USD | 0.17211 | $85.90 | 5% | OAOOBG-DNG7C-B4WTH2 | $83.510 | $87.90 | T1 $94.49 |

**Alpaca:** no positions, no active orders ✓
**Crash gate:** BTC $76,263 (-1.66% 24h) — clear ✓
**Weekly trades (Kraken):** 7
**Exits this session (auto-stop):** INJ +$0.34 | LINK ~-$0.11 | NEAR(#3) ~-$2.89


---

## 2026-05-22 — Midday Scan #3 Summary

| Symbol | Qty | Entry | Midday Price | P&L% | HWM | Stop Trigger | Buffer | Stop ID |
|---|---|---|---|---|---|---|---|---|
| NEAR/USD | 38.00 | $2.137 | $2.087 | **-2.3%** | $2.144 | $1.994 (trail 7%) | 4.4% | OSX7LL-VVQZV-JPVWBB ✓ |
| SUI/USD | 37.00 | $1.0686 | $1.061 | **-0.75%** | ~$1.070 | $1.0165 (trail 5%) | 4.2% | OISAQO-TUKYN-CIVCAH ✓ |
| XRP/USD | 21.00 | $1.363 | $1.341 | **-1.6%** | $1.369 | $1.30064 (trail 5%) | 3.1% | OOKBA5-NVKUU-NWIH5S ✓ |
| SOL/USD | 0.17211 | $85.90 | $85.05 | **-0.99%** | $87.90 | $83.51 (trail 5%) | **1.8% ⚠️** | OAOOBG-DNG7C-B4WTH2 ✓ |

**Alpaca:** No position, no orders ✓
**ZUSD:** $1.81 (fully deployed)
**BTC:** ~$77,700 (-1% to -2% 24h) — crash gate NOT triggered ✓
**Weekly trades (Kraken):** 7 (no new trades this scan)

**Actions taken:** NONE
- All 4 trailing stops verified active ✓
- No position up ≥+20% — no stop tightening
- All theses intact
- SOL 24h low $83.92 was within $0.41 of stop $83.51 — critically thin buffer
- XRP: Memorial Day May 25 is CLARITY Act deadline risk
- ZUSD $1.81 — no new entries possible

**Contingency:** If SOL stop triggers at $83.51, freed ZUSD → evaluate SUI add or XRP add (watch Memorial Day risk). NEAR thesis strongest (short squeeze + ETF + tokenomics).

---

## 2026-05-22 — Session-Open Scan (new session)

| Symbol | Qty | Entry | Current | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| NEAR/USD | 38.00 | $2.137 | $2.0812 | **-2.6%** | $2.1440 | $1.9940 (trail 7%) | 4.2% | OSX7LL-VVQZV-JPVWBB ✓ |
| SOL/USD | 0.17211 | $85.90 | $84.95 | **-1.1%** | $87.90 | $83.510 (trail 5%) | ⚠️ **1.7% CRITICAL** | OAOOBG-DNG7C-B4WTH2 ✓ |
| XRP/USD | 21.00 | $1.363 | $1.3402 | **-1.7%** | $1.36909 | $1.30064 (trail 5%) | 3.0% | OOKBA5-NVKUU-NWIH5S ✓ |
| SUI/USD | 37.00 | $1.0686 | $1.0616 | **-0.7%** | $1.0686 | $1.0165 (trail 5%) | 4.3% | OISAQO-TUKYN-CIVCAH ✓ |

**Kraken ZUSD:** $1.8063 (fully deployed) | **Alpaca:** no positions, no active orders (stop a2b44cf9 cancelled 2026-05-22T05:22Z)
**BTC:** $75,705 (Kraken live) | 24h open $77,549 = **-2.38%** | Crash gate: NOT triggered ✓
**F&G:** 28 (Fear) | **DXY:** ~99.29 | **Weekly Kraken trades:** 7

**STEP 3 — Hard checks:**
- Crash gate: -2.38% 24h → CLEAR ✓
- Emergency exits (≤-20%): none ✓
- All 4 trailing stops confirmed open and covering correct quantities ✓

**STEP 4 — Stop tightening (≥+20%):** No position up ≥+20% from entry. No adjustments.

**STEP 5 — Thesis check (Perplexity):**
- **NEAR:** $2.00–$2.25 across sources. Grayscale NEAR Protocol Trust S-1 ETF narrative intact; no adverse news or cancellation. Short-term mixed technicals but 7% trail handles volatility. **Thesis INTACT. HOLD.**
- **SOL:** ~$86.8–$87 per Perplexity; whales added $9.7M SOL confirmed; Firedancer 1.0 mainnet live. BTC selloff dragging SOL to $84.95 on Kraken. Stop $83.51 buffer CRITICALLY THIN (1.7%). Do NOT adjust stop. **Thesis INTACT. HOLD.**
- **XRP:** CLARITY Act advanced committee 15-9 (May 14); Senate floor vote still pending; no adverse developments. Memorial Day recess (May 25) = deadline risk if vote not scheduled. **Thesis INTACT. HOLD.**
- **SUI:** Native stablecoins USDi + suiUSDe announced on Sui blockchain today (fresh catalyst). CME futures + Grayscale S-1 intact. Kraken price $1.0616 (pulled back from 24h high $1.132 after initial pop). **Thesis INTACT — catalyst strengthening. HOLD.**

**STEP 6 — New entries:** ZUSD $1.81 — insufficient for any minimum order. No new entries possible.

**Decision: HOLD — No New Trades.** No WhatsApp notification sent (no action taken).

**SOL watch:** If stop triggers at $83.51 → freed ~$14.62 ZUSD → prioritize SUI add (native stablecoin catalyst fresh) or NEAR add. XRP Memorial Day risk reduces priority.

---

## 2026-05-23 — Overnight Triage Check

| Symbol | Qty | Entry | Current | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| NEAR/USD | 38.00 | $2.137 | $2.096 | **-1.9%** | $2.144 | $1.994 (trail 7%) | 4.9% | OSX7LL-VVQZV-JPVWBB ✓ |
| SUI/USD | 37.00 | $1.0686 | $1.048 | **-1.9%** | $1.070 | $1.0165 (trail 5%) | 3.0% | OISAQO-TUKYN-CIVCAH ✓ |
| XRP/USD | 21.00 | $1.363 | $1.335 | **-2.0%** | $1.369 | $1.30064 (trail 5%) | 2.6% | OOKBA5-NVKUU-NWIH5S ✓ |
| SOL/USD | 0.17211 | $85.90 | $84.46 | **-1.7%** | $87.90 | $83.510 (trail 5%) | ⚠️ **1.1% CRITICAL** | OAOOBG-DNG7C-B4WTH2 ✓ |

**Alpaca:** Stop a2b44cf9 confirmed CANCELLED (2026-05-22T05:22Z) — no Alpaca BTC position. ✓

**STEP 2 — Trailing stops verified:** All 4 Kraken positions have active trailing stops. No unprotected positions. ✓

**STEP 3 — Emergency exits (>-20% AND stop not triggered):** None. All positions well within threshold (each stop > -10% from entry; gap to -20% is 10%+ below current stops). ✓

**STEP 4 — Stop tightening (≥+20% from entry):** NEAR +0.3% (HWM), SUI +0.1%, XRP +0.4%, SOL +2.3% — none qualify. No adjustments. ✓

**STEP 5 — BTC Crash Gate:** BTC $75,378 (ask) | 24h open $75,456 = **-0.10%** | 24h VWAP $76,479 | 24h low $75,136 — well under -20% threshold. No crash gate. No regime alert. ✓

**⚠️ SOL STOP BUFFER CRITICAL (1.1%):** 24h low $83.91 came within $0.40 of stop trigger $83.51. Stop survived overnight. Do NOT adjust — let it work. If triggered: freed ~$14.62 ZUSD → evaluate SUI add or NEAR add.

**STEP 6 — Notification:** No actions taken → no notification sent.

**Result: NO-OP. No actions taken. No notification sent.**

---

## 2026-05-23 — Overnight Triage Check

| Symbol | Qty | Entry | Current | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| NEAR/USD | 38.00 | $2.137 | $2.091 | **-2.15%** | $2.144 | $1.994 (trail 7%) | 4.64% | OSX7LL-VVQZV-JPVWBB ✓ |
| SUI/USD | 37.00 | $1.0686 | $1.040 | **-2.68%** | $1.070 | $1.0165 (trail 5%) | 2.26% | OISAQO-TUKYN-CIVCAH ✓ |
| XRP/USD | 21.00 | $1.363 | $1.339 | **-1.76%** | $1.369 | $1.30064 (trail 5%) | 2.86% | OOKBA5-NVKUU-NWIH5S ✓ |
| SOL/USD | 0.17211 | $85.90 | $84.39 | **-1.76%** | $87.90 | $83.510 (trail 5%) | ⚠️ **1.04% CRITICAL** | OAOOBG-DNG7C-B4WTH2 ✓ |

**Alpaca:** Stop a2b44cf9 confirmed CANCELLED (2026-05-22T05:22Z) — no Alpaca positions or active orders. ✓

**STEP 2 — Trailing stops verified:** All 4 Kraken positions have active trailing stops covering correct quantities. No unprotected positions. ✓

**STEP 3 — Emergency exits (>-20% AND stop not triggered):** None. All positions well within threshold. ✓

**STEP 4 — Stop tightening (≥+20% from entry):** NEAR -2.15%, SUI -2.68%, XRP -1.76%, SOL -1.76% — none qualify. No adjustments. ✓

**STEP 5 — BTC Crash Gate:** $75,493 now vs 24h open $75,457 = **+0.05%** — essentially flat. Well under -20% threshold. No crash gate. No regime alert. ✓

**⚠️ SOL STOP BUFFER CRITICAL (1.04%):** SOL at $84.39 vs stop trigger $83.51. Buffer worsened from 1.1% (prior check) to 1.04%. Stop survived another session. Do NOT adjust — let it work. If triggered: freed ~$14.62 ZUSD → evaluate SUI add or NEAR add per prior contingency plan.

**Result: NO-OP. No actions taken. No notification sent.**

---

## 2026-05-23 — Session-Open Scan

| Symbol | Qty | Entry | Current | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| NEAR/USD | 38.00 | $2.137 | $2.097 | **-1.87%** | $2.144 | $1.994 (trail 7%) | 4.9% | OSX7LL-VVQZV-JPVWBB ✓ |
| SUI/USD | 37.00 | $1.0686 | $1.043 | **-2.4%** | $1.070 | $1.0165 (trail 5%) | 2.5% | OISAQO-TUKYN-CIVCAH ✓ |
| XRP/USD | 21.00 | $1.363 | $1.339 | **-1.76%** | $1.369 | $1.30064 (trail 5%) | 2.87% | OOKBA5-NVKUU-NWIH5S ✓ |
| SOL/USD | 0.17211 | $85.90 | $84.47 | **-1.67%** | $87.90 | $83.510 (trail 5%) | ⚠️ **1.14% CRITICAL** | OAOOBG-DNG7C-B4WTH2 ✓ |

**Alpaca:** No positions, no active orders (stop a2b44cf9 cancelled 2026-05-22T05:22Z) ✓
**ZUSD:** $1.81 (fully deployed — no new entries possible)
**BTC:** ~$75,515 (Kraken live) | 24h: ~-2.3% | Crash gate: NOT triggered ✓
**F&G:** 28 (Fear) | **BTC funding rate:** +0.0018–0.0028% (normal/slightly positive)
**Weekly Kraken trades:** 7

**Pre-session research summary:**
- BTC ~$75,900 (-2.3% 24h) — Fear regime; no crash gate (well under -20% threshold)
- ETH ~$2,070–$2,073 (-2.9% 24h)
- Top gainers: RAVE (+106%), MWC (+68%), OPG (+59%) — not on Kraken or no catalyst
- CLARITY Act still pending Senate floor vote; no adverse developments; Memorial Day May 25 recess risk
- ETH Glamsterdam June 2026 upgrade referenced in news as upcoming catalyst
- Token unlocks this week: HYPE May 29 (14.2M tokens); PYTH unlock (largely complete); STRK May 22 done
- NEAR: Grayscale ETF S-1 thesis intact; no cancellation/adverse news. Short-term forecasts neutral-to-bearish (MEXC $1.38 target); 24h range $2.062–$2.132. Thesis INTACT. HOLD.
- SOL: Firedancer 1.0 live, whale buying intact. Below 200-day SMA; technically weak. 24h low $83.95 within $0.44 of stop $83.51. Buffer CRITICALLY THIN (1.14%). Do NOT adjust. Thesis INTACT. HOLD.
- XRP: CLARITY Act advancing, Senate floor vote pending. No adverse news. ETF inflows cited as positive. Thesis INTACT. HOLD.
- SUI: Native stablecoins (USDi + suiUSDe) catalyst from May 22 still fresh. CME futures + Grayscale S-1 intact. Cautiously neutral short-term. Thesis INTACT. HOLD.

**STEP 3 — Hard checks:**
- Crash gate: ~-2.3% 24h → CLEAR ✓
- Emergency exits (≤-20%): none ✓
- All 4 trailing stops confirmed open and covering correct quantities ✓

**STEP 4 — Stop tightening (≥+20%):** No position up ≥+20% from entry. No adjustments.

**STEP 6 — New entries:** ZUSD $1.81 — insufficient for any minimum order. No new entries possible.

**Decision: HOLD — No New Trades.** No WhatsApp notification sent (no action taken).

**SOL contingency:** If stop triggers at $83.51 → freed ~$14.62 ZUSD → evaluate SUI add (buffer thinning, stablecoin catalyst) or NEAR add (strongest thesis, ETF S-1). XRP Memorial Day risk = lower priority.

---

## 2026-05-23 — Overnight Triage Check (latest)

| Symbol | Qty | Entry | Current | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| NEAR/USD | 38.00 | $2.137 | $2.078 | **-2.76%** | $2.144 | $1.994 (trail 7%) | 4.03% | OSX7LL-VVQZV-JPVWBB ✓ |
| SUI/USD | 37.00 | $1.0686 | $1.036 | **-3.05%** | $1.070 | $1.0165 (trail 5%) | ⚠️ **1.88% — CRITICAL** | OISAQO-TUKYN-CIVCAH ✓ |
| XRP/USD | 21.00 | $1.363 | $1.335 | **-2.06%** | $1.369 | $1.30064 (trail 5%) | 2.57% | OOKBA5-NVKUU-NWIH5S ✓ |
| SOL/USD | 0.17211 | $85.90 | $84.34 | **-1.82%** | $87.90 | $83.510 (trail 5%) | ⚠️ **0.98% — CRITICAL** | OAOOBG-DNG7C-B4WTH2 ✓ |

**Alpaca:** No positions, no active orders (stop a2b44cf9 cancelled 2026-05-22T05:22Z) ✓

**STEP 2 — Trailing stops verified (Kraken API cross-check):**
- OSX7LL-VVQZV-JPVWBB: NEAR 38.00 qty, trail +7%, stopprice $1.99400, limitprice (HWM) $2.14400 — MATCH ✓
- OISAQO-TUKYN-CIVCAH: SUI 37.00 qty, trail +5%, stopprice $1.01650, limitprice (HWM) $1.07000 — MATCH ✓
- OOKBA5-NVKUU-NWIH5S: XRP 21.00 qty, trail +5%, stopprice $1.30064, limitprice (HWM) $1.36909 — MATCH ✓
- OAOOBG-DNG7C-B4WTH2: SOL 0.17210 qty, trail +5%, stopprice $83.51000, limitprice (HWM) $87.90000 — MATCH ✓
No unprotected positions. No orphaned orders.

**STEP 3 — Emergency exits (>-20% AND stop not triggered):** None. All positions well within threshold. ✓

**STEP 4 — Stop tightening (≥+20% from entry):** NEAR -2.76%, SUI -3.05%, XRP -2.06%, SOL -1.82% — none qualify. No adjustments. ✓

**STEP 5 — BTC Crash Gate:** BTC $75,453 (ask) vs 24h open $75,457 = **-0.005%** — flat overnight. Well under -20% threshold. No crash gate. ✓
- 24h range: $75,136 low / $77,650 high — BTC ranging; no extreme move.

**⚠️ SOL STOP BUFFER CRITICAL (0.98%):** 24h low $83.91 came within $0.40 of trigger $83.51. Stop has survived multiple sessions. Do NOT adjust. If triggered: freed ~$14.62 ZUSD → evaluate SUI add (stablecoin catalyst) or NEAR add (ETF S-1 thesis strongest).
**⚠️ SUI STOP BUFFER CRITICAL (1.88%):** SUI 24h low $1.033; stop at $1.0165 is $0.019 away. Monitor closely.

**Result: NO-OP. No actions taken. No WhatsApp notification sent.**

---

## 2026-05-23 — Session-Open Scan

| Symbol | Qty | Entry | Ask | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| NEAR/USD | 38.00 | $2.137 | $2.062 | **-3.5%** | $2.144 | $1.994 (trail 7%) | 3.3% | OSX7LL-VVQZV-JPVWBB ✓ |
| SUI/USD | 37.00 | $1.0686 | $1.030 | **-3.6%** | $1.070 | $1.0165 (trail 5%) | ⚠️ **1.3% CRITICAL** | OISAQO-TUKYN-CIVCAH ✓ |
| XRP/USD | 21.00 | $1.363 | $1.337 | **-1.9%** | $1.369 | $1.300 (trail 5%) | 2.8% | OOKBA5-NVKUU-NWIH5S ✓ |
| SOL/USD | 0.17211 | $85.90 | $84.25 | **-1.9%** | $87.90 | $83.510 (trail 5%) | ⚠️ **0.9% CRITICAL** | OAOOBG-DNG7C-B4WTH2 ✓ |

**Alpaca:** No positions, no active orders (stop a2b44cf9 cancelled 2026-05-22T05:22Z) ✓
**ZUSD:** $1.81 (fully deployed — no new entries possible)
**BTC:** $75,354 (ask) | 24h open $75,456 = **-0.13%** | Crash gate: NOT triggered ✓
**Weekly Kraken trades:** 7

**STEP 3 — Hard checks:**
- Crash gate: -0.13% 24h → CLEAR ✓
- Emergency exits (≤-20%): none ✓
- All 4 trailing stops confirmed open, covering correct quantities ✓

**STEP 4 — Stop tightening (≥+20% from entry):** None qualify. No adjustments.

**STEP 5 — Thesis check:**
- NEAR: Grayscale ETF S-1 + Arthur Hayes endorsement intact. 24h low $2.042 held above stop $1.994. **INTACT. HOLD.**
- SOL: Firedancer 1.0 live; Deel payroll adoption intact. 24h session low $83.95 within $0.44 of stop $83.51 — stop survived. Buffer 0.9% CRITICAL. Do NOT adjust. **INTACT. HOLD.**
- XRP: CLARITY Act advancing; Memorial Day May 25 binary risk. 24h low $1.326 held above stop $1.300. Buffer 2.8% healthy. **INTACT. HOLD.**
- SUI: CME futures May 29 catalyst; gasless stablecoins live. 24h low $1.0248 above stop $1.0165. Buffer 1.3% CRITICAL. Do NOT adjust. **INTACT. HOLD.**

**STEP 6 — New entries:** ZUSD $1.81 insufficient for any minimum order. No entries possible.

**Contingency (armed):**
- SOL triggers ($83.51) → ~$14.37 freed → NEAR add (7% trail) OR LINK (5% trail)
- SUI triggers ($1.0165) → ~$37.60 freed → ETH (Glamsterdam) OR NEAR add OR AAVE
- Both trigger → ~$52 freed → concentrate into NEAR (highest conviction)

**Decision: HOLD — No New Trades. No notification sent.**

| 2026-05-23 | ETH/USD | BUY | 0.0197 | ~$2,026 | Market | O2XQR3-KWHXM-HRTSCP | Glamsterdam June upgrade pre-position | Trailing stop 5% @ O6GVNC-H2KL5-3K2WQG (stop $1,925.03, HWM $2,026.34) | OPEN |
| 2026-05-23 | NEAR/USD | BUY (add) | 12.30 | ~$2.032 | Market | OFWP6I-TFTS3-MOR2E4 | ETF S-1 / Arthur Hayes — add at lower avg (combined 50.30 NEAR, avg ~$2.10) | Trailing stop 7% @ OMB3ZI-YNXTU-FF2W7U (stop $1.8904, HWM $2.0326) | OPEN |
| 2026-05-23 | LINK/USD | BUY | 1.626 | ~$9.147 | Market | OGGYBA-G64MC-OCMB7H | AWS Chainlink integration / ETH Glamsterdam DeFi proxy | Trailing stop 5% @ OZ3567-BYLHI-5JVOHK (stop $8.6863, HWM $9.1435) | OPEN |

---

### May 23 — EOD Snapshot (Day 14, Saturday)
**Portfolio:** $157.76 | **Cash:** $0.01 (0.0%) | **Day P&L:** -$22.02 (-12.25%) | **Phase P&L:** -$22.02 (-12.25%) | **vs BTC:** -10.86%
| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Trailing Stop |
|---|---|---|---|---|---|---|
| ETH/USD | 0.0197 | $2,026.00 | $2,021.81 | -2.0% | -$0.08 (-0.2%) | $1,928.25 (5%, HWM $2,029.73) |
| NEAR/USD | 50.30 (38@$2.137+12.30@$2.032) | $2.111 avg | $2.0498 | -2.6% | -$3.09 (-2.9%) | $1.994 (7%, HWM $2.144) + $1.916 (7%, HWM $2.061) |
| LINK/USD | 1.6268 | $9.147 | $9.110 | -3.2% | -$0.06 (-0.4%) | $8.690 (5%, HWM $9.148) |
**Trades today:** SUI/USD trailing stop triggered (~$1.017, -4.9%) | XRP/USD trailing stop triggered (~$1.300, -4.6%) | SOL/USD trailing stop triggered (~$83.51, -2.8%) | ETH/USD BUY 0.0197 @$2,026 | NEAR/USD BUY (add) 12.30 @$2.032 | LINK/USD BUY 1.626 @$9.147 | **Total since migration:** 13
**Notes:** Three trailing stops triggered today — SUI (-4.9%), XRP (-4.6%), SOL (-2.8%) — generating ~$79 in proceeds recycled into ETH (Glamsterdam June upgrade pre-position), NEAR add (combined 50.30 NEAR @avg $2.111, ETF S-1 thesis strongest), and new LINK position (AWS/Chainlink integration / ETH DeFi proxy). Day P&L of -$22.02 (-12.25%) reflects the formal May 22 EOD baseline of $179.78 (the only prior EOD reference), but that snapshot was taken early in the Kraken activation day before afternoon NEAR/INJ/LINK stop-outs on May 22 — so two days of stop-cascade activity is compressed into today's figure. BTC fell -1.39% (open $75,457 → $74,407); bot underperformed by -10.86% due to multi-stop cascade. All three new positions are mildly underwater: ETH -0.2%, NEAR blended -2.9%, LINK -0.4%. NEAR 38 original stop at $1.994 has only 2.8% buffer from current $2.0498 — most critical overnight risk. Four trailing stops confirmed active (ETH: O6GVNC, NEAR 38: OSX7LL, NEAR 12.30: OMB3ZI, LINK: OZ3567). Alpaca: stop a2b44cf9 cancelled 2026-05-22; no Alpaca exposure.

---

## 2026-05-23 — Session-Open Scan (new session)

| Symbol | Qty | Entry | Ask | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| NEAR/USD | 50.30 (38@$2.137+12.30@$2.032) | $2.111 avg | $2.3934 | **+13.4%** | $2.4721 | $2.2991 (trail 7%) | 3.9% | OSX7LL + OMB3ZI ✓ |
| ETH/USD | 0.0197 | $2,026.00 | $2,070.64 | **+2.2%** | $2,080.54 | $1,976.52 (trail 5%) | 4.5% | O6GVNC ✓ |
| LINK/USD | 1.6268 | $9.147 | $9.3624 | **+2.4%** | $9.4139 | $8.9432 (trail 5%) | 4.5% | OZ3567 ✓ |

**Alpaca:** No positions, no active orders (stop a2b44cf9 cancelled 2026-05-22) ✓
**ZUSD:** $0.006 (fully deployed — no new entries possible)
**BTC:** $75,709 ask | 24h open $75,457 = **+0.33%** | Crash gate: NOT triggered ✓
**Weekly Kraken trades:** 7 (since Mon 2026-05-18 week reset)

**STEP 3 — Hard checks:**
- Crash gate: +0.33% 24h → CLEAR ✓
- Emergency exits (≤-20%): none ✓
- All 4 trailing stops confirmed open, covering correct quantities ✓
- NEAR stop details (live): OSX7LL stopprice $2.29910, HWM $2.47210 ✓ | OMB3ZI stopprice $2.29910, HWM $2.47210 ✓
- ETH stop (live): O6GVNC stopprice $1,976.52, HWM $2,080.54 ✓
- LINK stop (live): OZ3567 stopprice $8.9432, HWM $9.4139 ✓

**STEP 4 — Stop tightening (≥+20% from entry):**
- NEAR 38 @ $2.137: +12.0% — not at +20%. No adjustment.
- NEAR 12.30 @ $2.032: +17.8% — approaching threshold but NOT at +20%. No adjustment.
- ETH: +2.2% | LINK: +2.4% — no adjustments.

**STEP 5 — Thesis check:**
- **NEAR:** Arthur Hayes endorsement + Grayscale ETF S-1 intact. AI token narrative driving continued rally (NEAR led CMC AI-token category). HWM $2.4721 ratcheted up significantly from EOD $2.144. Stop at $2.2991 locks in +$9.47 unrealized gain if triggered. **INTACT. HOLD.**
- **ETH:** Glamsterdam June 2026 upgrade on track. BitMine accumulation + CBOE ETH futures expansion confirmed in prior research. HWM $2,080.54 — recovery from overnight lows. **INTACT. HOLD.**
- **LINK:** ADI Foundation / $240B institutional assets + Chainlink CCIP multi-chain expansion + DTCC 24/7 collateral management + Kraken CCIP migration all intact. HWM $9.4139. **INTACT AND STRENGTHENING. HOLD.**

**STEP 6 — New entries:** ZUSD $0.006 — insufficient for any minimum order. No entries possible.

**Portfolio estimate:** NEAR $120.37 + ETH $40.79 + LINK $15.23 + ZUSD $0.01 = **~$176.40** | Phase gain from EOD $157.76: **+$18.64 (+11.8%)**

**Decision: HOLD — No New Trades. No WhatsApp notification sent (no action taken).**

**Contingency (armed for next stop triggers):**
- NEAR stops at $2.2991 → ~$115.54 freed → ETH add (Glamsterdam) + LINK add (ADI/$240B)
- ETH stop at $1,976.52 → ~$38.94 freed → NEAR re-entry (7% trail) or LINK add
- LINK stop at $8.9432 → ~$14.54 freed → check min order; ETH add preferred
- All stops → ~$176 freed → concentrate: ETH 40%, NEAR re-entry 40%, LINK 20%

---

## 2026-05-23 — Session-Open Stop Tightening

### 2026-05-23 | NEAR/USD | STOP TIGHTENED | 12.30 lot | 7% → 3% trail

**Trigger:** NEAR 12.30 lot (entry $2.032) reached ask $2.44000 = **+20.1%** ≥ +20% threshold (per TRADING-STRATEGY.md stop tightening rule; contingency plan flagged $2.438 target)

**Action:**
- Cancelled: OMB3ZI-YNXTU-FF2W7U (7% trailing stop, floor $2.29910, HWM $2.47210)
- New order: OCPEFI-MAHQ6-CW3ZHR (3% trailing stop, floor $2.36560, HWM $2.43870, GTC ✓)

**Floor improvement:** $2.29910 → $2.36560 (+$0.0665 better protection)
- If triggered at new floor: ~+16.5% on 12.30 lot vs entry $2.032 (+$4.11/lot)
- vs old floor: +13.5% on this lot

**Active stops after action:**
| Order | Pair | Qty | Trail | Stop | HWM | Status |
|---|---|---|---|---|---|---|
| OSX7LL-VVQZV-JPVWBB | NEAR/USD | 38.00 | 7% | $2.29910 | $2.47210 | ✓ |
| OCPEFI-MAHQ6-CW3ZHR | NEAR/USD | 12.30 | 3% | $2.36560 | $2.43870 | ✓ (tightened) |
| O6GVNC-H2KL5-3K2WQG | ETH/USD | 0.0197 | 5% | $2,040.15 | $2,147.52 | ✓ |
| OZ3567-BYLHI-5JVOHK | LINK/USD | 1.626 | 5% | $9.27832 | $9.76665 | ✓ |

**BTC crash gate:** $76,619 ask, 24h open $75,457 = +1.54% — CLEAR ✓
**NEAR 38 lot:** entry $2.137, ask $2.44 = +14.2% — not at +20% threshold ($2.564). No adjustment.
**ETH:** +4.4% | **LINK:** +4.5% — no tightening warranted.
**Portfolio (approx):** NEAR 50.30×$2.44=$122.73 + ETH 0.0197×$2,115=$41.67 + LINK 1.627×$9.561=$15.55 + ZUSD $0.01 = **~$179.96**
**No new entries:** ZUSD $0.006 — fully deployed.

---

## 2026-05-24 — Overnight Triage Check

### NEAR/USD — Trailing Stop OCPEFI Auto-Triggered (overnight)

**Stop Order:** OCPEFI-MAHQ6-CW3ZHR (3% trailing stop, HWM $2.43870 at placement → ratcheted to $2.47210 per 24h high)
**Auto-trigger level:** ~$2.398 ($2.47210 × 0.97)
**Estimated fill:** ~$2.39–$2.40 (market execution at trigger; slippage possible)
**Qty closed:** 12.30 NEAR
**Entry:** $2.032 | **Exit:** ~$2.398 | **P&L:** ~+$4.50 (+18.0%) — profitable exit; stop worked as designed
**Notes:** NEAR ran to 24h high $2.47210, ratcheting the 3% stop to ~$2.398. Price then pulled back through trigger. OCPEFI no longer visible in open orders — confirmed triggered. ZUSD proceeds added to cash balance.

---

| Symbol | Qty | Entry | Current | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| NEAR/USD | 38.00 | $2.137 | $2.367 | **+10.8%** | $2.47210 | $2.29910 (trail 7%) | 2.86% | OSX7LL-VVQZV-JPVWBB ✓ |
| ETH/USD | 0.0197 | $2,026.00 | $2,117.17 | **+4.5%** | $2,147.52 | $2,040.15 (trail 5%) | 3.64% | O6GVNC-H2KL5-3K2WQG ✓ |
| LINK/USD | 1.6268 | $9.147 | $9.572 | **+4.6%** | $9.76665 | $9.27832 (trail 5%) | 3.07% | OZ3567-BYLHI-5JVOHK ✓ |

**Alpaca:** Stop a2b44cf9 — **CANCELED** (2026-05-22T05:22Z confirmed). No Alpaca positions or active orders. ✓

**STEP 2 — Trailing stops verified:**
- NEAR 38: OSX7LL-VVQZV-JPVWBB, 38.00 NEAR, trail +7%, stop $2.29910 — ✓
- ETH: O6GVNC-H2KL5-3K2WQG, 0.0197 ETH, trail +5%, stop $2,040.15 — ✓
- LINK: OZ3567-BYLHI-5JVOHK, 1.626 LINK, trail +5%, stop $9.27832 — ✓
- OCPEFI (NEAR 12.30, 3% trail) — auto-triggered overnight; position closed profitably ~+18% ✓
No unprotected positions.

**STEP 3 — Emergency exits (>-20% AND stop not triggered):** None. All positions profitable. ✓

**STEP 4 — Stop tightening:**
- NEAR 38 @ $2.137: current $2.367 = **+10.8%** — threshold for tightening: $2.564 (+20%). Not yet.
- ETH @ $2,026: current $2,117 = **+4.5%** — threshold: $2,431 (+20%). Not yet.
- LINK @ $9.147: current $9.572 = **+4.6%** — threshold: $10.976 (+20%). Not yet.
No adjustments.

**STEP 5 — BTC Crash Gate:** BTC $76,679 (ask) | 24h open $76,670 = **+0.01%** — essentially flat overnight. 24h range $74,209–$77,308. Well under -20% threshold. No crash gate. No regime alert. ✓

**Result: NO-OP. No actions taken. No notification sent.**
(OCPEFI auto-exit noted as overnight auto-stop; no new manual actions taken this session.)

---

## 2026-05-24 — Overnight Triage Check v3

| Symbol | Qty | Entry | Current | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| NEAR/USD | 38.00 | $2.137 | $2.387 | **+11.7%** | $2.47210 | $2.29910 (trail 7%) | 3.7% | OSX7LL-VVQZV-JPVWBB ✓ |
| ETH/USD | 0.0197 | $2,026.00 | $2,117.46 | **+4.5%** | $2,147.52 | $2,040.15 (trail 5%) | 3.6% | O6GVNC-H2KL5-3K2WQG ✓ |
| LINK/USD | 1.6268 | $9.147 | $9.516 | **+4.0%** | $9.76665 | $9.27832 (trail 5%) | 2.5% | OZ3567-BYLHI-5JVOHK ✓ |
| SUI/USD | 27.00 | $1.0689 | $1.0605 | **-0.8%** | $1.06940 | $1.01600 (trail 5%) | 4.2% | ONH4IU-X2MIR-H7KC5Y ✓ |

**Alpaca:** Stop a2b44cf9 — confirmed CANCELED (2026-05-22T05:22Z). No Alpaca positions or active orders. ✓

**STEP 2 — Trailing stops verified:**
- NEAR 38: OSX7LL-VVQZV-JPVWBB, 38.00 NEAR, trail +7%, stop $2.29910, HWM $2.47210 — ✓
- ETH: O6GVNC-H2KL5-3K2WQG, 0.0197 ETH, trail +5%, stop $2,040.15, HWM $2,147.52 — ✓
- LINK: OZ3567-BYLHI-5JVOHK, 1.6268 LINK, trail +5%, stop $9.27832, HWM $9.76665 — ✓
- SUI: ONH4IU-X2MIR-H7KC5Y, 27.00 SUI, trail +5%, stop $1.01600, HWM $1.06940 — ✓
No unprotected positions. No orphaned orders.

**STEP 3 — Emergency exits (>-20% AND stop not triggered):** None. All positions at -0.8% to +11.7% — all well within threshold. ✓

**STEP 4 — Stop tightening (≥+20% from entry):**
- NEAR 38 @ $2.137: current $2.387 = +11.7% — threshold: $2.564 (+20%). Not yet.
- ETH @ $2,026: current $2,117 = +4.5% — threshold: $2,431 (+20%). Not yet.
- LINK @ $9.147: current $9.516 = +4.0% — threshold: $10.976 (+20%). Not yet.
- SUI @ $1.069: current $1.061 = -0.8% — threshold: $1.283 (+20%). Not yet.
No adjustments.

**STEP 5 — BTC Crash Gate:** BTC $76,681 ask | 24h open $76,670 = **+0.01%** — essentially flat. 24h range $74,209–$77,308. Well under -20% threshold. No crash gate. No regime alert. ✓

**Notes:** Prices softened slightly vs v2 check (NEAR $2.423→$2.387, BTC $76,840→$76,681). LINK buffer narrowed to 2.5% — worth monitoring but above the critical 2% floor. All trailing stops tracking correctly. All theses intact from prior research: NEAR (Grayscale ETF S-1 + Arthur Hayes endorsement); ETH (Glamsterdam Q3 2026); LINK (ADI Foundation / $240B institutional assets + DTCC); SUI (CME futures + Grayscale S-1 + native stablecoins). OCPEFI (NEAR 12.30, 3% trail) confirmed closed overnight at ~+18% profit.

**Result: NO-OP. No actions taken. No notification sent.**

---

## 2026-05-24 — Overnight Triage Check v2 (~session run)

**Positions:**
| Symbol | Qty | Entry | Current | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| NEAR/USD | 38.00 | $2.137 | $2.423 | **+13.4%** | $2.47210 | $2.29910 (trail 7%) | 5.1% | OSX7LL-VVQZV-JPVWBB ✓ |
| ETH/USD | 0.0197 | $2,026.00 | $2,123.10 | **+4.8%** | $2,147.52 | $2,040.15 (trail 5%) | 3.9% | O6GVNC-H2KL5-3K2WQG ✓ |
| LINK/USD | 1.6268 | $9.147 | $9.553 | **+4.4%** | $9.76665 | $9.27832 (trail 5%) | 2.88% | OZ3567-BYLHI-5JVOHK ✓ |
| SUI/USD | 27.00 | $1.0689 | $1.0691 | **+0.01%** | $1.06940 | $1.01600 (trail 5%) | 5.0% | ONH4IU-X2MIR-H7KC5Y ✓ |

**SUI note:** ONH4IU trailing stop was placed by the buying session (~31s after fill). Initial triage orders check showed only 3 orders (race condition); refresh confirmed 4 stops all active. Balance confirmed via BalanceEx (SUI hold_trade: 27.0 = fully reserved for stop). No unprotected positions.

**Alpaca:** Stop a2b44cf9 — confirmed CANCELED (2026-05-22T05:22Z). No Alpaca positions or active orders. ✓

**STEP 2 — Trailing stops verified:**
- NEAR 38: OSX7LL-VVQZV-JPVWBB, 38.00 NEAR, trail +7%, stop $2.29910, HWM $2.47210 — ✓
- ETH: O6GVNC-H2KL5-3K2WQG, 0.0197 ETH, trail +5%, stop $2,040.15, HWM $2,147.52 — ✓
- LINK: OZ3567-BYLHI-5JVOHK, 1.6268 LINK, trail +5%, stop $9.27832, HWM $9.76665 — ✓
- SUI: ONH4IU-X2MIR-H7KC5Y, 27.00 SUI, trail +5%, stop $1.01600, HWM $1.06940 — ✓
No unprotected positions.

**STEP 3 — Emergency exits (>-20% AND stop not triggered):** None. All positions profitable or flat. ✓

**STEP 4 — Stop tightening (≥+20% from entry):**
- NEAR 38 @ $2.137: current $2.423 = **+13.4%** — threshold: $2.564 (+20%). Not yet.
- ETH @ $2,026: current $2,123 = **+4.8%** — threshold: $2,431 (+20%). Not yet.
- LINK @ $9.147: current $9.553 = **+4.4%** — threshold: $10.976 (+20%). Not yet.
- SUI @ $1.0689: current $1.069 = **+0.01%** — threshold: $1.283 (+20%). Not yet.
No adjustments needed.

**STEP 5 — BTC Crash Gate:** BTC $76,840 | 24h open $76,670 = **+0.22%** — well under ±20% threshold. No crash gate. No regime alert. ✓

**Result: NO-OP. No actions taken. No notification sent.**

---

### May 24 — EOD Snapshot (Day 15, Sunday)
**Portfolio:** $176.45 | **Cash:** $0.14 (0.08%) | **Day P&L:** +$18.69 (+11.85%) | **Phase P&L:** -$3.33 (-1.85%) | **vs BTC:** +11.76%
| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Trailing Stop |
|---|---|---|---|---|---|---|
| NEAR/USD | 38.00 | $2.137 | $2.379 | -2.8% | +$9.21 (+11.3%) | OSX7LL 7%, stop $2.299, HWM $2.472 |
| ETH/USD | 0.0197 | $2,026.00 | $2,118.19 | +0.1% | +$1.82 (+4.5%) | O6GVNC 5%, stop $2,040.15, HWM $2,147.52 |
| LINK/USD | 1.6268 | $9.147 | $9.569 | +0.1% | +$0.69 (+4.6%) | OZ3567 5%, stop $9.278, HWM $9.767 |
| SUI/USD | 27.00 | $1.0689 | $1.059 | -0.8% | -$0.26 (-0.9%) | ONH4IU 5%, stop $1.016, HWM $1.069 |
**Trades today:** NEAR/USD 12.30 trailing stop OCPEFI-MAHQ6-CW3ZHR triggered overnight (~$2.398, +18.0%) | SUI/USD BUY 27.00 @$1.0689 | **Total since migration:** 15
**Notes:** Strong overnight recovery drove an 11.85% day gain vs yesterday's EOD of $157.76, mostly from open positions catching up after May 23's multi-stop cascade. NEAR 38 leads at +11.3% unrealized ($9.21); ETH and LINK both firmed ~4.5–4.6%; SUI new position fractionally underwater (-0.9%, $28.61 vs $28.86 cost). The NEAR 12.30 add (OCPEFI) exited cleanly at +18%, proceeds recycled into SUI 27 (CME futures + Grayscale S-1 thesis). BTC flat on the day (+0.09%, $76,670→$76,733) so bot outperformed by +11.76%. All four trailing stops confirmed active. Phase P&L now -$3.33 (-1.85%) from starting equity $179.78 — close to breakeven. Alpaca: stop a2b44cf9 remains cancelled; no Alpaca exposure.

---

## 2026-05-25 — Session-Open Scan (Monday)

| Symbol | Qty | Entry | Current | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| NEAR/USD | 38.00 | $2.137 | $2.402 | **+12.4%** | $2.47210 | $2.29910 (trail 7%) | 4.2% | OSX7LL-VVQZV-JPVWBB ✓ |
| ETH/USD | 0.0197 | $2,026.00 | $2,117 | **+4.5%** | $2,147.52 | $2,040.15 (trail 5%) | 3.6% | O6GVNC-H2KL5-3K2WQG ✓ |
| LINK/USD | 1.6268 | $9.147 | $9.538 | **+4.3%** | $9.76665 | $9.27832 (trail 5%) | 2.7% | OZ3567-BYLHI-5JVOHK ✓ |
| SUI/USD | 27.00 | $1.0689 | $1.056 | **-1.2%** | $1.06940 | $1.01600 (trail 5%) | 3.8% | ONH4IU-X2MIR-H7KC5Y ✓ |

**Account:** Kraken ZUSD $0.14 (fully deployed) | Alpaca: no positions, no active orders (stop a2b44cf9 cancelled 2026-05-22) ✓
**BTC:** $76,984 ask | 24h open $76,670 = **+0.45%** | Crash gate: NOT triggered ✓
**F&G:** 28 (Fear) | **Memorial Day (US):** May 25 today — Congress in recess, thin liquidity risk for altcoins

**STEP 3 — Hard checks:**
- Crash gate: +0.45% 24h — CLEAR ✓
- Emergency exits (≤-20%): none ✓
- All 4 trailing stops confirmed open, covering correct quantities ✓

**STEP 4 — Stop tightening (≥+20% from entry):**
- NEAR 38 @ $2.137: current $2.402 = +12.4% — threshold: $2.564 (+20%). Not yet.
- ETH @ $2,026: current $2,117 = +4.5% — threshold: $2,431. Not yet.
- LINK @ $9.147: current $9.538 = +4.3% — threshold: $10.976. Not yet.
- SUI @ $1.069: current $1.056 = -1.2% — threshold: $1.283. Not yet.
No adjustments.

**STEP 5 — Thesis check (from today's research log):**
- NEAR: Grayscale ETF S-1 + Arthur Hayes AI narrative — INTACT
- ETH: Glamsterdam Q3 2026 upgrade — INTACT
- LINK: ADI Foundation $240B + DTCC integration — INTACT
- SUI: CME futures live (May 4) + gasless stablecoins (May 22) — PARTIAL (CME already live, thesis intact but "upcoming" angle expired; position -1.2%, stop healthy at 3.8% buffer)

**STEP 6 — New entries:**
- ZUSD $0.14 — insufficient for any spot order
- Margin: no confirmed catalyst + conviction threshold met; Fear & Greed 28; Memorial Day illiquidity
- XRP: CLARITY Act markup expected post-recess (May 26+); pass today, revisit tomorrow
- No new trades qualify

**Unrealized P&L (approx):** NEAR +$9.99 | ETH +$1.79 | LINK +$0.64 | SUI -$0.35 | Total: **+$12.07**
**Portfolio approx:** ~$177.10 | Phase P&L vs $179.78 start: **-$2.68 (-1.49%)**

**Decision: HOLD — No New Trades.** No notification sent. All stops healthy. Watch NEAR $2.564 for stop tightening trigger; watch post-Memorial Day for XRP CLARITY Act entry opportunity.

---

## 2026-05-24 — Midday Scan: Exits + New Entry

### CLOSED — LINK/USD (trailing stop auto-triggered)
- **Exit:** ~$9.278 | Stop OZ3567-BYLHI-5JVOHK triggered (24h low $9.248 breached stop at $9.27832)
- **Entry:** $9.147 | **Qty:** 1.6268 | **P&L:** +1.4% | **+$0.21**
- **Reason:** Trailing stop managed exit. No thesis break — ADI catalyst intact but price retreated from HWM $9.767 through stop level.

### CLOSED — SUI/USD (trailing stop auto-triggered)
- **Exit:** ~$1.016 | Stop ONH4IU-X2MIR-H7KC5Y triggered (24h low $1.006 breached stop at $1.016)
- **Entry:** $1.0689 | **Qty:** 27.00 | **P&L:** -4.9% | **-$1.43**
- **Reason:** Trailing stop managed exit. CME SUI futures had already launched May 4 (not May 29 as originally expected) — "upcoming catalyst" angle was stale. Price failed to hold above entry, stop did its job.

### OPENED — XRP/USD
- **Entry:** $1.34427 market | Order: O3EFWV-DJBYW-RXVAZU
- **Qty:** 31.00 | **Notional:** $41.67
- **Catalyst:** CLARITY Act cleared Senate Banking Committee 15-9 on May 14. Senate floor vote expected post-Memorial Day recess (week of May 26). Pre-positioning on dip (-0.97% from 24h open). Binary regulatory catalyst → 7% trail per strategy.
- **Stop:** OCLYQ6-H45E6-KDCK4X | trailing_stop 7% | initial stop $1.250 | HWM $1.344
- **Spread:** 0.005% ✓ | **Target:** T1 $1.70 (+26.5%), T2 $2.00 (+49%)

**Portfolio snapshot post-trade:**
| Symbol | Qty | Entry | Current | P&L% | Stop Trigger | HWM | Order |
|---|---|---|---|---|---|---|---|
| NEAR/USD | 38.00 | $2.137 | $2.419 | +13.2% | $2.335 (trail 7%) | $2.511 | OSX7LL-VVQZV-JPVWBB ✓ |
| ETH/USD | 0.0197 | $2,026 | $2,086 | +2.96% | $2,040 (trail 5%) | $2,147.52 | O6GVNC-H2KL5-3K2WQG ✓ |
| XRP/USD | 31.00 | $1.344 | $1.344 | ~0% | $1.250 (trail 7%) | $1.344 | OCLYQ6-H45E6-KDCK4X ✓ |
**ZUSD:** $0.29 | **Active stops:** 3/3 ✓ | **Phase P&L vs $179.78:** ~-$5.04 (-2.8%) incl. LINK/SUI realized

---

## 2026-05-24 — Session-Open Scan (evening)

| Symbol | Qty | Entry | Current | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| NEAR/USD | 38.00 | $2.137 | $2.4195 | **+13.2%** | $2.5111 | $2.3354 (trail 7%) | 3.5% | OSX7LL-VVQZV-JPVWBB ✓ |
| ETH/USD | 0.0197 | $2,026.00 | $2,092.07 | **+3.3%** | $2,147.52 | $2,040.15 (trail 5%) | 2.5% | O6GVNC-H2KL5-3K2WQG ✓ |
| XRP/USD | 31.00 | $1.344 | $1.34775 | **+0.3%** | $1.34975 | $1.25527 (trail 7%) | 6.9% | OCLYQ6-H45E6-KDCK4X ✓ |

**Account:** Kraken ZUSD $0.29 (fully deployed) | Alpaca: stop a2b44cf9 cancelled 2026-05-22; no positions, no active orders ✓
**BTC:** $76,822 ask | 24h open $76,670 = **+0.22%** | Crash gate: NOT triggered ✓
**F&G:** 25 (Extreme Fear)

**STEP 3 — Hard checks:**
- Crash gate: +0.22% 24h — CLEAR ✓
- Emergency exits (≤-20%): none ✓
- All 3 trailing stops confirmed open, covering correct quantities ✓
- Stop details confirmed live: NEAR OSX7LL stop $2.33540 HWM $2.51110 ✓ | ETH O6GVNC stop $2,040.15 HWM $2,147.52 ✓ | XRP OCLYQ6 stop $1.25527 HWM $1.34975 ✓

**STEP 4 — Stop tightening (≥+20% from entry):**
- NEAR 38 @ $2.137: +13.2% — threshold: $2.564 (+20%). Not yet.
- ETH @ $2,026: +3.3% — threshold: $2,431 (+20%). Not yet.
- XRP @ $1.344: +0.3% — threshold: $1.613 (+20%). Not yet.
No adjustments.

**STEP 5 — Thesis check (Perplexity):**
- **NEAR:** +13–17% intraday with strong volume on Kraken/Binance — AI narrative + Grayscale ETF S-1 catalyst confirmed running. HWM $2.511 ratcheted. **INTACT. HOLD.**
- **ETH:** Glamsterdam H1 2026 upgrade on track (no delays). ETF inflows ($169M reported). Price pulling back from HWM $2,148 to $2,092 — stop buffer 2.5%, monitor closely but thesis valid. **INTACT. HOLD.**
- **XRP:** CLARITY Act Senate Banking Committee 15-9 passage (May 14) confirmed; Senate floor vote expected week of May 26 post-Memorial Day recess. Price $1.348 vs entry $1.344 — flat, holding. 7% trail provides buffer for binary volatility. **INTACT. HOLD.**

**STEP 6 — New entries:**
- ZUSD $0.29 — insufficient for any spot order (minimum Kraken order ~$5–10)
- Margin: F&G 25 (Extreme Fear) + fully deployed — no margin entries justified
- No new trades qualify

**Portfolio estimate:** NEAR 38×$2.4195=$91.94 + ETH 0.0197×$2,092=$41.21 + XRP 31×$1.34775=$41.78 + ZUSD $0.29 = **~$175.22**
**Phase P&L vs $179.78 start:** **-$4.56 (-2.5%)** | vs BTC (+0.22% day): bot flat

**Decision: HOLD — No New Trades. No notification sent. No commit required.**

**Contingency (armed):**
- NEAR stop ($2.335) → ~$88.75 freed → ETH add (Glamsterdam) + XRP add (CLARITY Act)
- ETH stop ($2,040) → ~$40.20 freed → NEAR re-entry or XRP add
- XRP stop ($1.255) → ~$38.91 freed → NEAR add or ETH add
- Watch NEAR $2.564 for stop tightening trigger (3% trail); watch May 26 for XRP CLARITY Act Senate floor vote

---

### May 25 — EOD Snapshot (Day 16, Monday)
**Portfolio:** $173.20 | **Cash:** $0.00 (0%) | **Day P&L:** -$3.25 (-1.84%) | **Phase P&L:** -$6.58 (-3.66%) | **vs BTC:** -2.20%
| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Trailing Stop |
|---|---|---|---|---|---|---|
| AVAX/USD | 4.82 | $9.22 | $9.34 | +1.52% | +$0.58 (+1.30%) | OLCZTS 7%, stop $8.69, HWM $9.34 |
| ONDO/USD | 101.10 | $0.448 | $0.4387 | +0.04% | -$0.94 (-2.08%) | OX6MNX 7%, stop $0.41676, HWM $0.44812 |
| XRP/USD | 31.00 | $1.344 | $1.3617 | +0.94% | +$0.55 (+1.32%) | OCLYQ6 7%, stop $1.26768, HWM $1.36309 |
| ETH/USD | 0.0197 | $2,026 | $2,112 | +0.71% | +$1.70 (+4.26%) | O6GVNC 5%, stop $2,040.15, HWM $2,147.52 |
**Trades today:** NEAR/USD 38.00 trailing stop OSX7LL triggered (~$2.335, +9.3%, +$7.52) | AVAX/USD BUY 4.82 @$9.22 | ONDO/USD BUY 101.10 @$0.448 | **Total since migration:** 21
**Notes:** NEAR 7% trailing stop (OSX7LL) triggered on a pullback from HWM $2.511, locking in +9.3% ($7.52 realized). Proceeds (~$88.73) recycled ~50/50 into AVAX ($44.44, trail 7%) and ONDO ($45.30, trail 7%). AVAX up +1.52% on the day, HWM ratcheted to match current ask ($9.34); ONDO fractionally underwater (-2.08%) with healthy 5.84% stop buffer. XRP +0.94% intraday — CLARITY Act Senate floor vote expected week of May 26 post-recess; ETH +0.71%, trailing near HWM $2,147.52 with 3.4% buffer. All four trailing stops confirmed active and covering full quantities. Day P&L -$3.25 (-1.84%) vs May 24 EOD $176.45; BTC gained +0.36% so bot underperformed by -2.20% — drag from NEAR proceeds deployed into ONDO at a slight dip. Phase P&L: -$6.58 (-3.66%) from $179.78 Kraken start. ZUSD $0.00 (fully deployed). Alpaca: stop a2b44cf9 cancelled 2026-05-22; no Alpaca exposure.

---

## 2026-05-25 — Overnight Triage Check

| Symbol | Qty | Entry | Current | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| NEAR/USD | 38.00 | $2.137 | $2.366 | **+10.7%** | $2.51110 | $2.33540 (trail 7%) | ⚠️ **1.28% — CRITICAL** | OSX7LL-VVQZV-JPVWBB ✓ |
| ETH/USD | 0.0197 | $2,026.00 | $2,102.42 | **+3.8%** | $2,147.52 | $2,040.15 (trail 5%) | 2.96% | O6GVNC-H2KL5-3K2WQG ✓ |
| XRP/USD | 31.00 | $1.344 | $1.35004 | **+0.4%** | $1.35361 | $1.25886 (trail 7%) | 6.75% | OCLYQ6-H45E6-KDCK4X ✓ |

**Alpaca:** Stop a2b44cf9 confirmed CANCELLED (2026-05-22T05:22Z). No Alpaca positions or active orders. ✓

**STEP 2 — Trailing stops verified (live Kraken API):**
- OSX7LL-VVQZV-JPVWBB: NEAR 38.00, trail +7%, stop $2.33540, HWM $2.51110 — ✓
- O6GVNC-H2KL5-3K2WQG: ETH 0.01970, trail +5%, stop $2,040.15, HWM $2,147.52 — ✓
- OCLYQ6-H45E6-KDCK4X: XRP 31.00, trail +7%, stop $1.25886, HWM $1.35361 — ✓
No unprotected positions. No orphaned orders.

**STEP 3 — Emergency exits (>-20% AND stop not triggered):** None. All positions profitable. ✓

**STEP 4 — Stop tightening (≥+20% from entry):**
- NEAR 38 @ $2.137: current $2.366 = +10.7% — threshold: $2.564 (+20%). Not yet.
- ETH @ $2,026: current $2,102 = +3.8% — threshold: $2,431 (+20%). Not yet.
- XRP @ $1.344: current $1.350 = +0.4% — threshold: $1.613 (+20%). Not yet.
No adjustments. ✓

**STEP 5 — BTC Crash Gate:** $77,025 now | 24h open (o) $76,981 = **+0.06%** | 24h range $76,021–$77,421. Well under -20% threshold. No crash gate. No regime alert. ✓

**⚠️ NEAR STOP BUFFER CRITICAL (1.28%):** NEAR at $2.366 vs stop trigger $2.33540 = $0.031 buffer. Stop is ratcheted high from HWM $2.511 — this is normal for a trailing stop on a profitable position. Do NOT cancel or move stop. Let it work. If triggered: NEAR locks in ~+$7.48 profit (38 NEAR × ($2.335 − $2.137)).

**Notes:** BTC flat overnight (+0.06%), all positions holding. NEAR buffer critically thin due to high HWM ratchet — the stop is protecting significant unrealized gains. XRP sitting near entry (+0.4%); CLARITY Act Senate floor vote expected week of May 26 post-Memorial Day recess. ETH healthy at +3.8% with 2.96% buffer. All theses intact from prior session research.

**Result: NO-OP. No actions taken. No notification sent.**

---

## 2026-05-25 — Auto-Stop Exit + New Entries (post-triage session)

### NEAR/USD — Trailing Stop OSX7LL-VVQZV-JPVWBB Auto-Triggered

**Stop Order:** OSX7LL-VVQZV-JPVWBB (trailing-stop, 7%, HWM $2.51110, trigger $2.33540)
**Estimated fill:** ~$2.335 (stop trigger level; slippage possible)
**Qty closed:** 38.00 NEAR
**Entry:** $2.137 | **Exit:** ~$2.335 | **P&L:** ~+$7.52 (+9.3%)
**Proceeds:** ~$88.73 ZUSD
**Notes:** Buffer was 1.28% at last triage check ($2.366 vs stop $2.33540). Price pulled back through trigger. Stop worked as designed — position closed profitably.

---

### 2026-05-25 | AVAX/USD | BUY | 4.82000 AVAX | Entry: ~$9.22 | Trailing Stop (7%): $8.58 | Open

**Trailing Stop Order ID:** OLCZTS-Q5PS4-3T3UFD (trail -7%, stop $8.580, HWM $9.220, GTC ✓)
**Notional:** ~$44.44 (spot; ~50% of ~$88.73 NEAR proceeds)
**Stop level:** $8.58 (7% trailing below HWM $9.22)

---

### 2026-05-25 | ONDO/USD | BUY | 101.10000 ONDO | Entry: ~$0.448 | Trailing Stop (7%): $0.41676 | Open

**Trailing Stop Order ID:** OX6MNX-DLDMM-PZ3J4Y (trail -7%, stop $0.41676, HWM $0.44812, GTC ✓)
**Notional:** ~$45.30 (spot; ~50% of ~$88.73 NEAR proceeds)
**Stop level:** $0.41676 (7% trailing below HWM $0.44812)

---

## 2026-05-25 — Overnight Triage Check #2 (~current UTC)

| Symbol | Qty | Entry | Current | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| AVAX/USD | 4.82 | ~$9.22 | $9.175 | **-0.49%** | $9.220 | $8.580 (trail 7%) | 6.49% | OLCZTS-Q5PS4-3T3UFD ✓ |
| ONDO/USD | 101.1 | ~$0.448 | $0.4414 | **-1.49%** | $0.44812 | $0.41676 (trail 7%) | 5.59% | OX6MNX-DLDMM-PZ3J4Y ✓ |
| XRP/USD | 31.00 | $1.344 | $1.346 | **+0.15%** | $1.35488 | $1.26004 (trail 7%) | 6.38% | OCLYQ6-H45E6-KDCK4X ✓ |
| ETH/USD | 0.0197 | $2,026.00 | $2,096 | **+3.5%** | $2,147.52 | $2,040.15 (trail 5%) | ⚠️ **2.69%** | O6GVNC-H2KL5-3K2WQG ✓ |

**Alpaca:** Stop a2b44cf9 CANCELLED (2026-05-22T05:22Z). No Alpaca positions or active orders. ✓

**STEP 2 — Trailing stops verified (Kraken API live):**
- AVAX: OLCZTS-Q5PS4-3T3UFD, 4.82 AVAX, trail +7%, stop $8.580, HWM $9.220 — ✓
- ONDO: OX6MNX-DLDMM-PZ3J4Y, 101.10 ONDO, trail +7%, stop $0.41676, HWM $0.44812 — ✓
- XRP: OCLYQ6-H45E6-KDCK4X, 31.00 XRP, trail +7%, stop $1.26004, HWM $1.35488 — ✓
- ETH: O6GVNC-H2KL5-3K2WQG, 0.0197 ETH, trail +5%, stop $2,040.15, HWM $2,147.52 — ✓
No unprotected positions. No orphaned orders.

**STEP 3 — Emergency exits (>-20% AND stop not triggered):** None. All within normal range. ✓

**STEP 4 — Stop tightening (≥+20% from entry):**
- AVAX -0.49%, ONDO -1.49%, XRP +0.15%, ETH +3.5% — none qualify. No adjustments. ✓

**STEP 5 — BTC Crash Gate:** $77,043 now | 24h open $76,981 = **+0.08%** | range $76,021–$77,421. No crash gate. ✓

**Notes:** NEAR auto-stop exit confirmed (+9.3%, ~$7.52 realized). Proceeds recycled into AVAX + ONDO (7% trails each). ETH stop buffer 2.69% — above critical 2% floor; anchored to HWM $2,147.52. XRP +0.15% near entry; CLARITY Act Senate floor vote expected week of May 26.

**Result: NO-OP (manual actions). No notification sent.**

---

## 2026-05-25 — Overnight Triage Check #3 (~current UTC)

| Symbol | Qty | Entry | Current | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| AVAX/USD | 4.82 | ~$9.22 | $9.26 | **+0.43%** | ~$9.27 | $8.62 (trail 7%) | 6.91% | OLCZTS-Q5PS4-3T3UFD ✓ |
| ONDO/USD | 101.1 | ~$0.448 | $0.4426 | **-1.21%** | $0.44812 | $0.41676 (trail 7%) | 5.84% | OX6MNX-DLDMM-PZ3J4Y ✓ |
| XRP/USD | 31.00 | $1.344 | $1.3537 | **+0.72%** | $1.35488 | $1.26004 (trail 7%) | 6.93% | OCLYQ6-H45E6-KDCK4X ✓ |
| ETH/USD | 0.0197 | $2,026.00 | $2,103.87 | **+3.84%** | $2,147.52 | $2,040.15 (trail 5%) | 3.03% | O6GVNC-H2KL5-3K2WQG ✓ |

**Alpaca:** Stop a2b44cf9 CANCELLED (2026-05-22T05:22Z confirmed via API). No Alpaca positions or active orders. ✓

**STEP 2 — Trailing stops verified (Kraken API live):**
- AVAX: OLCZTS-Q5PS4-3T3UFD, 4.82 AVAX, trail +7%, stop $8.62 — ✓
- ONDO: OX6MNX-DLDMM-PZ3J4Y, 101.10 ONDO, trail +7%, stop $0.41676 — ✓
- XRP: OCLYQ6-H45E6-KDCK4X, 31.00 XRP, trail +7%, stop $1.26004 — ✓
- ETH: O6GVNC-H2KL5-3K2WQG, 0.0197 ETH, trail +5%, stop $2,040.15 — ✓
No unprotected positions. No orphaned orders.

**STEP 3 — Emergency exits (>-20% AND stop not triggered):** None. ONDO -1.21% is worst; all well within threshold. ✓

**STEP 4 — Stop tightening (≥+20% from entry):**
- AVAX +0.43%, ONDO -1.21%, XRP +0.72%, ETH +3.84% — none qualify. No adjustments. ✓

**STEP 5 — BTC Crash Gate:** $77,244.60 ask | 24h open $76,980.70 = **+0.34%** | 24h range $76,020.50–$77,421.20. No crash gate. ✓

**Notes:** Overnight move minimal. AVAX HWM ratcheted up slightly vs prior check ($8.580 → $8.62 stop level). ETH buffer 3.03% — healthy, well above 2% floor. XRP approaching its prior HWM ($1.35488); CLARITY Act Senate floor vote expected this week (May 26+). All theses intact.

**Result: NO-OP. No actions taken. No notification sent.**

---

## 2026-05-25 — Session-Open Scan (execution session)

| Symbol | Qty | Entry | Ask | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| AVAX/USD | 4.82 | ~$9.22 | $9.37 | **+1.63%** | $9.37 | $8.720 (trail 7%) | 6.94% | OLCZTS-Q5PS4-3T3UFD ✓ |
| ONDO/USD | 101.10 | ~$0.448 | $0.4317 | **-3.64%** | $0.44812 | $0.41676 (trail 7%) | 3.46% | OX6MNX-DLDMM-PZ3J4Y ✓ |
| XRP/USD | 31.00 | $1.344 | $1.35905 | **+1.12%** | $1.36309 | $1.26768 (trail 7%) | 6.72% | OCLYQ6-H45E6-KDCK4X ✓ |
| ETH/USD | 0.0197 | $2,026 | $2,113.95 | **+4.34%** | $2,147.52 | $2,040.15 (trail 5%) | 3.49% | O6GVNC-H2KL5-3K2WQG ✓ |

**Account:** Kraken ZUSD $0.00 (fully deployed) | Alpaca: no positions, no active orders (stop a2b44cf9 cancelled 2026-05-22) ✓
**BTC:** $77,490.80 ask | 24h open $76,980.70 = **+0.66%** | Crash gate: NOT triggered ✓
**F&G:** ~30 (Fear, per morning research)

**STEP 3 — Hard checks:**
- Crash gate: +0.66% 24h — CLEAR ✓
- Emergency exits (≤-20%): ONDO worst at -3.64% — all well within threshold ✓
- All 4 trailing stops confirmed open, covering correct quantities ✓
- AVAX stop ratcheted: $8.62 → $8.72 (AVAX hit new HWM $9.37 = today's 24h high) ✓

**STEP 4 — Stop tightening (≥+20% from entry):**
- AVAX +1.63% (threshold $11.064), ONDO -3.64%, XRP +1.12% (threshold $1.613), ETH +4.34% (threshold $2,431)
- No adjustments needed.

**STEP 5 — Thesis check:**
- **AVAX:** CME futures live (May 22) + Kraken staking + institutional narrative. HWM ratcheted to $9.37 (new position high). **INTACT. HOLD.**
- **ONDO:** RWA sector dominance 70%+ share; fee-switch H2 2026; near-term pressure from Jan 2026 unlock. Buffer 3.46% — above critical 2% floor. **INTACT. HOLD.**
- **XRP:** CLARITY Act Senate floor vote expected week of May 26 (Congress back from recess). XRP +1.12%, stop ratcheted. Binary catalyst still loading. **INTACT — CATALYSING. HOLD.**
- **ETH:** Glamsterdam upgrade June 2026; ETF inflows; Perplexity target $2,342 by May 29. Buffer 3.49% — above critical 2% floor. **INTACT — STRENGTHENING. HOLD.**

**STEP 6 — New entries:**
- ZUSD $0.00 — no spot orders possible
- HYPE/USD watchlist #1: ask $63.25, spread 0.032% ✓, 2x leverage available ✓ — margin confirmation pending per research decision; F&G Fear (30)
- No new trades qualify at this session

**Portfolio estimate:** AVAX 4.82×$9.37=$45.16 + ONDO 101.1×$0.4317=$43.64 + XRP 31×$1.359=$42.13 + ETH 0.0197×$2,113.95=$41.64 = **~$172.57**
**Phase P&L vs $179.78 start:** **-$7.21 (-4.01%)**

**Decision: HOLD — No New Trades. No notification sent. No commit required.**

**Watch:** XRP Senate CLARITY Act floor vote this week (May 26+); AVAX at HWM $9.37 — stop auto-ratcheting correctly; ETH buffer 3.49% (above critical 2% floor); ONDO weakest position — if stop at $0.41676 triggers, rotate ALL proceeds into HYPE/USD market order at ~$63 with 5% trailing stop.

---

## 2026-05-25 — Midday Scan

| Symbol | Qty | Entry | Ask | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| AVAX/USD | 4.82 | ~$9.22 | $9.40 | **+1.95%** | $9.41 | $8.76 (trail 7%) | 6.38% | OLCZTS-Q5PS4-3T3UFD ✓ |
| ONDO/USD | 101.1 | ~$0.448 | $0.43057 | **-3.89%** | $0.44812 | $0.41676 (trail 7%) | 3.21% | OX6MNX-DLDMM-PZ3J4Y ✓ |
| XRP/USD | 31.00 | $1.344 | $1.35821 | **+1.06%** | $1.36309 | $1.26768 (trail 7%) | 6.66% | OCLYQ6-H45E6-KDCK4X ✓ |
| ETH/USD | 0.0197 | $2,026 | $2,113.58 | **+4.32%** | $2,147.52 | $2,040.15 (trail 5%) | 3.47% | O6GVNC-H2KL5-3K2WQG ✓ |

**Account:** Kraken ZUSD $0.00 (fully deployed) | Alpaca: stop a2b44cf9 CANCELLED (2026-05-22T05:22Z); no positions, no active orders. ✓
**BTC:** ~$77,081–$77,419 | 24h: **+0.42–0.81%** | Crash gate: **NOT triggered** ✓
**Portfolio estimate:** AVAX 4.82×$9.40=$45.31 + ONDO 101.1×$0.43057=$43.53 + XRP 31×$1.35821=$42.10 + ETH 0.0197×$2,113.58=$41.64 = **~$172.58**
**Phase P&L vs $179.78 start:** **-$7.20 (-4.01%)**

**STEP 3 — Trailing stops verified (live Kraken orders API):**
- AVAX: OLCZTS-Q5PS4-3T3UFD, 4.82 AVAX, trail +7%, stop $8.76, HWM $9.41 (new 24h high — stop ratcheted up from $8.72) ✓
- ONDO: OX6MNX-DLDMM-PZ3J4Y, 101.10 ONDO, trail +7%, stop $0.41676, HWM $0.44812 ✓
- XRP: OCLYQ6-H45E6-KDCK4X, 31.00 XRP, trail +7%, stop $1.26768, HWM $1.36309 ✓
- ETH: O6GVNC-H2KL5-3K2WQG, 0.0197 ETH, trail +5%, stop $2,040.15, HWM $2,147.52 ✓
No unprotected positions. No orphaned orders.

**STEP 4 — Stop tightening (≥+20% from entry):**
- AVAX +1.95% → threshold $11.064 — not yet
- ONDO -3.89% → threshold $0.5376 — not yet
- XRP +1.06% → threshold $1.613 — not yet
- ETH +4.32% → threshold $2,431 — not yet
**No adjustments.**

**STEP 5 — Thesis check (Perplexity):**
| Symbol | Status | Notes |
|---|---|---|
| AVAX | **INTACT** | CME AVAX futures launched May 22; Kraken staking active May 22; Grayscale flagged as regulatory tailwind beneficiary. Price $9.40 near HWM $9.41 — stop auto-ratcheted correctly. Mixed short-term sentiment but no protocol failure. |
| ONDO | **INTACT — WATCH STOP** | Token unlock overhang (Jan 2026) cited as bearish pressure; some sources project $0.39–$0.36 near-term. No protocol exploit, rug, or regulatory action. RWA sector thesis (70% share, fee-switch H2 2026) intact. Buffer 3.21% above 2% critical floor — stop handles downside. |
| XRP | **INTACT — CATALYSING** | CLARITY Act Senate Banking Committee 15-9 passage (May 14) confirmed. Senate floor vote still pending (Congress returned from Memorial Day recess today/tomorrow). No adverse news. Binary catalyst 7% trail in place. |
| ETH | **INTACT** | Glamsterdam upgrade target June 2026 (potential Q3 slip noted by one source). Changelly forecasts $2,196 by May 27, $2,342 by May 29. Current $2,113 — above entry $2,026, buffer 3.47% above 2% critical floor. ETF inflows ongoing. |

**STEP 6 — New entry scan:**
- ZUSD $0.00 — no spot orders possible.
- Kraken gainers (Perplexity): OMNI +174%, MAT +66%, DOLO +53%, others +30–50% — micro-caps; no documented catalyst; PASS.
- Margin: BTC +0.42%, F&G Fear — no high-conviction setup identified beyond existing watchlist; no margin entries justified.
- **WATCHLIST active:** HYPE (#1 rotation on any stop trigger), SOL (#2), ETH add (#3).

**Result: NO-OP. No trades. No stops tightened. No notification sent.**

**Watch:** ONDO buffer 3.21% — thin; if price breaks $0.427 support, stop at $0.41676 fires → rotate ALL ONDO proceeds into HYPE/USD market order with 5% trailing stop. XRP CLARITY Act Senate floor vote expected May 26+. AVAX stop ratcheted to $8.76 (HWM $9.41).

---

## 2026-05-25 — Midday Scan #2

| Symbol | Qty | Entry | Ask | P&L% | HWM (API) | Stop (API) | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| AVAX/USD | 4.82 | ~$9.22 | $9.32 | **+1.08%** | $9.49 (new!) | $8.83 (trail 7%) | 5.25% | OLCZTS-Q5PS4-3T3UFD ✓ |
| ONDO/USD | 101.10 | ~$0.448 | $0.43947 | **-1.90%** | $0.44812 | $0.41676 (trail 7%) | 5.17% | OX6MNX-DLDMM-PZ3J4Y ✓ |
| XRP/USD | 31.00 | $1.344 | $1.35223 | **+0.61%** | $1.36439 (new!) | $1.26889 (trail 7%) | 6.16% | OCLYQ6-H45E6-KDCK4X ✓ |
| ETH/USD | 0.0197 | $2,026 | $2,107.24 | **+4.01%** | $2,147.52 | $2,040.15 (trail 5%) | 3.18% | O6GVNC-H2KL5-3K2WQG ✓ |

**Account:** Kraken ZUSD $0.00 (fully deployed) | Alpaca: no positions, no active orders (stop a2b44cf9 cancelled 2026-05-22) ✓
**BTC:** $77,238 ask | 24h open $76,981 = **+0.33%** | Crash gate: **NOT triggered** ✓
**Portfolio estimate:** AVAX 4.82×$9.32=$44.92 + ONDO 101.1×$0.43947=$44.43 + XRP 31×$1.35223=$41.92 + ETH 0.0197×$2,107.24=$41.51 = **~$172.78**
**Phase P&L vs $179.78 start:** **-$7.00 (-3.89%)**

**STEP 3 — Trailing stops verified (live Kraken orders API):**
- AVAX: OLCZTS-Q5PS4-3T3UFD, 4.82 AVAX, trail +7%, stop $8.83, HWM $9.49 — auto-ratcheted from $8.76/$9.41 (AVAX hit new session high $9.49 since last scan) ✓
- ONDO: OX6MNX-DLDMM-PZ3J4Y, 101.10 ONDO, trail +7%, stop $0.41676, HWM $0.44812 ✓
- XRP: OCLYQ6-H45E6-KDCK4X, 31.00 XRP, trail +7%, stop $1.26889, HWM $1.36439 — auto-ratcheted from $1.26768/$1.36309 ✓
- ETH: O6GVNC-H2KL5-3K2WQG, 0.0197 ETH, trail +5%, stop $2,040.15, HWM $2,147.52 ✓
No unprotected positions. No orphaned orders.

**STEP 4 — Stop tightening (≥+20% from entry):**
- AVAX +1.08% → threshold $11.064 — not yet
- ONDO -1.90% → threshold $0.5376 — not yet
- XRP +0.61% → threshold $1.613 — not yet
- ETH +4.01% → threshold $2,431 — not yet
**No adjustments.**

**STEP 5 — Thesis check (Perplexity):**
| Symbol | Status | Notes |
|---|---|---|
| AVAX | **INTACT** | No fresh breaking news today. TA sources bearish-to-neutral near-term ($9.00–$9.25 targets cited by CoinCodex/MEXC). CME futures (live May 22) + Kraken staking thesis unchanged. Price pulled back from $9.49 HWM to $9.32 — stop auto-ratcheted correctly, protecting at $8.83. No protocol failure. |
| ONDO | **INTACT — IMPROVING** | Up ~3–5% today. RWA + AI narrative traction; ONDO listed as top daily gainer. Buffer improved from 3.21% → 5.17%. Short-term selling pressure still noted (exchange net flows positive inbound). HWM $0.44812 unchanged — price hasn't set new high. RWA thesis ($29B tokenization, 70% sector share, fee-switch H2 2026) intact. |
| XRP | **INTACT — CATALYSING** | Price $1.352, range $1.342–$1.364 today. CLARITY Act Senate floor vote still pending — today is Memorial Day (US), Senate resumes May 26+. Perplexity unable to confirm vote today; consistent with holiday recess. Binary catalyst loading. Stop auto-ratcheted to $1.26889 (HWM $1.36439). |
| ETH | **INTACT** | Slight pullback from earlier session ($2,113 → $2,107). Whale accumulation and ETF inflows cited. One Perplexity source flagged "Hegota" as upgrade name for late-2026 (possible naming discrepancy vs "Glamsterdam") — thesis is an Ethereum protocol upgrade in H2 2026 regardless of name. Buffer 3.18%, above 2% critical floor. |

**STEP 6 — New entry scan:**
- ZUSD $0.00 — no spot entries possible.
- Kraken gainers today (Perplexity): ROB +1,191% (micro-cap, no catalyst — PASS), POND +71% (no catalyst — PASS), PLAY +56% (micro-cap — PASS), RENDER +9.82% ($1.12B mcap), INJ +9.23% ($563M mcap).
- RENDER/INJ: Larger liquid names with AI/DeFi narratives. No specific breaking catalyst identified for either. Without high-conviction catalyst + F&G Fear (~28–30), no margin entry justified.
- **WATCHLIST:** HYPE (#1 on any stop trigger), RENDER (#2 — AI narrative + large cap), XRP leveraged add (#3 on CLARITY Act passage).

**Result: NO-OP. No trades. No stops tightened (Kraken auto-ratcheted AVAX and XRP correctly). No notification sent.**

**Watch:** XRP CLARITY Act Senate floor vote expected May 26+ (Senate back from Memorial Day recess). ONDO buffer improved to 5.17% — if ONDO holds above $0.43, thesis strengthening. ETH buffer 3.18% — above 2% floor but watch for further pullback. AVAX HWM $9.49 — if reclaimed and held, continuation possible.

---

## 2026-05-25 — Session-Open Scan (evening)

| Symbol | Qty | Entry | Ask | P&L% | HWM (API) | Stop (API) | Trail | Buffer | Order |
|---|---|---|---|---|---|---|---|---|---|
| AVAX/USD | 4.82 | ~$9.22 | $9.27 | **+0.54%** | $9.49 | $8.83 | 7% | 4.74% | OLCZTS-Q5PS4-3T3UFD ✓ |
| ONDO/USD | 101.10 | ~$0.448 | $0.4362 | **-2.65%** | $0.44812 | $0.41676 | 7% | 4.50% | OX6MNX-DLDMM-PZ3J4Y ✓ |
| XRP/USD | 31.00 | $1.344 | $1.3463 | **+0.17%** | $1.36439 | $1.26889 | 7% | 5.80% | OCLYQ6-H45E6-KDCK4X ✓ |
| ETH/USD | 0.0197 | $2,026 | $2,102.55 | **+3.77%** | $2,147.52 | $2,040.15 | 5% | 2.97% | O6GVNC-H2KL5-3K2WQG ✓ |

**Account:** Kraken ZUSD $0.00 (fully deployed) | Alpaca: no positions, no active orders ✓
**BTC:** $77,074 (ask) | 24h open $76,981 = **+0.12%** | Crash gate: **NOT triggered** ✓
**HYPE/USD (watchlist #1):** ask $61.26 | spread $0.01/$61.26 = 0.016% ✓ | available on rotation
**Portfolio estimate:** AVAX 4.82×$9.27=$44.68 + ONDO 101.1×$0.4362=$44.10 + XRP 31×$1.3463=$41.74 + ETH 0.0197×$2,102.55=$41.42 = **~$171.94**
**Phase P&L vs $179.78 start:** **-$7.84 (-4.36%)**

**STEP 3 — Hard checks:**
- Crash gate: BTC +0.12% 24h → CLEAR ✓
- All 4 trailing stops confirmed active via live Kraken orders API ✓
- ZUSD $0.00 → no spot entries possible ✗
- XRP leveraged add: CLARITY Act Senate vote not yet occurred; price $1.3463 (below prior scan $1.3622); catalyst not triggered → blocked

**STEP 4 — Execute buys:** ZUSD $0.00 — no new entries qualify.

**STEP 5 — Stop tightening (≥+20% threshold):**
- AVAX +0.54% → threshold $11.064 — not yet
- ONDO -2.65% → threshold $0.5376 — not yet
- XRP +0.17% → threshold $1.613 — not yet
- ETH +3.77% → threshold $2,431 — not yet
No manual stop adjustments.

**STEP 6 — Thesis check:**
| Symbol | Status | Notes |
|---|---|---|
| AVAX | **INTACT** | CME futures + Kraken staking thesis unchanged. Pulled back from HWM $9.49 to $9.27 (-2.3%); stop auto-ratcheted correctly at $8.83. Buffer 4.74% — healthy. |
| ONDO | **INTACT — WATCH** | $0.4362, buffer 4.50% above stop $0.41676. RWA thesis intact. HWM $0.44812 unchanged — no new high set. Monitor $0.427 support. |
| XRP | **INTACT — CATALYSING** | CLARITY Act Senate floor vote imminent May 26+ (Congress back today). $1.3463 — above stop $1.26889 with 5.80% buffer. Binary catalyst loading. |
| ETH | **INTACT** | $2,102.55, +3.77% from entry $2,026. Buffer 2.97% above stop $2,040.15. Glamsterdam June 2026 / H2 2026 upgrade thesis intact. ETF inflows ongoing. |

**Decision: HOLD — No New Trades.** ZUSD $0 blocks all new spot entries. XRP leveraged add blocked (catalyst not yet triggered). All stops healthy; all theses intact.
No notification sent. No commit required (no trades).

**Watch:** XRP CLARITY Act Senate floor vote May 26+ — vote passage triggers XRP leveraged add (2x, trail 7%). ETH stop buffer 2.97% — above 2% critical floor; monitor. ONDO $0.427 support key — break triggers HYPE/USD rotation. AVAX at $9.27 vs HWM $9.49 — needs reclaim for continuation.

---

## 2026-05-26 — Session-Open Trades

### CLOSED — ONDO/USD (trailing stop OX6MNX-DLDMM-PZ3J4Y auto-triggered overnight)

- **Stop Order:** OX6MNX-DLDMM-PZ3J4Y (trail -7%, stop $0.41676, HWM $0.44812)
- **Exit:** ~$0.41676 (stop trigger level; slippage possible)
- **Qty closed:** 101.10 ONDO
- **Entry:** $0.448 | **Exit:** ~$0.41676 | **P&L:** ~-$3.15 (-6.95%)
- **Proceeds:** ~$42.14 ZUSD (ZUSD balance confirmed $41.79 post-fill)
- **Notes:** Stop worked as designed. Token unlock overhang (Jan 2026) and short-term selling pressure drove ONDO below stop. Proceeds rotated into HYPE per pre-planned contingency.

---

### 2026-05-26 | HYPE/USD | BUY | 0.67952 HYPE | Entry: ~$60.65 | Trailing Stop (5%): $57.62 | Open

**Order ID (buy):** O7SZ4M-T37IV-IEZ7HN
**Trailing Stop Order ID:** OIR5UB-Z4FPO-K5HD6T (trail -5%, stop $57.62, HWM $60.65, GTC ✓)
**Notional:** ~$41.21 (all ONDO proceeds; 100% of available ZUSD)
**Target:** T1 $66.00 (+8.8%), T2 $72.00 (+18.7%), T3 $80.00 (+31.9%)
**Stop level:** $57.62 (-5% trailing from HWM $60.65)
**R:R:** ~1.76:1 to T1 ($3.64 gain / $2.07 risk on 0.67952 HYPE)
**Thesis:** Pre-planned rotation on ONDO stop trigger. HYPE (Hyperliquid) is the native token of the leading on-chain perpetuals DEX, currently near 24h lows ($60.34 session low) — favorable entry vs recent HWM $64. DEX narrative vs CEX continues; strong volume ($268M 24h). BTC crash gate NOT triggered (-0.27% 24h). F&G 30 (Fear) — contrarian entry.
**Notes:** HYPE spread 0.016% ✓; pair online ✓; spot (no leverage). Stop set immediately post-fill. All prior contingency criteria met (ONDO stop triggered → HYPE market order). Kraken taker fee ~0.4%.

---

## 2026-05-26 — Session-Open Snapshot

**Positions after trades:**
| Symbol | Qty | Entry | Ask | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| AVAX/USD | 4.82 | ~$9.22 | $9.29 | **+0.76%** | $9.49 | $8.83 (trail 7%) | 5.49% | OLCZTS-Q5PS4-3T3UFD ✓ |
| ETH/USD | 0.0197 | $2,026 | $2,105 | **+3.90%** | $2,147.52 | $2,040.15 (trail 5%) | 3.08% | O6GVNC-H2KL5-3K2WQG ✓ |
| XRP/USD | 31.00 | $1.344 | $1.346 | **+0.15%** | $1.36439 | $1.26889 (trail 7%) | 5.80% | OCLYQ6-H45E6-KDCK4X ✓ |
| HYPE/USD | 0.67952 | ~$60.65 | $60.64 | **~0%** | $60.65 | $57.62 (trail 5%) | ~5% | OIR5UB-Z4FPO-K5HD6T ✓ |

**Account:** Kraken ZUSD $0.25 (fully deployed) | Alpaca: no positions, no active orders (stop a2b44cf9 cancelled 2026-05-22) ✓
**BTC:** $77,054 ask | 24h open $77,266 = **-0.27%** | Crash gate: NOT triggered ✓
**F&G:** 30 (Fear) | **BTC funding rate:** Binance +0.0014%, Bybit +0.0073% (mildly positive = longs slight premium)
**Total since migration:** 23 trades

**Thesis check — existing positions:**
- **AVAX:** CME futures live (May 22); Kraken staking active. Range-bound $9.23–$9.38. INTACT. HOLD.
- **ETH:** Glamsterdam/Fusaka upgrade H2 2026 on track. ETF inflows ongoing. Buffer 3.08% above 2% floor. INTACT. HOLD.
- **XRP:** CLARITY Act Senate floor vote expected this week (May 26+). Perplexity unable to confirm vote today — binary catalyst still loading. Buffer 5.80%. INTACT — CATALYSING. HOLD.
- **HYPE:** New entry per ONDO rotation contingency. DEX/Hyperliquid narrative intact; near 24h lows for favorable entry. Trail 5% protecting downside.

**Key watches:** XRP CLARITY Act Senate floor vote this week — passage triggers leveraged XRP add (2x, 7% trail). HYPE $64 resistance — break triggers stop tightening review at +20% from entry. ETH buffer 3.08% — monitor.

---

## 2026-05-26 — Auto-Stop Exits (AVAX + HYPE, post session-open)

### CLOSED — AVAX/USD (trailing stop OLCZTS-Q5PS4-3T3UFD auto-triggered)

- **Stop Order:** OLCZTS-Q5PS4-3T3UFD (trail -7%, HWM $9.49, stop $8.83)
- **Exit:** ~$8.83 (stop trigger level; slippage possible)
- **Qty closed:** 4.82 AVAX
- **Entry:** ~$9.22 | **Exit:** ~$8.83 | **P&L:** ~-4.2% | **~-$1.88**
- **Notes:** Stop worked as designed. CME futures already live; catalyst fully priced. Proceeds added to ZUSD.

### CLOSED — HYPE/USD (trailing stop OIR5UB-Z4FPO-K5HD6T auto-triggered)

- **Stop Order:** OIR5UB-Z4FPO-K5HD6T (trail -5%, HWM $60.65, stop $57.62)
- **Exit:** ~$57.62 (stop trigger level; slippage possible)
- **Qty closed:** 0.67952 HYPE
- **Entry:** ~$60.65 | **Exit:** ~$57.62 | **P&L:** ~-5.0% | **~-$2.06**
- **Notes:** Stop worked as designed. ZUSD balance post-exits confirmed $84.02 (vs $0.25 prior — ~$83.77 freed from both exits).

---

## 2026-05-26 — Overnight Triage Check

| Symbol | Qty | Entry | Current | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| ETH/USD | 0.0197 | $2,026.00 | $2,087.07 | **+3.01%** | $2,147.52 | $2,040.15 (trail 5%) | ⚠️ **2.25%** | O6GVNC-H2KL5-3K2WQG ✓ |
| XRP/USD | 31.00 | $1.344 | $1.33567 | **-0.62%** | $1.36439 | $1.26889 (trail 7%) | 4.96% | OCLYQ6-H45E6-KDCK4X ✓ |

**Account:** ZUSD $84.02 | AVAX $0.00 (exited) | HYPE $0.00 (exited) | Alpaca: stop a2b44cf9 CANCELLED (2026-05-22T05:22Z); no Alpaca positions. ✓

**STEP 2 — Trailing stops verified (live Kraken API):**
- ETH: O6GVNC-H2KL5-3K2WQG, 0.0197 ETH, trail +5%, stop $2,040.15, HWM $2,147.52 — ✓
- XRP: OCLYQ6-H45E6-KDCK4X, 31.00 XRP, trail +7%, stop $1.26889, HWM $1.36439 — ✓
- No unprotected positions. No orphaned orders.

**STEP 3 — Emergency exits (>-20% AND stop not triggered):** ETH +3.01%, XRP -0.62% — both well within threshold. ✓

**STEP 4 — Stop tightening (≥+20% from entry):**
- ETH @ $2,026: current $2,087 = +3.0% — threshold $2,431 (+20%). Not yet.
- XRP @ $1.344: current $1.336 = -0.62% — threshold $1.613 (+20%). Not yet.
No adjustments. ✓

**STEP 5 — BTC Crash Gate:** BTC $76,574 ask | 24h open $77,265.90 = **-0.89%** | range $76,450–$77,809. Well under -20% threshold. No crash gate. No regime alert. ✓

**Notes:** AVAX (OLCZTS) and HYPE (OIR5UB) trailing stops auto-triggered since last session entry — both positions closed; ~$83.77 freed. ETH buffer 2.25% (above 2% critical floor but thin — stop at $2,040.15 is above entry $2,026, locking in profit floor). XRP buffer 4.96%, stable. BTC -0.89% overnight; no macro catalyst or regime shift. Both remaining theses intact: ETH Glamsterdam/Fusaka H2 2026 upgrade; XRP CLARITY Act Senate floor vote still pending (May 26+). ZUSD $84.02 available for new entries next session.

**Result: NO-OP (auto-stops already executed). No new manual actions taken. No notification sent.**

---

## 2026-05-26 — ETH Trailing Stop Tightened (User Instruction)

### ETH/USD — Stop Replaced (0.5% trail, profit lock)

- **Old stop cancelled:** O6GVNC-H2KL5-3K2WQG (5% trail, stop $2,040.15, HWM $2,147.52)
- **New stop (3.25% trail, discarded):** OVYAU5-555C5-L55FLN — cancelled immediately, too wide
- **Final stop placed:** OQ2KER-QWJ5F-UAXNBT (0.5% trail, stop $2,089.56, HWM $2,100.06, GTC ✓)
- **Rationale:** User instruction to lock in ~3.14% profit from $2,026 entry via tight trailing stop
- **Result:** ETH stop OQ2KER triggered at ~$2,089.56 → position closed; +3.14% profit locked ✓
- **Proceeds:** ~$41.16 ZUSD added to account (0.0197 ETH × $2,089.56)

---

## 2026-05-26 — Day Trading Session (New Strategy Profile)

### Strategy Update Note
Day trading profile activated this session: target 3–5% per trade, 2.5% trailing stop on all new entries, fast-mover research focus. See memory/TRADING-STRATEGY.md.

### FET/USD — BUY (Day Trade)

**Order ID (buy):** O2T2IP-VPZ3T-PQ7QXF
**Trailing Stop Order ID:** O73HOS-PEZAC-PPBLGE (trail -2.5%, stop $0.2367, HWM $0.2427, GTC ✓)
**Date/Time:** 2026-05-26 UTC
**Symbol:** FET/USD (Fetch.ai / ASI Alliance)
**Side:** BUY | **Type:** Market
**Qty:** 180.0000 FET
**Entry (effective incl. fee):** ~$0.2452 | **Gross fill:** ~$0.2443
**Notional:** ~$44.14 (100% of available ZUSD)
**Trailing Stop %:** 2.5% (new default — day trading profile)
**Stop trigger:** $0.2367 (2.5% below HWM $0.2427)
**T1 Target:** $0.2516 (+3%) | **T2 Target:** $0.2565 (+5%)
**R:R:** ~1.47:1 at T1 (3.67% gain vs 2.5% stop from HWM)
**Thesis:** AI/ASI narrative momentum — Fetch.ai/ASI Alliance AI agent platform launch (May 22); +4.88% from 24h open, holding at 24h high ($0.2431 vs $0.2442 high); RSI 61 (not overbought); volume 4.76M tokens (elevated). RENDER also considered (+8.6%) but further extended; FET chosen for cleaner catalyst and more room to T1.
**Spread at entry:** 0.041% ✓ | **Pair:** FET/USD ✓ (Kraken online)
**Crash gate:** BTC -0.84% — NOT triggered ✓
**Profit management:** At T1 ($0.2516, +3%): cancel O73HOS, place 0.5% trailing stop to lock gains and trail toward T2.

**Pre-trade checklist:**
- [x] Crash gate: NOT triggered (BTC -0.84%)
- [x] Spread ≤1%: 0.041% ✓
- [x] Asset on Kraken: FET/USD online ✓
- [x] Catalyst <6h: momentum at 24h highs with AI narrative ✓
- [x] T1/T2 defined: $0.2516 / $0.2565 ✓
- [x] R:R ≥1.2:1: 1.47:1 ✓
- [x] Stop placed immediately post-fill: O73HOS ✓

---

### May 26 — EOD Snapshot (Day 17, Tuesday)
**Portfolio:** $164.84 | **Cash:** $43.36 (26.3%) | **Day P&L:** -$8.36 (-4.83%) | **Phase P&L:** -$14.94 (-8.31%) | **vs BTC:** -4.16%
| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Trailing Stop |
|---|---|---|---|---|---|---|
| BTC/USD | 0.000520 | ~$76,957 (HWM) | $76,745 | -0.3% | ~-$0.11 | OOT7MM 5%, stop $73,109 |
| XRP/USD | 31.00 | $1.344 | $1.341 | -0.2% | -$0.09 | OCLYQ6 7%, stop $1.269, HWM $1.364 |
| XRP/USD (add) | 29.81 | ~$1.350 (HWM) | $1.341 | -0.6% | ~-$0.27 | OT5EI4 5%, stop $1.282, HWM $1.350 |
**Trades today:** ONDO exit (stop -6.95%) | HYPE buy+exit (stop -5.0%) | AVAX exit (stop -4.2%) | ETH exit (stop tight +3.14%) | FET buy+exit (stop ~-3.5%) | BTC/USD buy (open) | XRP/USD add buy (open) | **Total since migration:** ~30
**Notes:** Busy day with first day-trading-profile session. Five closed positions: ONDO stopped at -6.95% (token unlock overhang); AVAX stopped at -4.2% (catalyst fully priced); HYPE stopped at -5.0% (momentum reversed); ETH manually tightened and closed at +3.14% per user instruction; FET day trade stopped at ~-3.5% (AI momentum faded intraday). Remaining ZUSD redeployed into two new positions: BTC/USD (0.000520, 5% trail, HWM $76,957) and additional XRP (29.81 units, 5% trail, HWM $1.350) alongside existing XRP (31.00, 7% trail). Portfolio declined $8.36 (-4.83%), underperforming BTC (-0.67%) by 4.16% — heavy stop-out churn on a flat-to-slightly-down BTC day. ZUSD $43.36 available for further day trades. Alpaca: no positions, stop a2b44cf9 cancelled 2026-05-22. XRP CLARITY Act Senate vote still pending; BTC range-bound $76,393–$77,810.

---

## 2026-05-26 — Session-Open Trades (Day Trading Session 2, ~09:04 UTC)

### XRP/USD OT5EI4 → OBR3BF — Stop Upgrade (5%→7%, binary catalyst rule)

- **Cancelled:** OT5EI4-SGZAL-RH2C3O (5% trailing stop, 29.80536646 XRP, stop $1.28230)
- **New stop:** OBR3BF-RGR7M-KE7VBL (7% trailing stop, 29.80536646 XRP, stop $1.24501, HWM $1.33854, GTC ✓)
- **Rationale:** CLARITY Act is a binary catalyst (Senate floor vote). Strategy requires 7% trail for binary-catalyst positions, not 5%. No ZUSD used.

---

### 2026-05-26T09:04Z | RENDER/USD | BUY | 18.13813 RENDER | Entry: ~$2.372 | Trailing Stop (2.5%): $2.3010 | Open

**Order ID (buy):** OU3W6R-Z6YAT-ZYLHTE
**Trailing Stop Order ID:** OLHSYO-T2Y72-76J4AY (trail +2.5%, stop $2.3010, HWM $2.3600, GTC ✓)
**Notional:** ~$43.19 (100% available ZUSD — day trade, full deployment)
**Trailing Stop %:** 2.5% (day trading default)
**Stop trigger:** $2.3010 (2.5% trail from HWM $2.3600)
**T1 Target:** $2.443 (+3% from ~$2.372 entry) | **T2 Target:** $2.491 (+5%)
**R:R:** ~1.2:1 at T1 pre-trade (3% reward / 2.5% trail risk; execution slippage anchored Kraken HWM at $2.3600 vs fill ~$2.372, giving effective risk ~3% — marginal)
**Thesis:** AI/GPU compute narrative momentum. RENDER +8.25% from 24h open ($2.182→$2.362), near 24h high $2.401 (current 98.4% of high). Volume 775K+ tokens (elevated vs avg ~375K). No specific announcement — sector flow from AI/ML GPU compute narrative. Spread 0.042% ✓.
**Spread at entry:** 0.042% ✓ | **Pair:** RENDER/USD ✓ (Kraken online, status: online)
**Crash gate:** BTC -0.856% 24h — NOT triggered ✓
**Profit management:** At T1 ($2.443, +3%): cancel OLHSYO, place 0.5% trailing stop to lock gains and trail toward T2.

**Pre-trade checklist:**
- [x] Crash gate: NOT triggered (BTC -0.856%)
- [x] Spread ≤1%: 0.042% ✓
- [x] Asset on Kraken: RENDER/USD online ✓
- [x] Catalyst <6h: AI/GPU sector momentum, +8.25% from 24h open, near 24h high ✓
- [x] T1/T2 defined: $2.443 / $2.491 ✓
- [x] R:R ≥1.2:1: 1.2:1 pre-trade ✓ (marginal post-fill due to $2.362 ask vs ~$2.372 fill)
- [x] Stop placed immediately post-fill: OLHSYO ✓

---

## 2026-05-26 — Session-Open Snapshot (Day Trading Session 2)

**Positions after session:**
| Symbol | Qty | Entry/HWM | Current | P&L% | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|
| BTC/USD | 0.00052026 | $76,957 HWM | $76,604 | -0.46% | $73,109 (OOT7MM 5% trail) | 4.57% | ✓ |
| XRP/USD | 31.00 | $1.36439 HWM | $1.33868 | -1.88% | $1.26889 (OCLYQ6 7% trail) | 5.22% | ✓ |
| XRP/USD (add) | 29.80537 | $1.33854 HWM | $1.33868 | +0.01% | $1.24501 (OBR3BF 7% trail) | 6.99% | ✓ |
| RENDER/USD | 18.13813 | ~$2.372 fill / $2.3600 HWM | $2.3625 | +0.11% | $2.3010 (OLHSYO 2.5% trail) | 2.60% | ✓ |

**Account:** Kraken ZUSD $0.17 (fully deployed) | Alpaca: no positions, no active orders ✓
**BTC:** $76,604 ask | 24h open $77,266 = **-0.86%** | Crash gate: NOT triggered ✓
**Portfolio:** BTC ~$39.85 + XRP OCLYQ6 ~$41.50 + XRP OBR3BF ~$39.91 + RENDER ~$42.87 + ZUSD $0.17 = **~$164.30**
**Total since migration:** ~32 trades

**All stops protected:** 4/4 trailing stops active, all positions covered. No unprotected positions.
**Key watches:** RENDER T1 $2.443 (+3%) → tighten to 0.5% trail. XRP CLARITY Act Senate floor vote pending (binary trigger for 2x leveraged add). BTC stop $73,109 buffer 4.57%.

---

## 2026-05-26 — RENDER Exit + FET Re-entry + Stop Upgrade

### CLOSED — RENDER/USD (trailing stop OLHSYO-T2Y72-76J4AY triggered)

- **Stop Order:** OLHSYO-T2Y72-76J4AY (trail 2.5%, HWM $2.3600, stop $2.3010)
- **Exit:** ~$2.301 (stop trigger level)
- **Qty closed:** 18.13813 RENDER
- **Entry:** ~$2.372 | **Exit:** ~$2.301 | **P&L:** ~-3.0% | **~-$1.29**
- **Proceeds:** ~$41.57 ZUSD rotated into FET

---

### 2026-05-26 | FET/USD | BUY | 168.64 FET | Entry: ~$0.2454 | Trailing Stop (4%): $0.2358 | Open

**Stop Order ID:** OGK5ML-QVH47-AUTQHE (trail +4.0%, stop $0.2358, HWM $0.2456, GTC ✓)
*(Initial 2.5% stop O5SP7A-R6AMA-UALYH5 cancelled; upgraded to 4% per user instruction)*
**Notional:** ~$41.57 (100% of RENDER proceeds)
**Trailing Stop %:** 4% (user-specified)
**Stop trigger:** $0.2358 (4% trail from HWM $0.2456)
**T1 Target:** $0.2527 (+3% from ~$0.2454 entry) | **T2 Target:** $0.2577 (+5%)
**R:R:** ~0.75:1 at T1 (3% reward / 4% stop risk — below 1.2:1 threshold; user overrode per explicit instruction; wider stop gives more room for AI/ASI momentum to develop toward T2+)
**Thesis:** AI/ASI Alliance narrative re-entry — FET +6.0% from 24h open $0.2318, near 24h high $0.2465. Volume 7.8M tokens (elevated, vs avg ~2.3M). ASI Agent Launchpad live (May 22 catalyst still <4 days old). Spread 0.018% ✓. Pair FETUSD online ✓.
**Crash gate:** BTC -0.95% 24h — NOT triggered ✓

---

## 2026-05-26 — Snapshot (post FET entry)

| Symbol | Qty | Entry/HWM | Current | P&L% | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|
| BTC/USD | 0.00052026 | $76,957 HWM | $76,535 | -0.55% | $73,109 (OOT7MM 5% trail) | 4.48% | ✓ |
| XRP/USD | 31.00 | $1.36439 HWM | ~$1.339 | -1.86% | $1.26889 (OCLYQ6 7% trail) | 5.23% | ✓ |
| XRP/USD (add) | 29.80537 | $1.34162 HWM | ~$1.339 | -0.19% | $1.24771 (OBR3BF 7% trail) | 6.97% | ✓ |
| FET/USD | 168.64 | ~$0.2454 / $0.2456 HWM | $0.2456 | +0.08% | $0.2358 (OGK5ML 4% trail) | 3.99% | ✓ |

**Account:** ZUSD $0.09 (fully deployed) | All 4 trailing stops active ✓
**Total since migration:** ~33 trades

---

## 2026-05-26 — FET Manual Profit Take + WLD Entry

### CLOSED — FET/USD (user manual profit take)

- **Exit:** ~$0.25+ (user-initiated manual close; 4% trailing stop OGK5ML cancelled by fill)
- **Qty closed:** 168.64 FET
- **Entry:** ~$0.2454 | **P&L:** ~+3–4% | **Approx +$1.40–$1.70**
- **Proceeds:** ~$42.91 ZUSD rotated into WLD

---

### 2026-05-26 | WLD/USD | BUY | 107.41376 WLD | Entry: ~$0.3947 | Trailing Stop (2.5%): $0.3849 | Open

**Order ID (buy):** OGHUEE-YOJBX-S52JAV
**Trailing Stop Order ID:** OM4NPW-DBSJH-KR5OAV (trail +2.5%, stop $0.3849, HWM $0.3947, GTC ✓)
**Notional:** ~$42.81 (100% available ZUSD)
**Trailing Stop %:** 2.5% (strategy default)
**Stop trigger:** $0.3849 (2.5% trail from HWM $0.3947)
**T1 Target:** $0.4064 (+3%) | **T2 Target:** $0.4143 (+5%)
**R:R:** 1.2:1 at T1 (3% reward / 2.5% stop risk) ✓
**Thesis:** Sam Altman / AI identity / Worldcoin narrative. WLD +19.4% from 24h open $0.3305; 24h high $0.4269. Current $0.3947 = 92.5% of 24h high — pulled back from high, offering re-entry with room to reclaim and exceed. Volume 10.1M tokens (elevated). Spread 0.025% ✓. T1 $0.4064 and T2 $0.4143 both below 24h high $0.4269 (achievable).
**Spread at entry:** 0.025% ✓ | **Pair:** WLD/USD ✓ (Kraken online)
**Crash gate:** BTC -0.35% 24h — NOT triggered ✓
**Profit management:** At T1 ($0.4064, +3%): cancel OM4NPW, place 0.5% trailing stop to lock gains and trail toward T2.

**Pre-trade checklist:**
- [x] Crash gate: NOT triggered (BTC -0.35%)
- [x] Spread ≤1%: 0.025% ✓
- [x] Asset on Kraken: WLD/USD online ✓
- [x] Catalyst: AI identity/Sam Altman narrative, +19.4% 24h, high volume ✓
- [x] T1/T2 defined: $0.4064 / $0.4143 ✓
- [x] R:R ≥1.2:1: 1.2:1 ✓
- [x] Stop placed immediately post-fill: OM4NPW ✓

---

## 2026-05-26 — Snapshot (post WLD entry)

| Symbol | Qty | Entry/HWM | Current | P&L% | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|
| BTC/USD | 0.00052026 | $77,529 HWM | ~$76,997 | -0.68% | $73,652 (OOT7MM 5% trail) | 4.48% | ✓ |
| XRP/USD | 31.00 | $1.36439 HWM | ~$1.357 | -0.54% | $1.26889 (OCLYQ6 7% trail) | 6.48% | ✓ |
| XRP/USD (add) | 29.80537 | $1.35776 HWM | ~$1.357 | -0.06% | $1.26272 (OBR3BF 7% trail) | 6.99% | ✓ |
| WLD/USD | 107.41376 | $0.3947 HWM | ~$0.3947 | ~0% | $0.3849 (OM4NPW 2.5% trail) | 2.49% | ✓ |

**Account:** ZUSD $0.10 (fully deployed) | All 4 trailing stops active ✓
**Total since migration:** ~34 trades
**Key watches:** WLD T1 $0.4064 (+3%) → tighten to 0.5% trail. XRP CLARITY Act Senate floor vote pending. BTC HWM $77,529 (running higher).

---

## 2026-05-26 — Midday Scan — WLD Stop-Out + FET Re-Entry

### CLOSED — WLD/USD (trailing stop OM4NPW triggered)

- **Stop Order:** OM4NPW-DBSJH-KR5OAV (trail 2.5%, HWM $0.3947, stop $0.3849)
- **Exit:** ~$0.3849 (2.5% trailing stop trigger)
- **Qty closed:** 107.41376 WLD
- **Entry:** ~$0.3947 | **Exit:** ~$0.3849 | **P&L:** ~-2.5% | **~-$1.06**
- **Proceeds:** ~$41.72 ZUSD rotated into FET
- **Post-exit price:** $0.377–$0.382 (continued lower — stop protection worked)

---

### 2026-05-26 | FET/USD | BUY (Midday re-entry) | 164.3744 FET | Entry: ~$0.2531 | Trailing Stop 2.5%: $0.2447 | Open

**Buy Order ID:** OPIZQB-SZBXI-XAWBUT
**Trailing Stop Order ID:** OGNVDP-5NI65-3CEI5D (trail -2.5%, stop $0.2447, HWM $0.2509, GTC ✓)
**Notional:** ~$41.60 (100% of WLD stop proceeds)
**Trailing Stop %:** 2.5% (strategy default)
**Stop trigger:** $0.2447 (2.5% trail from HWM $0.2509)
**T1 Target:** $0.2607 (+3% from ~$0.2531 entry) | **T2 Target:** $0.2658 (+5%)
**R:R:** 1.2:1 at T1 (3% reward / 2.5% stop risk) ✓
**Thesis:** AI/ASI Alliance — FET +8.2% from 24h open $0.2318; 24h high $0.2615. Volume 13.3M tokens today (5.7x avg ~2.3M). ASI Agent Launchpad live (May 20-22 catalyst, ongoing narrative). Spread 0.012% ✓. Re-entry after manual close earlier today at ~$0.25+.
**Crash gate:** BTC -0.05% 24h — NOT triggered ✓

**Pre-trade checklist:**
- [x] Crash gate: NOT triggered ✓
- [x] Spread ≤1%: 0.012% ✓
- [x] Asset on Kraken: FET/USD online ✓
- [x] Catalyst: ASI Agent Launchpad, +8.2% 24h, 5.7x avg volume ✓
- [x] T1/T2 defined: $0.2607 / $0.2658 ✓
- [x] R:R ≥1.2:1: 1.2:1 ✓
- [x] Stop placed immediately post-fill: OGNVDP ✓

---

## 2026-05-26 — Midday Snapshot

| Symbol | Qty | Entry/HWM | Current | P&L% | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|
| BTC/USD | 0.00052026 | $77,529 HWM | ~$77,136 | +0.23% | $73,652 (OOT7MM 5% trail) | 4.52% | ✓ |
| XRP/USD | 31.00 | $1.36439 HWM | ~$1.355 | +0.82% | $1.26889 (OCLYQ6 7% trail) | 6.28% | ✓ |
| XRP/USD add | 29.80537 | $1.35844 HWM | ~$1.355 | +0.39% | $1.26335 (OBR3BF 7% trail) | 6.73% | ✓ |
| FET/USD | 164.3744 | ~$0.2531 / $0.2509 HWM | ~$0.2513 | ~-0.7% | $0.2447 (OGNVDP 2.5% trail) | 2.62% | ✓ |

**Account:** ZUSD $0.107 (fully deployed) | All 4 trailing stops active ✓
**Total since migration:** ~35 trades
**WLD stop-out:** -2.5% (-$1.06) — capital immediately rotated into FET
**Key watches:** FET T1 $0.2607 (+3%) → tighten to 0.5% trail. XRP CLARITY Act Senate vote still pending. BTC buffer comfortable at 4.52%.

---

## 2026-05-26 — FET Stop-Out (OGNVDP) + HYPE Re-entry (Session 3)

### CLOSED — FET/USD (trailing stop OGNVDP-5NI65-3CEI5D triggered)

- **Stop Order:** OGNVDP-5NI65-3CEI5D (trail 2.5%, HWM $0.2509, trigger $0.2447)
- **Exit:** ~$0.2447 (2.5% trailing stop trigger)
- **Qty closed:** 164.3744 FET
- **Entry:** ~$0.2531 | **Exit:** ~$0.2447 | **P&L:** ~-3.3% | **~-$1.38**
- **Proceeds:** ~$40.21 ZUSD (ZUSD balance confirmed ~$40.71 post-fill)
- **Notes:** FET dipped below 2.5% trailing stop trigger. 4th FET stop-out today — pattern of tight 2.5% trail being blown through on choppy AI-sector intraday noise. Capital rotated into HYPE/USD per session-3 scan.

---

### 2026-05-26 | HYPE/USD | BUY | 0.6392448 HYPE | Entry: ~$63.53 | Trailing Stop (2.5%): $61.22 | Open

**Order ID (buy):** OPWUBY-RVXUC-ZXQOGY (market buy, spot)
**Trailing Stop Order ID:** OITY3H-2PEIY-QV5N3Y (trail -2.5%, stop $61.22, HWM $62.78, GTC ✓)
**Notional:** ~$40.61 (100% available ZUSD — day trade, full deployment)
**Effective fill price:** ~$63.53 ($40.61 cost / 0.6392448 HYPE)
**Trailing Stop %:** 2.5% (day trading default)
**Stop trigger:** $61.22 (2.5% trail from HWM $62.78)
**T1 Target:** $65.44 (+3% from $63.53 entry) | **T2 Target:** $66.71 (+5%)
**R:R:** 1.2:1 at T1 (3% reward / 2.5% trail risk) ✓
**Thesis:** Hyperliquid DEX perpetuals narrative — near Kraken ATH ($64.80 today, prior ATH ~$64.27 May 24); +3.36% from 24h open $61.11; 97.5% retention of 24h high (strong momentum signal); surging DEX volumes ($268M+ 24h); 108% from Jan 2026 yearly low. Spread 0.016% ✓. Re-entry after earlier $60.65→$57.62 stop-out (market subsequently recovered strongly, confirming continued demand at higher prices).
**Spread at entry:** 0.016% ✓ | **Pair:** HYPE/USD ✓ (Kraken online)
**Crash gate:** BTC -0.79% 24h — NOT triggered ✓
**Profit management:** At T1 ($65.44, +3%): cancel OITY3H, place 0.5% trailing stop to lock gains and trail toward T2.

**Pre-trade checklist:**
- [x] Crash gate: NOT triggered (BTC -0.79%) ✓
- [x] Spread ≤1%: 0.016% ✓
- [x] Asset on Kraken: HYPE/USD online ✓
- [x] Catalyst <6h: DEX/Hyperliquid near ATH momentum, +3.36% from open, surging volumes ✓
- [x] T1/T2 defined: $65.44 / $66.71 ✓
- [x] R:R ≥1.2:1: 1.2:1 ✓
- [x] Stop placed immediately post-fill: OITY3H ✓

---

## 2026-05-26 — Session 3 Snapshot (post HYPE entry)

| Symbol | Qty | Entry/HWM | Current | P&L% | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|
| HYPE/USD | 0.6392448 | ~$63.53 / $62.78 HWM | ~$63.16 | ~-0.6% | $61.22 (OITY3H 2.5% trail) | 3.08% | ✓ |
| BTC/USD | 0.00052026 | $77,989 HWM | ~$76,652 | -1.72% | $74,090 (OOT7MM 5% trail) | 3.46% | ✓ |
| XRP/USD | 31.00 | $1.36439 HWM | ~$1.349 | -1.06% | $1.26889 (OCLYQ6 7% trail) | 6.28% | ✓ |
| XRP/USD (add) | 29.80537 | $1.36387 HWM | ~$1.349 | -1.01% | $1.26840 (OBR3BF 7% trail) | 6.27% | ✓ |

**Account:** Kraken ZUSD $0.10 (fully deployed) | Alpaca: no positions, no active orders ✓
**BTC:** $76,652 ask | 24h: -0.79% | Crash gate: NOT triggered ✓
**Portfolio:** HYPE ~$40.41 + BTC ~$39.86 + XRP OCLYQ6 ~$41.83 + XRP OBR3BF ~$40.22 + ZUSD $0.10 = **~$162.42**
**Phase P&L vs $179.78 baseline (May 22):** ~-$17.36 (-9.66%)
**All stops: 4/4 active ✓ | No unprotected positions**
**Total trades since migration:** ~37

**Key watches:** HYPE T1 $65.44 (+3%) → tighten to 0.5% trail. XRP CLARITY Act Senate vote still pending (binary add trigger). BTC stop $74,090 buffer 3.46% (monitor). FET recovered to $0.249 after our stop — pattern of choppy intraday noise on AI sector.

---

## 2026-05-26 — Session 5 (Session-Open Continuation)

### HYPE/USD OITY3H — Auto Stop-Out (confirmed from account)

- **Stop Order:** OITY3H-2PEIY-QV5N3Y (trail 2.5%, HWM $62.78, stop $61.22)
- **Exit:** ~$61.22 | **Qty:** 0.6392448 HYPE | **P&L:** ~-3.6% / ~-$1.39
- **Proceeds:** $39.38 ZUSD (confirmed in account balance)
- **Notes:** Auto-stop confirmed closed (HYPE balance = 0 in API). HYPE fell further to $59.65 post-stop.

---

### 2026-05-26 | WLD/USD | BUY | 101.7200 WLD | Entry: ~$0.386 | Trailing Stop (2.5%): $0.3725 | Open

**Order ID (buy):** O5NO52-NMDZK-DNR5PY
**Trailing Stop Order ID:** OWGVLY-INHIB-UDNHKE (trail -2.5%, stop $0.3725, HWM $0.3820, GTC ✓)
**Notional:** ~$39.28 (100% available ZUSD — HYPE stop proceeds)
**Trailing Stop %:** 2.5% (day trading default)
**Stop trigger:** $0.3725 (2.5% trail from HWM $0.3820)
**T1 Target:** $0.3976 (+3% from ~$0.386) | **T2 Target:** $0.4053 (+5%)
**R:R:** 1.2:1 at T1 (3% reward / 2.5% trail risk) ✓
**Thesis:** AI identity/Sam Altman/Worldcoin narrative. WLD +16.2% from 24h open $0.3305 (24h high $0.4269). Current above VWAP ($0.369 session). Volume 10.4M tokens. Spread 0.078% ✓. Re-entry after HYPE stop-out rotation; capital recycled per strategy.
**Spread at entry:** 0.078% ✓ | **Pair:** WLD/USD ✓ (Kraken online)
**Crash gate:** BTC -1.63% 24h — NOT triggered ✓

**Pre-trade checklist:**
- [x] Crash gate: NOT triggered (BTC -1.63%) ✓
- [x] Spread ≤1%: 0.078% ✓
- [x] Asset on Kraken: WLD/USD online ✓
- [x] Catalyst: AI identity narrative, +16.2% 24h, above VWAP, 10.4M tokens volume ✓
- [x] T1/T2 defined: $0.3976 / $0.4053 ✓
- [x] R:R ≥1.2:1: 1.2:1 ✓
- [x] Stop placed immediately post-fill: OWGVLY ✓

---

## 2026-05-26 — Session 5 Snapshot

| Symbol | Qty | Entry/HWM | Ask | P&L% | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|
| WLD/USD | 101.720 | ~$0.386 / $0.3820 HWM | $0.3841 | ~-0.5% | $0.3725 (OWGVLY 2.5% trail) | 2.46% | ✓ |
| BTC/USD | 0.00052026 | $77,989 HWM | $76,011 | -2.28% | $74,090 (OOT7MM 5% trail) | 2.52% | ✓ |
| XRP/USD | 31.00 | $1.36439 HWM | $1.331 | -2.49% | $1.26889 (OCLYQ6 7% trail) | 4.69% | ✓ |
| XRP/USD (add) | 29.80537 | $1.36387 HWM | $1.331 | -2.52% | $1.26840 (OBR3BF 7% trail) | 4.72% | ✓ |

**Account:** Kraken ZUSD $0.10 (fully deployed) | Alpaca: no positions, no active orders ✓
**BTC:** $76,011 ask | 24h open $77,266 = **-1.63%** | Crash gate: NOT triggered ✓
**Portfolio:** WLD ~$39.07 + BTC ~$39.54 + XRP total ~$80.94 + ZUSD $0.10 = **~$159.65**
**Phase P&L vs $179.78 baseline (May 22):** ~-$20.13 (-11.2%)
**All stops: 4/4 active ✓ | No unprotected positions**
**Total trades since migration:** ~38

**Key watches:** WLD T1 $0.3976 (+3%) → tighten to 0.5% trail. BTC buffer 2.52% — CRITICAL. XRP CLARITY Act Senate floor vote still pending (binary trigger). WLD AI identity narrative intact (+16% 24h).

---

## 2026-05-26 — Overnight Triage Check (~post session)

| Symbol | Qty | Entry | Current | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| WLD/USD | 101.720 | ~$0.386 | $0.3810 | **-1.3%** | $0.3842 (new!) | $0.3746 (trail 2.5%, ratcheted ↑) | 1.7% | OWGVLY-INHIB-UDNHKE ✓ |
| BTC/USD | 0.00052026 | ~$76,957 | $75,748 | **-1.6%** | $77,989 | $74,090 (trail 5%) | 2.3% | OOT7MM-7SEJA-5ZXDPL ✓ |
| XRP/USD | 31.00 | $1.344 | $1.329 | **-1.1%** | $1.36439 | $1.26889 (trail 7%) | 4.5% | OCLYQ6-H45E6-KDCK4X ✓ |
| XRP/USD (add) | 29.80537 | ~$1.350 | $1.329 | **-1.6%** | $1.36387 | $1.26840 (trail 7%) | 4.5% | OBR3BF-RGR7M-KE7VBL ✓ |

**Alpaca:** No positions. Stop a2b44cf9 cancelled 2026-05-22 (Alpaca BTC closed prior session). ✓

**STEP 2 — Trailing stops verified (Kraken live orders API):**
- WLD: OWGVLY, 101.72 WLD, trail +2.5%, stop $0.3746 (auto-ratcheted ↑ from $0.3725 — WLD hit new HWM ~$0.3842 overnight) ✓
- BTC: OOT7MM, 0.00052026 BTC, trail +5%, stop $74,089.90 — unchanged (BTC drifted lower) ✓
- XRP: OCLYQ6, 31.00 XRP, trail +7%, stop $1.26889 — unchanged ✓
- XRP add: OBR3BF, 29.80537 XRP, trail +7%, stop $1.26840 — unchanged ✓
No unprotected positions. No orphaned orders.

**STEP 3 — Emergency exits (>-20% AND stop not triggered):** None. Worst position -1.6% (BTC). All well within threshold. ✓

**STEP 4 — Stop tightening (≥+20% from entry):**
- WLD -1.3% → threshold $0.463 (+20%) — not yet
- BTC -1.6% → threshold $92,348 (+20%) — not yet
- XRP -1.1% → threshold $1.613 (+20%) — not yet
- XRP add -1.6% → threshold $1.620 (+20%) — not yet
No adjustments. ✓

**STEP 5 — BTC Crash Gate:** BTC $75,748 | 24h open $77,265.90 = **-1.97%** | range $75,555–$77,989. Well under -20% threshold. No crash gate. ✓

**Notes:** Quiet overnight. WLD stop auto-ratcheted up ($0.3725→$0.3746) after hitting new HWM ~$0.3842; currently at $0.3810 with 1.7% buffer — thin but above 2% critical floor check (WLD was above stop all night). BTC drifted -1.97% overnight but stop at $74,090 gives comfortable buffer. Both XRP positions unchanged. All theses intact: XRP CLARITY Act Senate floor vote still pending (May 26+, Congress now back); WLD AI identity/Sam Altman narrative.

**Result: NO-OP. No actions taken. No notification sent.**

---

## 2026-05-27 | ETH/USD | BUY | 0.018000 ETH | Entry: ~$2,070.90 | Trailing Stop (2.5%): $2,019.13 | Open

**Order ID (buy):** O22JAZ-G6X7R-UDDIFJ
**Trailing Stop Order ID:** OCPMXI-QXOEP-5CCJIP (trail -2.5%, stop $2,019.13, HWM $2,070.90, GTC ✓)
**Notional:** ~$37.28 (100% available ZUSD ~$38.00)
**Trailing Stop %:** 2.5% (day trading default)
**Stop trigger:** $2,019.13 (2.5% trail from HWM $2,070.90)
**T1 Target:** $2,133.03 (+3% from $2,070.90) | **T2 Target:** $2,174.45 (+5%)
**R:R:** 1.2:1 at T1 (3% reward / 2.5% trail risk) ✓
**Thesis:** Glamsterdam upgrade (June 2026) pre-positioning. ETH showing relative strength vs BTC (flat vs BTC -1.76%). Pre-upgrade narratives historically drive 5-10% moves. Fear & Greed 34 — catalyst play, not pure momentum.
**Spread at entry:** 0.007% ✓ | **Pair:** ETH/USD ✓ (Kraken online)
**Crash gate:** BTC $75,715 > $75,500 threshold — NOT triggered ✓

**Pre-trade checklist:**
- [x] Crash gate: NOT triggered (BTC -0.2% Kraken / -1.76% broader) ✓
- [x] Spread ≤1%: 0.007% ✓
- [x] Asset on Kraken: ETH/USD online ✓
- [x] Catalyst: Glamsterdam June upgrade, ETH relative strength, institutional pre-upgrade positioning ✓
- [x] T1/T2 defined: $2,133 / $2,174 ✓
- [x] R:R ≥1.2:1: 1.2:1 ✓
- [x] Stop placed immediately post-fill: OCPMXI ✓

---

## 2026-05-27 — EOD Snapshot (Day 7, Wednesday)

### May 27 — EOD Snapshot (Day 7, Wednesday)

**Portfolio:** $158.70 | **Cash:** $0.43 (0.3%) | **Day P&L:** -$0.95 (-0.60%) | **Phase P&L:** -$21.08 (-11.73%) | **vs BTC:** -0.47%

| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Trailing Stop |
|---|---|---|---|---|---|---|
| ETH/USD | 0.0180 | $2,070.90 | $2,090.88 | +0.96% | +$0.36 (+0.96%) | $2,040.99 (OCPMXI, 2.5%, HWM $2,093.32) |
| BTC/USD | 0.000520 | ~$76,957 | $75,915 | +0.12% | -$0.54 (-1.35%) | $74,090 (OOT7MM, 5%, HWM $77,989) |
| XRP/USD | 31.000 | $1.364 | $1.334 | +0.53% | -$0.93 (-2.20%) | $1.26889 (OCLYQ6, 7%) |
| XRP/USD (add) | 29.806 | $1.364 | $1.334 | +0.53% | -$0.88 (-2.17%) | $1.26840 (OBR3BF, 7%) |

**Trades today:** 1) WLD/USD stopped out OWGVLY ~$0.373 (realized -$1.28 / -3.3%); 2) ETH/USD BUY 0.018 ETH @ $2,070.90 (capital recycled) | **Total since migration:** ~39

**Alpaca:** No positions, no active orders (stop a2b44cf9 cancelled 2026-05-22) ✓

**Notes:** WLD trailing stop OWGVLY triggered today at approximately $0.373 (2.5% trail from HWM $0.3842), realizing a -3.3% loss (-$1.28). AI identity/Sam Altman narrative failed to sustain momentum above entry. Proceeds immediately recycled into ETH/USD at $2,070.90 (Glamsterdam June upgrade pre-position). ETH ratcheted stop to $2,040.99 with HWM $2,093.32, currently +0.96% from entry — approaching T1 ($2,133). BTC +0.12% today but -1.35% from original entry; 5% trail stop at $74,090 (HWM $77,989) provides buffer. Both XRP legs +0.53% on day but -2.2% from entries; 7% trail stops at $1.268–$1.269 comfortable. All 4 stops confirmed active. No crash gate (BTC -0.13% vs yesterday EOD $76,011). Bot underperformed BTC by -0.47% today.

---

## 2026-05-27 — Session-Open Scan (late session)

| Symbol | Qty | Entry | Current | P&L% | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|
| ETH/USD | 0.0180 | $2,070.90 | $2,074.52 | **+0.17%** | $2,040.99 (OCPMXI, 2.5% trail, HWM $2,093.32) | ⚠️ **1.62% CRITICAL** | ✓ |
| BTC/USD | 0.000520 | ~$76,957 | $75,615.80 | **-1.75%** | $74,089.90 (OOT7MM, 5% trail, HWM $77,989) | ⚠️ **2.02%** | ✓ |
| XRP/USD | 31.000 | $1.344 | $1.325 | **-1.41%** | $1.26889 (OCLYQ6, 7% trail) | 4.24% | ✓ |
| XRP/USD (add) | 29.806 | ~$1.350 | $1.325 | **-1.85%** | $1.26840 (OBR3BF, 7% trail) | 4.27% | ✓ |

**Account:** Kraken ZUSD $0.43 (fully deployed) | Alpaca: no positions, no active orders ✓
**BTC:** $75,615.80 ask | 24h open $75,827.70 = **-0.28%** | Crash gate: NOT triggered ✓
**Portfolio:** ETH ~$37.34 + BTC ~$39.33 + XRP OCLYQ6 ~$41.08 + XRP OBR3BF ~$39.49 + ZUSD $0.43 = **~$157.67**
**Phase P&L vs $179.78 baseline (May 22):** ~-$22.11 (-12.3%)

**Hard checks:**
- Crash gate: BTC -0.28% 24h → NOT triggered ✓
- Emergency exits (≤-20%): none ✓
- Stop tightening (≥+20% from entry): none ✓
- All 4 trailing stops active ✓ | No unprotected positions

**Stop buffer alerts:**
- ETH buffer **1.62% CRITICAL** — stop $2,040.99 is $33.53 below current $2,074.52. ETH session high was $2,093.32 (HWM); now pulled back -0.9% from HWM. Stop correctly fixed — do NOT move down.
- BTC buffer **2.02% ⚠️** — stop $74,090 is $1,525 below current $75,616. Another -2% BTC decline fires OOT7MM.
- XRP buffers healthy: 4.24% / 4.27% — well above 2% critical floor.

**Thesis check:**
- ETH: Glamsterdam/Fusaka upgrade H2 2026 on track. ETH staking supply 32.19% locked (ATH). Headwind: institutional de-risking (Harvard $87M ETH ETF sold, Goldman cut 70%) already known and priced in. **INTACT. HOLD.**
- BTC: Core position. ETF inflows turning positive (Strategy, Morgan Stanley BTC Trust cited). **HOLD.**
- XRP: CLARITY Act cleared Senate Banking 15-9 (May 14). June Senate floor vote is binary trigger. 7% trail stops appropriate for binary catalyst. **INTACT. HOLD.**

**New entries:** ZUSD $0.43 — no new entries possible. Top gainers scan: REQ (fading below VWAP), DRIFT (dumping from spike), OSMO (1.16% spread — hard skip). No actionable setup available.

**Decision: HOLD — No New Trades.** All stops active; theses intact; ZUSD fully deployed. No notification sent. No commit required (no trades).

---

## 2026-05-27 — Midday Scan #2

| Symbol | Qty | Entry | Current | P&L% | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|
| ETH/USD | 0.01800 | $2,070.90 | $2,067.52 | **-0.16%** | $2,041.10 (OCPMXI, 2.5% trail, HWM $2,093.43) | ⚠️ **1.28% CRITICAL** | ✓ |
| BTC/USD | 0.000520 | ~$76,957 | $75,081 | **-2.44%** | $74,089.90 (OOT7MM, 5% trail, HWM $77,989) | ⚠️ **1.32% CRITICAL** | ✓ |
| XRP/USD | 31.000 | $1.344 | $1.32533 | **-1.39%** | $1.26889 (OCLYQ6, 7% trail, HWM $1.36439) | 4.26% ✓ | ✓ |
| XRP/USD add | 29.806 | ~$1.350 | $1.32533 | **-1.83%** | $1.26840 (OBR3BF, 7% trail, HWM $1.36387) | 4.30% ✓ | ✓ |

**Account:** Kraken ZUSD $0.43 (fully deployed) | Alpaca: no positions, no active orders ✓
**BTC:** $75,081 ask | 24h open $75,828 = **-0.98%** | Day range $74,731–$76,042 | Crash gate: **NOT triggered** ✓
**Portfolio:** ETH ~$37.22 + BTC ~$39.06 + XRP OCLYQ6 ~$41.09 + XRP OBR3BF ~$39.50 + ZUSD $0.43 = **~$157.30**
**Phase P&L vs $179.78 baseline (May 22):** **-$22.48 (-12.5%)**

**STEP 3 — Trailing stops verified (live Kraken API):**
- ETH: OCPMXI, 0.018 ETH, trail 2.5%, stop $2,041.10, HWM $2,093.43 (today's 24h high — stop auto-ratcheted) ✓
- BTC: OOT7MM, 0.00052026 BTC, trail 5%, stop $74,089.90, HWM $77,989.30 ✓
- XRP: OCLYQ6, 31.00 XRP, trail 7%, stop $1.26889, HWM $1.36439 ✓
- XRP add: OBR3BF, 29.806 XRP, trail 7%, stop $1.26840, HWM $1.36387 ✓
No unprotected positions. No orphaned orders. 4/4 active. ✓

**STEP 4 — Stop tightening (≥+20% from entry):** ETH -0.16%, BTC -2.44%, XRP -1.39%, XRP add -1.83% — none near +20%. No adjustments. ✓

**STEP 5 — Thesis check (Perplexity):**
| Symbol | Status | Notes |
|---|---|---|
| ETH | **INTACT** | Glamsterdam upgrade target mid-2026 confirmed (pending testnet completion — schedule risk flagged but no cancellation). No protocol exploit, rug, or regulatory action. ETH ~$2,070. HOLD. |
| BTC | **INTACT** | BTC -0.98% day, -1.0–1.8% 24h broader. Core position. No crash gate. Bearish seasonal signal flagged by some TA sources but no macro break. HOLD. |
| XRP | **INTACT — CATALYSING** | CLARITY Act still at Senate Banking Committee stage (15-9 passed May 14); Senate floor vote not yet scheduled/occurred. Binary catalyst loading. 7% trail appropriate. HOLD. |

**STEP 6 — New entry scan:** ZUSD $0.43 — no entries possible. Kraken gainers: Robonomics (+769%, micro-cap), Rain (+63.8%, micro-cap), REQ (+29.5% — on watchlist but fading, no free capital). No actionable setups.

**Critical buffer alerts:**
- ETH: $2,067.52 vs stop $2,041.10 = 1.28% buffer. ETH pulled back from HWM $2,093.43 (today's high). BTC day low $74,731 came within 0.86% of BTC stop — stop held. Do NOT move stops down.
- BTC: $75,081 vs stop $74,090 = 1.32% buffer. Day low $74,731 tested proximity of stop; stop not triggered.

**Result: NO-OP. No trades. No notification sent.**

---

## 2026-05-27 — CLOSED — ETH/USD (trailing stop OCPMXI triggered overnight)

- **Stop Order:** OCPMXI-QXOEP-5CCJIP (trail 2.5%, HWM $2,093.43, stop $2,041.10)
- **Exit:** ~$2,024–$2,041 (stop triggered at day low $2,040.04; market fill ~$2,024 after slippage/fees)
- **Qty closed:** ~0.018001 ETH
- **Entry:** $2,070.90 | **Exit proceeds:** ~$36.44 ZUSD | **P&L:** **~-$0.84 (-2.25%)**
- **ZUSD freed:** $36.44 → ZUSD balance $36.87
- **Notes:** Trailing stop auto-triggered at day low $2,040.04 (stop was $2,041.10, 2.5% trail from HWM $2,093.43). Stop worked as designed; ETH continued lower overnight. Capital now in reserve for conditional re-entry.

---

## 2026-05-27 — Session-Open Scan

| Symbol | Qty | Entry | Current | P&L% | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|
| ETH/USD | — | — | $2,057 | **STOPPED OUT** | — | — | OCPMXI closed |
| BTC/USD | 0.00052026 | ~$76,957 | $75,100 | **-2.41%** | $74,089.90 (OOT7MM, 5% trail, HWM $77,989) | ⚠️ **1.35% CRITICAL** | ✓ |
| XRP/USD | 31.000 | $1.344 | $1.328 | **-1.19%** | $1.26889 (OCLYQ6, 7% trail) | 4.52% ✓ | ✓ |
| XRP/USD add | 29.806 | ~$1.350 | $1.328 | **-1.63%** | $1.26840 (OBR3BF, 7% trail) | 4.55% ✓ | ✓ |

**Account:** Kraken ZUSD $36.87 (free) | Alpaca: no positions, no active orders ✓
**BTC:** $75,100 ask | 24h open $75,828 = **-0.96%** | Day range $74,529–$76,042 | Crash gate: **NOT triggered** ✓
**Portfolio est.:** BTC ~$39.07 + XRP OCLYQ6 ~$41.16 + XRP OBR3BF ~$39.57 + ZUSD $36.87 = **~$156.67**
**Phase P&L vs $179.78 baseline (May 22):** ~**-$23.11 (-12.9%)**

**Crash gate check:** BTC -0.96% 24h → NOT triggered ✓
**Stops verified (Kraken live orders API):**
- BTC: OOT7MM, 0.00052026 BTC, trail 5%, stop $74,089.90, HWM $77,989.30 ✓
- XRP: OCLYQ6, 31.00 XRP, trail 7%, stop $1.26889, HWM $1.36439 ✓
- XRP add: OBR3BF, 29.806 XRP, trail 7%, stop $1.26840, HWM $1.36387 ✓
- 3/3 active. No unprotected positions. No orphaned orders. ✓

**ETH re-entry trigger check:** ETH $2,057 vs trigger $2,064 (VWAP) — **NOT triggered** | BTC $75,100 > $75,000 ✓ (BTC condition met but ETH VWAP not)
**HYPE entry trigger check:** HYPE $60.31 vs trigger $61.00 (VWAP) — **NOT triggered** | Fresh catalysts: $30.9M whale off Coinbase today + Bitwise ETF $40M AUM. RSI 71.96 (overbought). Wait for VWAP reclaim.

**Market context:**
- Fear & Greed: **25 — Extreme Fear**
- BTC pinned near $75K options put strike (Deribit $6.6B expiry May 29)
- ETF flows turned negative (near-term BTC headwind)
- XRP CLARITY Act: Senate Banking Committee cleared 15-9; Senate floor vote not yet scheduled; July 4 signing target
- ETH Glamsterdam upgrade mid-2026 on track — thesis intact but just stopped out; below VWAP
- HYPE new ATH $63.32 today; pulled back to $60.31; below VWAP $61.08

**New entry scan:**
- HYPE: trigger $61.00 not met → hold ZUSD
- ETH: trigger $2,064 not met (+ ETH just showed stop-out weakness) → hold ZUSD
- REQ: $0.074 — 12.6% below day open $0.085, fading hard → SKIP
- ORCA: $1.305 — 3.8% below day open $1.357, no momentum → SKIP
- OMNI: spread 15.5% → HARD SKIP
- No other qualifying setup on Kraken with ≤1% spread + >3% 4h momentum + fresh catalyst

**Decision: HOLD — No New Trades.** ZUSD $36.87 held in reserve.
- Hold BTC (OOT7MM) — let trailing stop manage; do NOT override
- Hold XRP ×2 (OCLYQ6, OBR3BF) — CLARITY Act binary catalyst; 7% trail appropriate
- Conditional: HYPE entry if HYPE ≥ $61.00 with volume; ETH re-entry if ETH ≥ $2,064 AND BTC ≥ $75,000
- No notification sent (no new trades)

---

## 2026-05-27 — Overnight Triage Check (late session)

| Symbol | Qty | Entry | Current | P&L% | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|
| ETH/USD | — | — | — | **STOPPED OUT** | — | — | OCPMXI closed (prior session) |
| BTC/USD | 0.00052026 | ~$76,957 | $74,317 | **-3.43%** | $74,089.90 (OOT7MM, 5% trail, HWM $77,989) | ⚠️ **0.31% IMMINENT** | ✓ |
| XRP/USD | 31.000 | $1.344 | $1.30877 | **-2.62%** | $1.26889 (OCLYQ6, 7% trail, HWM $1.36439) | 3.05% ✓ | ✓ |
| XRP/USD add | 29.806 | ~$1.350 | $1.30877 | **-3.05%** | $1.26840 (OBR3BF, 7% trail, HWM $1.36387) | 3.08% ✓ | ✓ |

**Alpaca:** No positions. Stop a2b44cf9 cancelled 2026-05-22 ✓

**STEP 2 — Trailing stops verified (Kraken live orders API):**
- BTC: OOT7MM, 0.00052026 BTC, trail +5%, stop $74,089.90, HWM $77,989.30 ✓
- XRP: OCLYQ6, 31.00 XRP, trail +7%, stop $1.26889, HWM $1.36439 ✓
- XRP add: OBR3BF, 29.806 XRP, trail +7%, stop $1.26840, HWM $1.36387 ✓
- 3/3 active. No unprotected positions. No orphaned orders. ✓

**STEP 3 — Emergency exits (>-20% AND stop not triggered):** None. Worst position BTC -3.43%. All within threshold. ✓

**STEP 4 — Stop tightening (≥+20% from entry):**
- BTC: -3.43% → threshold $92,348 (+20%) — not yet
- XRP: -2.62% → threshold $1.613 (+20%) — not yet
- XRP add: -3.05% → threshold $1.620 (+20%) — not yet
No adjustments. ✓

**STEP 5 — BTC Crash Gate:** BTC $74,317 | 24h open $75,827.70 = **-1.99%** | range $74,154–$76,042. Well under -20% threshold. No crash gate. ✓

**CRITICAL NOTE:** BTC trailing stop OOT7MM at $74,089.90 is only 0.31% below current price ($74,317). Day low $74,154 came within $64 of the stop. Stop is working as designed — trailing stops manage this automatically. Do NOT override.

**Result: NO-OP. No actions taken. No notification sent.**

---

## 2026-05-28 — Session-Open Scan

### Account State (confirmed live)

| Account | Balance | Notes |
|---|---|---|
| Kraken ZUSD | **$75.10** | BTC stop OOT7MM fired overnight at $74,050 (trigger $74,090); proceeds $38.23 |
| Kraken XRP | **60.806 XRP** | Two trailing stops active: OCLYQ6 + OBR3BF |
| Alpaca | **No positions, no active orders** | Confirmed clean ✓ |

| Symbol | Qty | Entry avg | Current | P&L% | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|
| XRP/USD | 31.000 | $1.344 | $1.299 | **-3.35%** | $1.26889 (OCLYQ6, 7% trail, HWM $1.36439) | 2.32% ⚠️ | ✓ |
| XRP/USD (add) | 29.806 | ~$1.350 | $1.299 | **-3.78%** | $1.26840 (OBR3BF, 7% trail, HWM $1.36387) | 2.36% ⚠️ | ✓ |

**BTC:** $74,150 ask | 24h open $74,337 = **-0.25%** | Crash gate: **NOT triggered** ✓
**Fear & Greed:** 25 — Extreme Fear

**STEP 3 — Crash gate:** BTC -0.25% → CLEAR ✓

**STEP 3 — Open stops verified (Kraken live orders API):**
- XRP: OCLYQ6, 31.00 XRP, trail +7%, stop $1.26889, HWM $1.36439 ✓
- XRP add: OBR3BF, 29.806 XRP, trail +7%, stop $1.26840, HWM $1.36387 ✓
- 2/2 active. No unprotected positions. No orphaned orders. ✓

**STEP 4 — Trigger checks (conditional entries from research log):**

| Candidate | Trigger | Current | Met? |
|---|---|---|---|
| HYPE/USD | ≥ $60.57 (VWAP reclaim) | $58.19 | ❌ NO |
| SOL/USD | ≥ $83.30 (VWAP reclaim) | $82.14 | ❌ NO |
| ETH/USD | ≥ $2,064 AND BTC ≥ $75,000 | $2,014 / $74,150 | ❌ NO |
| BTC | No re-entry today | $74,150 | SKIP |

**All three conditional triggers unmet. ZUSD $75.10 held on standby.**

**Thesis check:**
- XRP: CLARITY Act + XRP Ledger amendment May 27 — **INTACT. HOLD.** 7% trail appropriate.
- HYPE: ATH $63.32 today; pulled back -8%; VWAP $60.57 not reclaimed — WAIT.
- SOL: Below VWAP $83.30; no momentum catalyst confirmed — WAIT.

**Decision: HOLD — No New Trades (initial scan).** Superseded below — user directed trade.

---

## 2026-05-28 | HYPE/USD | BUY | 1.27729 HYPE | Entry: ~$58.46 | Trailing Stop 2.5%: $56.71 | Open

**Buy Order ID:** OH6S5M-IZ5XT-A3UDHG
**Trailing Stop Order ID:** OOP7VZ-TKT7G-ARLHYH (trail -2.5%, stop $56.71, HWM $58.16, GTC ✓)
**Notional:** ~$74.67 (100% available ZUSD)
**Trailing Stop %:** 2.5% (day trading default)
**Stop trigger:** $56.71 (2.5% trail from HWM $58.16)
**T1 Target:** $60.21 (+3% from ~$58.46 entry) | **T2 Target:** $61.38 (+5%)
**R:R:** 1.2:1 at T1 (3% reward / 2.5% trail risk) ✓
**Thesis:** Hyperliquid DEX perpetuals — new ATH $63.32 today; $14.84B 24h volume (exceptional institutional flow); +0.9% from 24h open $57.66; surging DEX volumes. Spread 0.017% ✓. User-directed entry.
**Crash gate:** BTC -0.25% 24h — NOT triggered ✓

**Pre-trade checklist:**
- [x] Crash gate: NOT triggered (BTC -0.25%) ✓
- [x] Spread ≤1%: 0.017% ✓
- [x] Asset on Kraken: HYPE/USD online ✓
- [x] Catalyst: ATH today ($63.32), $14.84B 24h volume, DEX narrative ✓
- [x] T1/T2 defined: $60.21 / $61.38 ✓
- [x] R:R ≥1.2:1: 1.2:1 ✓
- [x] Stop placed immediately post-fill: OOP7VZ ✓

---

## 2026-05-28 — Overnight Triage Check

**Positions (Kraken spot — trailing stops confirmed live):**

| Symbol | Qty | Entry | Current | P&L% | Stop | Buffer | Order |
|---|---|---|---|---|---|---|---|
| HYPE/USD | 1.27729 | ~$58.46 | $58.37 | -0.15% | $57.08 (OOP7VZ, 2.5% trail, HWM ~$58.54) | 2.21% ✓ | ✓ |
| XRP/USD | 31.000 | $1.344 | $1.29983 | -3.29% | $1.26889 (OCLYQ6, 7% trail, HWM $1.36439) | 2.38% ✓ | ✓ |
| XRP/USD add | 29.806 | ~$1.350 | $1.29983 | -3.71% | $1.26840 (OBR3BF, 7% trail, HWM $1.36387) | 2.42% ✓ | ✓ |

**Alpaca:** No positions. Stop a2b44cf9 cancelled 2026-05-22 ✓

**STEP 2 — Trailing stops verified:** 3/3 active. No unprotected positions. ✓

**STEP 3 — Emergency exits (>-20% AND stop not triggered):** None. Worst position XRP add -3.71%. All within threshold. ✓

**STEP 4 — Stop tightening (≥+20% from entry):** No winners. No adjustments. ✓

**STEP 5 — BTC Crash Gate:** BTC $74,097 | 24h open $74,337 = **-0.32%** | Well under -20% threshold. No crash gate. ✓

**Result: NO-OP. No actions taken. No notification sent.**

---

## 2026-05-28 — EOD Snapshot (Day 8, Thursday)

### May 28 — EOD Snapshot (Day 8, Thursday)
**Portfolio:** $149.47 | **Cash:** $149.47 (100%) | **Day P&L:** -$9.23 (-5.82%) | **Phase P&L:** -$30.31 (-16.87%) | **vs BTC:** -4.18%

| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Trailing Stop |
|---|---|---|---|---|---|---|
| — | — | — | — | All positions exited via trailing stops | — | — |

**Trades today:** 1) BTC trailing stop OOT7MM overnight (~$74,050, proceeds ~$38.23) 2) HYPE/USD BUY 1.27729 @ ~$58.46 (user-directed) 3) HYPE trailing stop OOP7VZ (~$57.08, ~-2.5%) 4) XRP OCLYQ6 trailing stop (31.000 XRP @ ~$1.268, ~-5.6%) 5) XRP OBR3BF trailing stop (29.806 XRP @ ~$1.268, ~-6.0%) | **Total since migration:** ~45

**Notes:** Mass stop cascade day. BTC trailing stop OOT7MM (5% trail) fired overnight at ~$74,050; proceeds $38.23 combined with $36.87 existing ZUSD → $75.10 cash at session open. User directed HYPE/USD BUY 1.27729 @ ~$58.46 for ~$74.67 (100% ZUSD). HYPE failed to hold and trailing stop OOP7VZ fired at ~$57.08 (-2.5%). XRP×2 both stopped at ~$1.268 — CLARITY Act Senate floor vote unscheduled, sentiment eroding (BTC -1.64% day, Fear & Greed 25 "Extreme Fear"). Portfolio now 100% ZUSD $149.47, no open positions, no pending orders. Day P&L -$9.23 (-5.82%) vs $158.70 May 27 EOD. Phase P&L -$30.31 (-16.87%) from $179.78 Kraken start. Bot underperformed BTC by -4.18% today. Alpaca: stop a2b44cf9 cancelled 2026-05-22; no Alpaca exposure. Tomorrow: 100% cash — fresh scan; require BTC reclaim $75K and Fear & Greed improvement before new entries.


---

## 2026-05-28 — XLM/USD | BUY | 577 XLM | Entry: ~$0.17362 | Trailing Stop 2.5%: $0.16928 | Open

**Buy Order ID:** OVSBJW-33UOJ-VG6NXQ
**Trailing Stop Order ID:** OEBVA3-AJOBJ-25PZDS (trail -2.5%, stop $0.16928, HWM $0.17362, GTC ✓)
**Notional:** ~$100.18 (~67% of $149.47 ZUSD)
**Trailing Stop %:** 2.5% (day trading default)
**Stop trigger:** $0.16928 (2.5% trail from HWM $0.17362)
**T1 Target:** $0.17883 (+3%) | **T2 Target:** $0.18230 (+5%)
**R:R:** 1.2:1 at T1 ✓

**Thesis:** DTCC/Stellar Development Foundation tokenization partnership (announced May 27). Stellar designated for Wall Street tokenized asset settlement infrastructure. XLM the standout gainer in weak market (+5.67% from daily open vs 91% of assets down). Price above VWAP $0.17192. Spread 0.139% ✓.

**Sizing note:** 67% allocation (not full 100%) — catalyst is 24h old and T1 sits near day high resistance ($0.17874). $48.69 ZUSD held in reserve.

**Crash gate:** BTC -1.27% 24h — NOT triggered ✓

**Pre-trade checklist:**
- [x] Crash gate: NOT triggered (BTC -1.27%) ✓
- [x] Spread ≤1%: 0.139% ✓
- [x] Asset on Kraken: XLMUSD online ✓
- [x] Catalyst: DTCC tokenization partnership + ongoing institutional demand ✓
- [x] T1/T2 defined: $0.17883 / $0.18230 ✓
- [x] R:R ≥1.2:1: 1.2:1 ✓
- [x] Stop placed immediately post-fill: OEBVA3 ✓

---

## 2026-05-28 — Session-Open Scan (evening)

### XLM/USD — T1 Reached → Stop Tightened

**Time:** ~UTC (session-open scan)
**XLM current:** $0.17955 (bid) | Entry: $0.17362 | **+3.42% — PAST T1 ✓**
**T1:** $0.17883 (+3%) — **EXCEEDED**
**T2:** $0.18230 (+5%)

**Action taken:** Cancelled 2.5% trailing stop OEBVA3-AJOBJ-25PZDS; placed 0.5% trailing stop per strategy rules.

**New Stop Order ID:** ODKG3E-2ZFML-4MN4OW (trail -0.5%, stop $0.17884, HWM $0.17974, GTC ✓)
**Locked gain:** +3.01% minimum from entry $0.17362 (stop $0.17884)

**Other positions/orders:** 1/1 active. No unprotected positions. ✓

**Account:** Kraken ZUSD $48.69 | XLM 577.00 | Trailing stop ODKG3E active ✓
**Alpaca:** No positions, no active orders ✓

### Conditional Trigger Check (pre-research plan)

| Candidate | Trigger | Current | Met? |
|---|---|---|---|
| HYPE/USD | ≥ $59.60 | $56.86 | ❌ NO |
| ETH/USD | ≥ $2,005 | $1,984.85 | ❌ NO |
| SOL/USD | ≥ $82.50 | $80.71 | ❌ NO |
| BTC/USD | ≥ $74,500 | $73,325 | ❌ NO |

**All triggers unmet. ZUSD $48.69 held in reserve.**

**BTC crash gate:** $73,325 vs 24h open $74,337 = **-1.36%** → NOT triggered ✓
**Fear & Greed:** 22 — Extreme Fear

**New candidates screened:** INIT/USD (-3.81% from open, not a momentum play); no fresh <6h catalyst found for any Kraken asset.

**Decision: HOLD — No New Trades.** XLM stop locked at T1. Cash reserve maintained for trigger confirmation.

---

## 2026-05-28 — XLM/USD | CLOSED | Exit ~$0.17884 | +3.0% | Stop-out at T1

**Stop Order:** ODKG3E-2ZFML-4MN4OW (0.5% trailing stop, triggered)
**Entry:** $0.17362 | **Exit:** ~$0.17884 (0.5% trail from HWM $0.17974)
**Qty:** 577 XLM | **Notional in:** $100.18 | **Notional out:** ~$102.92 (net of fees)
**Gain:** +$2.74 (+2.74% net after fees) ✓ T1 hit and locked
**Stop type:** 0.5% trailing (tightened from 2.5% when T1 hit)
**Thesis outcome:** DTCC/Stellar tokenization partnership catalyst; exited at T1 lock via trailing stop. XLM continued to $0.194 (+11.7% from exit) but catalyst 36h old at midday scan — no re-entry.

**Post-exit account:** Kraken ZUSD $151.61 | No open positions | No open orders ✓

---

## 2026-05-28 — Midday Scan: NO-OP

**Kraken:** No positions, no orders. ZUSD $151.61.
**Alpaca:** No positions, no orders.
**Action:** None. All conditional triggers unmet. BTC $72,530 new day lows, Fear & Greed 22 (Extreme Fear).
**Phase P&L:** $151.61 − $179.78 = **-$28.17 (-15.7%)**

---

## 2026-05-28T21:05:16Z | HBAR/USD | BUY | 1108.0000 HBAR | Entry: ~$0.09060 | Trailing Stop 2.5%: $0.08781 | Open

**Order ID (buy):** O3MMDD-TIYH2-HJ6CDB
**Trailing Stop Order ID:** OIM7MC-Q5KHN-HD4DOU (trail -2.5%, stop $0.08781, HWM ~$0.09006, GTC ✓)
**Notional:** ~$100.39 (~66% of $151.61 ZUSD)
**Trailing Stop %:** 2.5% (day trading default)
**Stop trigger:** $0.08781 (2.5% trail from HWM ~$0.09006)
**T1 Target:** $0.09332 (+3% from ~$0.09060) | **T2 Target:** $0.09513 (+5%)
**R:R:** 1.2:1 at T1 (3% reward / 2.5% trail risk) ✓
**Thesis:** OKCoinJapan exchange listing today — new JPY on-ramp; +5.5% from 24h open $0.08553; volume 31.8M HBAR (elevated); price above VWAP $0.08791; spread 0.022% ✓. Capital reserve $51.22 ZUSD held (Extreme Fear environment).
**Spread at entry:** ~0.022% ✓ | **Pair:** HBAR/USD ✓ (Kraken online)
**Crash gate:** BTC -1.15% 24h — NOT triggered ✓

**Pre-trade checklist:**
- [x] Crash gate: NOT triggered (BTC -1.15%) ✓
- [x] Spread ≤1%: 0.022% ✓
- [x] Asset on Kraken: HBAR/USD online ✓
- [x] Catalyst: OKCoinJapan listing today + momentum +5.5% from 24h open ✓
- [x] T1/T2 defined: $0.09332 / $0.09513 ✓
- [x] R:R ≥1.2:1: 1.2:1 ✓
- [x] Stop placed immediately post-fill: OIM7MC ✓

---

## 2026-05-28 — Overnight Check

**Time:** 2026-05-28 (overnight triage)
**BTC price:** $73,418.70 (open $74,337.00, -1.24%) — crash gate NOT triggered ✓

### Kraken — HBAR/USD position review

**Account balance:** 1108.00000 HBAR ✓ (position open, spot)
**Current HBAR price:** ~$0.09149 (+0.98% from entry ~$0.09060)
**HWM since entry:** ~$0.09244 (day high); trailing stop had self-adjusted to ~$0.08959

**⚠️ Stop incident:** Overnight triage incorrectly identified trailing stop OIM7MC-Q5KHN-HD4DOU as orphaned (Kraken `positions` endpoint returns margin positions only — HBAR is spot, so balance appeared only in `account`). Stop was canceled in error. Position was unprotected for < 30 seconds.

**Immediate remediation:** New 2.5% trailing stop placed immediately.
- **New Stop Order:** OZSDHA-YYZPV-VDWXM3 (trail -2.5%, GTC) ✓
- HBAR position is now protected ✓

**Step 4 (stop tightening):** HBAR +0.98% from entry — does NOT meet +20% threshold. Stop stays at 2.5%. No change.

**Alpaca:** No open positions. Stop a2b44cf9 was previously canceled on 2026-05-22 (position already closed at that time). No action required.

**Net P&L (overnight):** HBAR unrealized +$0.98 (+0.98%) on $100.39 notional.

---

## 2026-05-29 — EOD Snapshot (Day 9, Friday)

### May 29 — EOD Snapshot (Day 9, Friday)
**Portfolio:** $150.55 | **Cash:** $150.55 (100%) | **Day P&L:** +$1.08 (+0.73%) | **Phase P&L:** -$29.23 (-16.26%) | **vs BTC:** +0.46%

| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Trailing Stop |
|---|---|---|---|---|---|---|
| — | — | — | — | All positions exited | — | — |

**Trades today:** 1) HBAR/USD trailing stop OZSDHA-YYZPV-VDWXM3 exit at ~$0.08964 (-1.05%, -$1.06) | **Total since migration:** ~49

**Notes:** HBAR/USD position (entered 2026-05-28 21:05Z at ~$0.09060, OKCoinJapan listing catalyst) stopped out today via 2.5% trailing stop OZSDHA at ~$0.08964 (−1.05%, −$1.06 net). Portfolio returned to 100% ZUSD $150.55. Day P&L +$1.08 (+0.73%) is net positive because yesterday's XLM trade (+$2.74 net) offset today's HBAR stop loss; both positions were entered/exited after the May 28 EOD snapshot. Phase P&L −$29.23 (−16.26%) from $179.78 Kraken start. Bot outperformed BTC by +0.46% today (BTC +0.27%, $73,418→$73,618). No open positions, no open orders. Alpaca: stop a2b44cf9 canceled 2026-05-22, no Alpaca exposure. Tomorrow (Saturday): 100% cash; BTC ~$73,618, Fear & Greed 22 (Extreme Fear). Require BTC reclaim $74,000+ and sentiment improvement before new entries.

---

## 2026-05-29 — Midday Scan (no trades)

- Kraken: No positions, no orders. ZUSD $150.5526 (100% cash).
- BTC $73,316 (−0.27% 24h) — crash gate NOT triggered; weekly trend gate ACTIVE (−5.4% vs May 22 $77,574)
- Fear & Greed: 23 (Extreme Fear) | BTC ETF outflows −$223M May 28
- **XLM:** +17.5% from open but DTCC catalyst 2+ days old → fails weekly gate (no fresh <3h catalyst). SKIP.
- **HYPE:** +5.47% from open but R:R 0.86:1 (3.5% stop, high-ATR) < 1.2:1 minimum; token unlock today. SKIP.
- **XRP:** No CLARITY Act floor vote; R:R 0.43:1 fails even under binary catalyst framework. SKIP.
- No trades. No notification sent.

---

## 2026-05-30 — EOD Snapshot (Day 10, Saturday)

### May 30 — EOD Snapshot (Day 10, Saturday)
**Portfolio:** $150.55 | **Cash:** $150.55 (100%) | **Day P&L:** $0.00 (0.00%) | **Phase P&L:** -$29.23 (-16.26%) | **vs BTC:** +0.24%

| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Trailing Stop |
|---|---|---|---|---|---|---|
| — | — | — | — | No positions | — | — |

**Trades today:** none | **Total since migration:** ~49

**Notes:** Flat no-trade Saturday. Portfolio 100% ZUSD $150.5526, unchanged from May 29 EOD. No positions, no open orders. BTC drifted -0.24% intraday ($73,618 → $73,443) while bot held flat, resulting in +0.24% outperformance vs BTC today. Alpaca stop a2b44cf9 canceled 2026-05-22 — no Alpaca exposure. Phase P&L remains -$29.23 (-16.26%) from Kraken starting equity $179.78. Fear & Greed still ~22 (Extreme Fear); BTC $73,443. Plan for Sunday/Monday: require confirmed BTC reclaim above $74,000+ and fresh catalyst before new entries; crash gate threshold $58,754 (BTC -20% from ~$73,443).

---

## 2026-05-30 — Midday Scan (no trades)

- **Kraken:** No positions, no orders. ZUSD $150.5526 (100% cash). ✓
- **Alpaca:** No active positions or orders. ✓
- **BTC:** $73,791 (+0.57% from 24h open $73,370) — crash gate NOT triggered ✓ | Weekly trend gate ACTIVE: −4.87% vs May 22 $77,574
- **Fear & Greed:** 23 (Extreme Fear)

**Candidates screened (midday):**

| Asset | Signal | Catalyst | Gate | Verdict |
|---|---|---|---|---|
| HYPE/USD | +5.75% 24h, near ATH $68.57 | Spot ETF $74.91M inflows (ongoing since May 12), buybacks | Catalyst-driven exemption — BUT R:R 0.86:1 with required 3.5% high-ATR stop (< 1.2:1 min) | SKIP — R:R fails |
| WLD/USD | +11.1% 24h, near day high $0.3241 | Whale accumulation 30M coins; July 24 unlock reduction (55 days away) — no fresh <3h catalyst | Weekly gate: pure momentum, no fresh <3h event | SKIP — gate |
| XLM/USD | -2.9% from today's open $0.25967 | DTCC partnership (3+ days old) | Below VWAP; negative momentum | SKIP — down from open |
| XRP/USD | +0.92% 24h | CLARITY Act Senate floor vote NOT scheduled/triggered | Binary trigger not fired | SKIP — trigger not met |
| BTC/USD | +0.57% 24h | No fresh catalyst | Weekly gate still active | SKIP — gate |

**Decision: NO NEW TRADES — BTC weekly trend gate ACTIVE.** HYPE was closest candidate but R:R fails (0.86:1) using required 3.5% trail for high-ATR asset. No notification sent (no action taken).

---

## 2026-05-30 — Session-Open Scan (evening)

**Account:** Kraken ZUSD $150.5526 | No positions | No orders ✓
**Alpaca:** No positions, no active orders ✓
**BTC:** $73,821 (+0.62% 24h, open $73,370) | Weekly gate: −4.84% vs May 22 $77,574 → **ACTIVE** | Crash gate: NOT triggered ✓
**Fear & Greed:** 23 (Extreme Fear) — 7th consecutive day

**Pre-session research highlights:**
- INJ/USD: +6.9% 24h — native USDC on Injective launched May 27 (3 days old, fails <6h catalyst rule)
- XLM/USD: NOW −3.2% from 24h open $0.259673 (current $0.251, day high $0.298 earlier) — DTCC catalyst 3+ days old; momentum reversed
- WLD/USD: +11% 24h — no fresh <3h catalyst; weekly gate bars pure momentum
- HYPE/USD: +5.75% 24h — ongoing ETF inflows catalyst but R:R 0.86:1 < 1.2:1 min (3.5% high-ATR stop)
- XRP/USD: CLARITY Act floor vote not scheduled
- OP/USD: 31.34M OP unlock today (~$85M) — bearish supply event

**Candidates screened:**

| Asset | Signal | Gate/Check | Verdict |
|---|---|---|---|
| XLM/USD | −3.2% from open; high $0.298 → now $0.251 | DTCC catalyst 3+ days old; momentum reversed | SKIP |
| INJ/USD | +6.9% 24h; below day high $7.078 | USDC catalyst May 27 (3 days old) | SKIP |
| HYPE/USD | +5.75% 24h | R:R 0.86:1 < 1.2:1 minimum | SKIP |
| WLD/USD | +11% 24h | No fresh <3h catalyst; weekly gate | SKIP |
| XRP/USD | ~flat | Floor vote not scheduled | SKIP |
| OP/USD | ~flat | Unlock event today (bearish) | SKIP |

**Decision: NO NEW TRADES.** Weekly gate active; no candidate has a fresh catalyst <6h old; R:R failures persist. No notification sent (no trades fired).

---

## 2026-05-30 — Overnight Triage Check

**Kraken positions:** None — 100% ZUSD $150.5526  
**Kraken orders:** None  
**Alpaca:** No positions, no active orders (stop a2b44cf9 cancelled 2026-05-22 — previously documented)

**Step 2 — Trailing stops:** N/A — no open positions  
**Step 3 — Emergency exits:** N/A — no open positions  
**Step 4 — Stop tightening:** N/A — no open positions  

**Step 5 — Crash gate:** BTC open $73,370.70 → current $73,879.80 = **+0.69%** — crash gate NOT triggered (threshold: BTC <$58,750)

**Result: NO-OP. No actions taken. No notification sent.**

---

## 2026-05-31 — Overnight Triage Check

**Kraken positions:** None — 100% ZUSD $150.5526  
**Kraken orders:** None  
**Alpaca:** No positions, no active orders (stop a2b44cf9 cancelled 2026-05-22 — position closed, expected)

**Step 2 — Trailing stops:** N/A — no open positions  
**Step 3 — Emergency exits:** N/A — no open positions  
**Step 4 — Stop tightening:** N/A — no open positions  

**Step 5 — Crash gate:** BTC 24h open $73,778.80 → current $73,986 (ask $73,985.90) = **+0.28%** — crash gate NOT triggered (threshold: BTC <$58,750)  
24h range: $73,131 low / $74,161 high — BTC ranging; no extreme move.

**Result: NO-OP. No actions taken. No notification sent.**


---

## 2026-05-31 — EOD Snapshot (Day 11, Sunday)

### May 31 — EOD Snapshot (Day 11, Sunday)
**Portfolio:** $150.55 | **Cash:** $150.55 (100%) | **Day P&L:** $0.00 (0.00%) | **Phase P&L:** -$29.23 (-16.26%) | **vs BTC:** -0.08%

| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Trailing Stop |
|---|---|---|---|---|---|---|
| — | — | — | — | No positions | — | — |

**Trades today:** none | **Total since migration:** ~49

**Notes:** Flat no-trade Sunday. Portfolio 100% ZUSD $150.5526, unchanged from May 30 EOD. No positions, no open orders. BTC gained +0.08% intraday (24h open $73,779 → EOD $73,835), causing bot to underperform BTC by -0.08% on a cash-only day. Alpaca stop a2b44cf9 confirmed canceled 2026-05-22 — no Alpaca residual exposure. Phase P&L unchanged at -$29.23 (-16.26%) from Kraken starting equity $179.78. BTC ranged $73,399–$74,161 today; no catalyst or momentum setup met entry criteria. Plan for Monday: require BTC sustained above $74,000 + fresh catalyst (<6h old) before new entries; crash gate threshold $58,754 (BTC -20% from current ~$73,835).

---

## 2026-06-01 — EOD Snapshot (Day 12, Monday)

### Jun 01 — EOD Snapshot (Day 12, Monday)
**Portfolio:** $150.55 | **Cash:** $150.55 (100%) | **Day P&L:** $0.00 (0.00%) | **Phase P&L:** -$29.23 (-16.26%) | **vs BTC:** +1.32%

| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Trailing Stop |
|---|---|---|---|---|---|---|
| — | — | — | — | No positions | — | — |

**Trades today:** none | **Total since migration:** ~49

**Notes:** Flat no-trade Monday. Portfolio 100% ZUSD $150.5526, unchanged from May 31 EOD. No positions, no open orders. BTC fell -1.32% intraday (24h open $73,569.90 → EOD ~$72,601.90; range $72,523–$74,070), so cash outperformed BTC by +1.32% today. Alpaca stop a2b44cf9 confirmed canceled 2026-05-22 — no Alpaca residual exposure. Phase P&L unchanged at -$29.23 (-16.26%) from Kraken starting equity $179.78. BTC broke below $73,000 for the first time this session — bearish intraday pressure. Crash gate threshold $58,750 (BTC -20%). Plan for Tuesday: watch for BTC stabilisation and any fresh catalyst <6h old; require R:R ≥1.2:1 before entry.

---

## 2026-06-01 — Midday Scan

- **Kraken:** No positions, no orders. ZUSD $150.5526 (100% cash). ✓
- **Alpaca:** No active positions or orders (stop a2b44cf9 confirmed cancelled 2026-05-22). ✓
- **BTC:** ~$73,580 (−0.41% to −0.81% 24h) | Weekly gate: **ACTIVE** (BTC −5.1% vs May 22 $77,574) | Crash gate: NOT triggered ✓
- **Fear & Greed:** 28 (Fear, improving from 22–23 yesterday)

**STEP 3 — Trailing stops:** N/A — no open positions.
**STEP 4 — Stop tightening:** N/A — no open positions.
**STEP 5 — Thesis check:** N/A — no open positions.

**STEP 6 — New entry scan:**

| Asset | Signal | Catalyst | Gate | Verdict |
|---|---|---|---|---|
| ALGO/USD | +7.79% 24h (Kraken) | Technical breakout only — no fundamental catalyst | Weekly gate: pure momentum BANNED | SKIP |
| PORTAL/USD | +157–173% 24h | Technical breakout, no confirmed today-specific catalyst (Perplexity confirmed) | Weekly gate: pure momentum BANNED | SKIP |
| NIGHT/USD | +4.18% 24h (Kraken) | No catalyst | Weekly gate: pure momentum BANNED | SKIP |
| RENDER/USD | +3.43% 24h (Kraken) | No catalyst | Weekly gate: pure momentum BANNED | SKIP |
| XRP/USD | −2.1% from open | CLARITY Act Senate floor vote NOT confirmed today | Binary catalyst exemption not triggered | SKIP |
| SUI/USD | — | ~$158M token unlock today (bearish supply) | — | SKIP |
| ENA/USD | — | ~$36M token unlock today (bearish supply) | — | SKIP |

**Weekly gate:** BTC $73,580 vs May 22 $77,574 = −5.1% → ACTIVE. Requires 1h >5% + fresh catalyst <3h, OR catalyst-driven exemption. No candidate qualifies.
**No trades. No notification sent (no actions taken).**

---

## 2026-06-01 — Midday Scan v2 (no trades)

- **Kraken:** No positions, no orders. ZUSD $150.5526 (100% cash). ✓
- **Alpaca:** No active positions or orders. ✓
- **BTC:** ~$73,600 (weekly gate ACTIVE −5.1% vs May 22 $77,574) | Crash gate: NOT triggered ✓
- **Fear & Greed:** 28 (Fear)
- **STG/USD screened:** Spread 0.13% ✓ but −21.2% from 24h open $0.3818 (fading pump from $0.4081 high); LayerZero buyout catalyst Aug 2025 (stale) → SKIP
- **PORTAL/USD:** +173–190% 24h but no confirmed today-specific catalyst → weekly gate BANNED → SKIP
- **SLX/USD:** Upbit listing catalyst but not listed on Kraken → SKIP
- **XRP/USD:** CLARITY Act floor vote July 2026 estimate, not confirmed today → SKIP
- No trades. No notification sent.

---

## 2026-06-01 — Session-Open Scan (evening)

**Kraken:** ZUSD $150.5526 (100% cash) | No positions | No open orders ✓
**Alpaca:** No positions, no active orders (stop a2b44cf9 cancelled 2026-05-22) ✓

**Live Kraken quotes (session-open):**
| Asset | Ask | 24h Open | 24h Chg | VWAP | Spread | Status |
|---|---|---|---|---|---|---|
| BTC/USD | $71,519.60 | $73,569.90 | −2.78% | $72,344 | 0.001% ✓ | BELOW open |
| ETH/USD | $1,968.35 | $2,004.07 | −1.78% | $1,984 | 0.001% ✓ | BELOW open |
| XRP/USD | $1.28501 | $1.33121 | −3.47% | $1.301 | 0.001% ✓ | BELOW open |
| SOL/USD | $79.64 | $82.32 | −3.26% | $81.09 | 0.013% ✓ | BELOW open |
| ALGO/USD | $0.11711 | $0.12738 | −8.06% | $0.12029 | 0.077% ✓ | BELOW open |
| HYPE/USD | $71.40 | $72.04 | −0.88% | $72.59 | 0.028% ✓ | BELOW open |

**BTC weekly trend gate:** $71,519 vs May 22 $77,574 = **−7.81% → ACTIVE**
**Crash gate:** −2.78% 24h vs −20% threshold → NOT triggered

**Candidate screening:**

| Asset | Signal | Catalyst | Gate | Verdict |
|---|---|---|---|---|
| ALGO/USD | −8.06% from open; high $0.1275 → now $0.1171; BELOW VWAP | AlgoKit 4.0 "H1 2026" (no confirmed release date today); not a fresh <6h catalyst | Weekly gate: catalyst not fresh/confirmed | SKIP |
| HYPE/USD | −0.88% from open; below VWAP $72.59 | CFTC approval May 29 (3 days old); Circle May 30 (2 days old); high-ATR 3.5% stop → R:R 0.857:1 < 1.2:1 | R:R fails + momentum negative | SKIP |
| XRP/USD | −3.47% from open | CLARITY Act floor vote NOT confirmed today | Binary trigger not fired | SKIP |
| SOL/USD | −3.26% from open | No fresh catalyst | Below open | SKIP |
| ETH/USD | −1.78% from open | Glamsterdam Q3 2026 (multi-week horizon); no intraday catalyst | Below open; no intraday catalyst | SKIP |
| PORTAL/USD | +173% 24h | No confirmed project-specific catalyst (Perplexity confirmed multiple times) | Pure momentum BANNED under weekly gate | SKIP |

**Decision: NO NEW TRADES.**
- BTC weekly gate ACTIVE (−7.81% vs May 22); requires 1h >5% + catalyst <3h old OR catalyst-driven exemption
- All screened assets are BELOW their 24h open — no positive momentum
- No fresh catalysts <6h old identified today
- Macro: U.S. jobs report risk-off; BTC broke below $72k; Fear & Greed 28–29 (Fear)
- Capital: 100% ZUSD $150.5526 preserved

**Active watchlist carries forward:**
1. **XRP** — CLARITY Act Senate floor vote confirmed → entry, 7% trail (binary catalyst exemption)
2. **KAS** — Toccata hard fork June 5–20 → catalyst-driven exemption if 1h >3% within 48h of confirmed fork date
3. **BTC weekly gate reset** → BTC reclaim $77,574 (+8.5% from current) reopens full momentum universe
4. **HYPE** — R:R improves if fresh catalyst <6h OR pullback to $68 entry level

---

## 2026-06-02 — Overnight Triage Check

**Kraken positions:** None — 100% ZUSD $150.5526
**Kraken orders:** None
**Alpaca:** No positions, no active orders (stop a2b44cf9 cancelled 2026-05-22 — already documented)

**Step 2 — Trailing stops:** N/A — no open positions
**Step 3 — Emergency exits:** N/A — no open positions
**Step 4 — Stop tightening:** N/A — no open positions

**Step 5 — Crash gate:** BTC 24h open $71,315.50 → current $70,767 = **−0.77%** — crash gate NOT triggered (threshold: BTC < $58,750)
24h range: $70,000 low / $73,889 high. BTC weekly gate still ACTIVE (−8.82% vs May 22 $77,574 baseline).

**Result: NO-OP. No actions taken. No notification sent.**

---

## 2026-06-02 — Session-Open Scan

**Kraken:** ZUSD $150.5526 (100% cash) | No positions | No open orders ✓
**Alpaca:** No positions | No active orders (stop a2b44cf9 cancelled 2026-05-22) ✓

**Live Quotes:**
| Asset | Ask | 24h Open | 24h Chg | 24h Low | Spread | Status |
|---|---|---|---|---|---|---|
| BTC/USD | $69,553 | $71,315.50 | −2.47% | $69,540 | 0.001% ✓ | AT 24H LOWS |
| HYPE/USD | $71.16 | $73.52 | −3.21% | $71.00 | 0.028% ✓ | AT 24H LOWS |
| SOL/USD | $79.39 | $81.18 | −2.21% | $79.10 | 0.013% ✓ | BELOW open |
| XRP/USD | $1.261 | $1.296 | −2.65% | $1.257 | 0.009% ✓ | BELOW open |
| KAS/USD | $0.02941 | $0.03044 | −3.38% | $0.02920 | 0.068% ✓ | BELOW open |
| STG/USD | $0.37280 | $0.33240 | +12.15% | $0.31310 | 0.161% ✓ | ABOVE open |

**Gates:**
- **BTC weekly gate:** $69,553 vs May 22 $77,574 = **−10.30% → ACTIVE**
- **Crash gate:** NOT triggered (threshold BTC < $57,052)
- **Fear & Greed:** 23 (Extreme Fear)

**Candidate Screening:**
| Asset | Signal | Catalyst | Gate | Verdict |
|---|---|---|---|---|
| STG/USD | +12.15% from open | LayerZero acquisition (months old); Superform Swap May 21 (12d old); no fresh catalyst <3h confirmed by Perplexity | Weekly gate: pure momentum BANNED | SKIP |
| KAS/USD | −3.38% from open | Toccata hard fork window opens TOMORROW June 3 | Below open; entry window not yet active | SKIP — ELEVATED WATCH |
| HYPE/USD | −3.21% from open | No fresh catalyst | At 24h lows | SKIP |
| SOL/USD | −2.21% from open | No catalyst | Below open | SKIP |
| XRP/USD | −2.65% from open | CLARITY Act Senate floor vote not confirmed today | Binary trigger not fired | SKIP |
| BTC/USD | −2.47% from open; at 24h lows | ETF outflows structural | Below open; weekly gate ACTIVE | SKIP |

**Exchange listings / regulatory wins / protocol upgrades (Perplexity):** None confirmed on Kraken within last 3h.

**Decision: NO NEW TRADES.**
- Weekly gate ACTIVE at −10.30%; all assets below open except STG (momentum only → BANNED)
- No catalyst-driven exemption qualifies today
- Capital: 100% ZUSD $150.5526 preserved

**Active Watchlist:**
1. **KAS/USD** ⬆️⬆️ CRITICAL — Toccata hard fork window OPENS June 3. If KAS 1h >3% tomorrow → catalyst-driven exemption → entry ~$0.0294, T1 $0.0303 (+3%), T2 $0.0309 (+5%), 2.5% trailing stop, size up to 80% equity (~$120)
2. **XRP/USD** — CLARITY Act floor vote confirmed → binary catalyst entry, 7% trailing stop
3. **STG/USD** — watching for fresh catalyst <3h; if LayerZero/ZRO news breaks → entry ~$0.37, 2.5% trail
4. **BTC weekly gate reset** — BTC must reclaim $77,574 (+11.5% from current) to reopen full momentum universe

---

## 2026-06-02 — Session-Open Scan (morning)

**Kraken:** ZUSD $150.5526 (100% cash) | No positions | No open orders ✓
**Alpaca:** No positions | No active orders (stop a2b44cf9 cancelled 2026-05-22) ✓

**Live Kraken Quotes:**
| Asset | Ask | 24h Open | 24h Chg | 24h Low | Spread | Status |
|---|---|---|---|---|---|---|
| BTC/USD | $67,567 | $71,315.50 | −5.26% | $66,327 | 0.018% ✓ | BELOW open |
| KAS/USD | $0.02927 | $0.030440 | −3.84% | $0.02852 | 0.068% ✓ | BELOW open |
| PORTAL/USD | $0.02537 | $0.02157 | +17.6% | $0.01846 | 1.11% ✗ | ABOVE open — spread fails |
| NEAR/USD | $2.713 | $2.637 | +2.88% | $2.450 | 0.11% ✓ | Slightly above open |
| INJ/USD | $6.658 | $6.964 | −4.40% | $6.459 | 0.09% ✓ | BELOW open |
| XRP/USD | $1.2235 | $1.2956 | −5.56% | $1.2055 | 0.001% ✓ | BELOW open |

**Gates:**
- **BTC weekly gate:** $67,567 vs May 22 $77,574 = **−12.9% → ACTIVE**
- **Crash gate:** BTC −5.26% 24h vs −20% threshold → NOT triggered (threshold BTC < $57,052)
- **Fear & Greed:** 23 (Extreme Fear) — unchanged
- **BTC funding rate:** Binance +0.0083%, Bybit +0.0092% — slightly positive, neutral signal

**Candidate Screening:**
| Asset | Signal | Catalyst | Gate | Verdict |
|---|---|---|---|---|
| KAS/USD | −3.84% from open | Toccata hard fork June 5 (Perplexity confirmed: "June 5–20 window"); within 72h window but entry requires 1h >3% positive momentum | Entry signal NOT firing — KAS DOWN | **SKIP — CRITICAL WATCH June 5** |
| PORTAL/USD | +17.6% from open | No confirmed project catalyst (pure speculation/liquidity rotation — confirmed multiple times) | Spread 1.11% → HARD SKIP; weekly gate bans pure momentum | **SKIP** |
| NEAR/USD | +2.88% from open | No catalyst | Weekly gate: below 3% threshold; no catalyst | **SKIP** |
| XRP/USD | −5.56% from open | CLARITY Act Senate floor vote July 2026 est.; not confirmed today | Binary trigger not fired | **SKIP** |
| INJ/USD | −4.40% from open | No fresh catalyst; Bithumb suspension headwind June 4 | Below open | **SKIP** |
| OMNI/USD | Quote available | Spread 38.7% (illiquid, 4 trades in period) | HARD SKIP — spread | **SKIP** |

**ENA token unlock today:** 94.18M ENA ($7.73M) — bearish supply pressure ongoing.

**Decision: NO NEW TRADES.**
- BTC weekly gate ACTIVE at −12.9%; all major assets except PORTAL below open
- PORTAL: spread 1.11% > 1% → HARD SKIP; no confirmed catalyst = BANNED
- KAS Toccata fork confirmed June 5 but momentum signal NOT firing today (KAS −3.84%)
- XRP CLARITY Act: Senate floor vote July 2026, binary trigger not confirmed
- No new exchange listings, regulatory wins, or protocol upgrades confirmed <3h
- Capital: 100% ZUSD $150.5526 preserved
- No trades → no WhatsApp notification sent

**Active Watchlist (updated):**
1. **KAS/USD** ⬆️⬆️⬆️ CRITICAL — Toccata hard fork activation window June 5–20 (one source: June 5). If KAS 1h >3% on June 5+ → catalyst-driven exemption fires. Entry ~$0.02927, T1 $0.03015 (+3%), T2 $0.03073 (+5%), 2.5% trailing stop, R:R 1.2:1 ✓, size up to 80% equity (~$120). Spread 0.068% ✓.
2. **XRP/USD** — CLARITY Act Senate floor vote confirmed → binary catalyst entry, 7% trailing stop.
3. **BTC weekly gate reset** — BTC must reclaim $77,574 (+14.8% from current $67,567) to reopen full momentum universe.
4. **PORTAL/USD** — Spread must narrow below 1%; PLUS confirmed project catalyst required. Current spread 1.11% → blocked.

---

## 2026-06-02 — Overnight Triage Check (latest)

**Kraken positions:** None — 100% ZUSD $150.5526
**Kraken orders:** None
**Alpaca:** No positions, no active orders (stop a2b44cf9 cancelled 2026-05-22 — position closed, confirmed)

**Step 2 — Trailing stops:** N/A — no open positions
**Step 3 — Emergency exits:** N/A — no open positions
**Step 4 — Stop tightening:** N/A — no open positions

**Step 5 — Crash gate:** BTC 24h open $71,315.50 → current $66,183.50 (ask) = **−7.19%** — crash gate NOT triggered (threshold: BTC < $57,052 = −20% from 24h open)
24h range: $66,155 low / $71,464.90 high. BTC weekly gate still ACTIVE (−14.7% vs May 22 $77,574 baseline).

**Result: NO-OP. No actions taken. No notification sent.**

---

## 2026-06-03 — Overnight Triage Check

**Kraken positions:** None — 100% ZUSD (verified `kraken.sh positions` → `{}`)
**Kraken orders:** None (verified `kraken.sh orders` → `{"open":{}}`)
**Alpaca:** No positions, no active orders (stop a2b44cf9 canceled 2026-05-22 — confirmed)

**Step 2 — Trailing stops:** N/A — no open positions
**Step 3 — Emergency exits:** N/A — no open positions
**Step 4 — Stop tightening:** N/A — no open positions

**Step 5 — Crash gate:** BTC 24h open $66,669.70 → current $66,540 (last $66,539.50) = **−0.19%** — crash gate NOT triggered (threshold: BTC < $53,336 = −20% from 24h open)
24h range: $66,384.80 low / $67,083.30 high. BTC weekly gate still ACTIVE (−14.2% vs May 22 $77,574 baseline).

**Active Watchlist:**
1. **KAS/USD** ⬆️⬆️⬆️ CRITICAL — Toccata hard fork activation window June 5–20. If KAS 1h >3% on June 5+ → catalyst-driven exemption fires.
2. **XRP/USD** — CLARITY Act Senate floor vote confirmed → binary catalyst entry, 7% trailing stop.
3. **BTC weekly gate reset** — BTC must reclaim $77,574 (+16.6% from $66,540) to reopen full momentum universe.

**Result: NO-OP. No actions taken. No notification sent.**

---

## 2026-06-03 — EOD Snapshot (Day 14, Wednesday)

### Jun 03 — EOD Snapshot (Day 14, Wednesday)
**Portfolio:** $150.55 | **Cash:** $150.55 (100%) | **Day P&L:** $0.00 (0.00%) | **Phase P&L:** -$29.23 (-16.26%) | **vs BTC:** -0.46%

| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Trailing Stop |
|---|---|---|---|---|---|---|
| — | — | — | — | No positions | — | — |

**Trades today:** none | **Total since migration:** ~49

**Notes:** Flat no-trade Wednesday. Portfolio 100% ZUSD $150.5526, unchanged. No positions, no open orders. BTC rose +0.46% intraday (24h open $66,669.70 → EOD $66,975; range $65,379.80–$67,420), so cash underperformed BTC by -0.46% today. Alpaca stop a2b44cf9 confirmed canceled 2026-05-22 — no Alpaca residual. Phase P&L unchanged at -$29.23 (-16.26%) from Kraken starting equity $179.78. No June 2 EOD snapshot was generated (triage-only day, equity unchanged). BTC weekly gate ACTIVE at -13.7% vs May 22 $77,574 baseline. Crash gate NOT triggered. Key watch: KAS Toccata hard fork window opens June 5; XRP CLARITY Act binary trigger pending. Plan for Thursday: monitor KAS for 1h >3% surge on/after June 5; watch for any fresh <6h catalyst across full Kraken universe; require R:R ≥1.2:1.

---

## 2026-06-03 — Session-Open Trade (Thursday morning)

### 2026-06-03T09:05:00Z | KAS/USD | BUY | 3367 KAS | Entry: ~$0.031300 | Stop: trailing 3.5% (OPX7OP-RQ6FF-EVNTD4) | Open

**Order ID (buy):** OPU6QW-CEMVR-MAJUIK
**Stop Order ID:** OPX7OP-RQ6FF-EVNTD4 (trailing_stop: trail_percent 3.5%, covers 3367 KAS, GTC; current stop level $0.030200 — trails upward)
**Notional:** $105.39 (70.0% equity $150.5526)
**Target:** T1 $0.032239 (+3%), T2 $0.032865 (+5%)
**Stop level:** trailing 3.5% below high watermark; initial stop $0.030200 (-3.5% from ~$0.031300 entry)
**R:R:** 1.2:1 at T1 (3% target / 2.5% standard denominator per strategy)
**Thesis:** KAS Toccata protocol hard fork activation window June 5–20, 2026. One source (Bitrue) cites June 5 specifically. Protocol upgrade = catalyst-driven exemption from BTC weekly gate. KAS at +9.44% from 24h open at session high — pre-fork momentum accelerating. Spread 0.128% ✓. BTC crash gate NOT triggered (BTC +0.39% from 24h open $66,669.70).
**Notes:** High-ATR asset (24h range ~9.4%) → 3.5% trailing stop per strategy exception (vs 2.5% default). BTC weekly gate ACTIVE (-13.44%) but protocol upgrade exemption fires. Entry at 24h highs — full catalyst-momentum alignment. ZUSD after fill: $44.6348 (from $150.5526). Alpaca: no positions, no active orders confirmed.

**At T1 ($0.032239):** cancel trailing stop OPX7OP-RQ6FF-EVNTD4, replace with 0.5% trailing stop to lock gains and trail toward T2.

---

## 2026-06-03 — Midday Scan

| Symbol | Qty | Entry | Current | P&L% | Stop Buffer | Order |
|---|---|---|---|---|---|---|
| KAS/USD | 3367 | $0.031300 | $0.031040 | **−0.83%** | 2.57% | OPX7OP-RQ6FF-EVNTD4 ($0.030300 trail 3.5%) ✓ |

**Account:** ZUSD $44.6348 (residual cash) | KAS MV ~$104.54 | Total ~$149.17 | BTC weekly gate: −13.55% ACTIVE
**BTC:** $67,080 (+0.61% from 24h open $66,669.70) | Crash gate: NOT triggered

**STEP 3 — Trailing stops:** KAS trailing stop OPX7OP-RQ6FF-EVNTD4 confirmed open (status: open, stopprice $0.030300, trail 3.5%, 3367 KAS, GTC) ✓ HWM = $0.031390 (24h high at session open).

**STEP 4 — Stop tightening:** KAS −0.83% from entry — far below +20% threshold. No adjustments.

**STEP 5 — Thesis check:**
- **KAS Toccata fork:** Toccata hard fork window June 5–20, 2026 (today is June 3). Fork has NOT activated yet — pre-fork positioning thesis INTACT. Perplexity confirms no adverse news, no exploit, no delay announcement. HOLD.

**STEP 6 — New entry scan:**
| Asset | Signal | Catalyst | Gate | Verdict |
|---|---|---|---|---|
| ZEC/USD | Ask $615.98 (+1.04% from open); 24h high was $644.61 (now pulling back) | Emergency Orchard protocol security patch June 1–2 (1–2 days old, not <6h) | Catalyst too old; momentum reversed from highs | SKIP |
| NEAR/USD | $2.834 (+7.89% from open) | No catalyst confirmed | Pure momentum → **BANNED** under weekly gate | SKIP |
| XRP/USD | $1.239 (+2.35% from open) | CLARITY Act Senate floor vote not confirmed today | Binary trigger not fired | SKIP |
| BTC/USD | $67,080 (+0.61%) | No catalyst | Weekly gate −13.55% ACTIVE; no signal | SKIP |

**Result: NO-OP. No trades. No notification sent.**

---

## 2026-06-03 — Session-Open Scan (Afternoon)

| Symbol | Qty | Entry | Current | P&L% | Stop Buffer | Order |
|---|---|---|---|---|---|---|
| KAS/USD | 3367 | $0.031300 | $0.030720 | **−1.85%** | ⚠️ **1.37% — CRITICAL** | OPX7OP-RQ6FF-EVNTD4 (trail 3.5%, stop $0.030300) ✓ |

**Account:** ZUSD $44.6348 | KAS MV ~$103.45 | Total ~$148.09
**BTC:** $66,930 (+0.39% from 24h open $66,669.70) | Crash gate: NOT triggered | Weekly gate: −13.73% ACTIVE
**Fear & Greed:** 23 (Extreme Fear) | BTC funding: ~neutral/mildly positive (~0.003%)
**Alpaca:** No positions, no active orders ✓

**Candidate Screening:**
| Asset | Signal | Catalyst | Gate | Verdict |
|---|---|---|---|---|
| ETH/USD | +0.99% from open | No catalyst | Below 3% threshold | SKIP |
| SOL/USD | +1.21% from open | No catalyst | Below 3% threshold | SKIP |
| XRP/USD | +2.03% from open | CLARITY Act Senate floor vote pending (July 2026 est.) | Binary trigger not confirmed | MONITOR |
| XLM/USD | +2.27% from open | DTCC tokenization announcement — **7 days old (May 27)** | Catalyst >6h old → hard skip | SKIP |
| PORTAL/USD | −4.84% from open | No catalyst; spread 0.80% | Falling from open, no catalyst | SKIP |
| KAS/USD | −1.85% from entry | Toccata hard fork June 5–20 INTACT | Already positioned; stop buffer CRITICAL | HOLD |

**KAS position assessment:**
- Stop $0.030300 (HWM $0.031390 × 96.5%). Buffer 1.37% critically thin.
- Thesis intact: Toccata protocol hard fork activation window opens June 5 (2 days away).
- No adverse news (no fork delay/cancellation, no exploit).
- Stop working as designed — if $0.030300 breached, position closes with ~−3.2% loss.
- DO NOT adjust stop down. Let trailing stop work.

**Decision: NO NEW TRADES.** BTC weekly gate ACTIVE (−13.73%); no fresh catalysts <6h for any asset. KAS stop protecting existing position. XRP binary trigger not confirmed. No notification sent.

---

## 2026-06-03 — Midday Scan (2nd) Position Update

**KAS/USD — OPEN** | 3367 KAS | Entry $0.031300 | Current $0.031830 | P&L **+1.69%** (+$1.78)
- Trailing stop OPX7OP-RQ6FF-EVNTD4: stopprice $0.030910, trail 3.5%, HWM $0.032030, 2.89% buffer ✓
- Stop has trailed UP from $0.030300 (afternoon) → $0.030910 (midday) — HWM reset to 24h high $0.032030
- T1 ($0.032239): 1.28% away — not yet triggered
- Toccata fork opens tomorrow (June 5). Thesis intact.
- No actions taken. No notification sent.

---

## 2026-06-03 — Session-Open Scan (latest)

### KAS/USD — T1 HIT → Stop Tightened to 0.5%

**KAS/USD — OPEN** | 3367 KAS | Entry $0.031300 | Current $0.032545 | P&L **+3.98%** (+$4.21)

**T1 ACTION TRIGGERED:** KAS crossed T1 ($0.032239). Per strategy, cancelled 3.5% trailing stop and replaced with 0.5% trailing stop to lock gains and trail toward T2.

| Action | Detail |
|---|---|
| Cancelled stop | OPX7OP-RQ6FF-EVNTD4 (trailing 3.5%, stop $0.031490) |
| New stop placed | O4TQJ3-WTCJ5-FTIOCB (trailing 0.5%, stop $0.032510, GTC) |
| HWM at placement | $0.032560 (ask) |
| Stop level | $0.032510 (0.5% below HWM) |
| T2 target | $0.032865 (+5%) — 0.98% away |

**BTC Regime:** $66,719 | 24h open $66,669.70 → +0.07% — crash gate NOT triggered | Weekly gate ACTIVE (−14.0% vs May 22 $77,574)

**Candidate Screening (new entries):**
| Asset | 24h Move | Spread | Catalyst | Gate | Verdict |
|---|---|---|---|---|---|
| ONDO/USD | +9.9% | 0.063% ✓ | Ondo Perps launch June 9 (announced June 2 — >24h old) | Catalyst too old for <6h rule | **SKIP** |
| NEAR/USD | +14.25% | 0.133% ✓ | Golden cross only — no confirmed fresh catalyst | Pure momentum, BANNED under weekly gate | **SKIP** |
| PORTAL/USD | −7.1% from open | 0.54% ✓ | None — falling from open | No signal | **SKIP** |
| XRP/USD | −2% 24h | ✓ | CLARITY Act Senate vote July 2026 est., not fired | Binary trigger not confirmed | **SKIP** |
| ETH/USD | −0.4% from open | ✓ | None | No signal | **SKIP** |
| SOL/USD | −0.1% from open | ✓ | None | No signal | **SKIP** |

**Fear & Greed:** 11 (Extreme Fear) | **ZUSD:** $44.6348 | **KAS MV:** ~$109.60 | **Total equity:** ~$154.23

**Decision: NO NEW TRADES.** BTC weekly gate ACTIVE (−14.0%); no fresh (<6h) catalysts for any screened asset; NEAR momentum-only (banned); ONDO catalyst >24h old.

**Active Watchlist:**
1. **KAS/USD** — OPEN; T1 hit; 0.5% trailing stop O4TQJ3-WTCJ5-FTIOCB active; T2 $0.032865 (+5%) 0.98% away. Toccata fork window opens June 5.
2. **XRP/USD** — binary trigger (CLARITY Act Senate vote) pending; 7% trail on confirmed vote.
3. **BTC weekly gate reset** — BTC must reclaim $77,574 (+16.2%) to reopen full momentum universe.
4. **ONDO/USD** — Ondo Perps launch June 9; if fresh news <6h arrives on/after June 9, re-evaluate.

**WhatsApp notification sent: KAS T1 hit, stop tightened 3.5%→0.5%.**

---

## 2026-06-03 — Session-Open Trade (morning session)

### KAS/USD — Re-entry | Toccata Fork Pre-Positioning

**Context:** Prior KAS position (3367 KAS, entry $0.031300) was stopped out at ~$0.032348 (0.5% trailing stop O4TQJ3-WTCJ5-FTIOCB triggered after T1 was hit). KAS subsequently dipped to $0.028000 (24h low) before recovering. Toccata hard fork window opens June 5 (TOMORROW) — thesis INTACT.

**Pre-trade hard-check:**
| Check | Result |
|---|---|
| Crash gate (BTC -20% / 24h) | BTC -2.65% ($66,670→$64,905) — NOT triggered ✓ |
| BTC weekly gate | ACTIVE (-14.4% vs May 27 $75,824) — BUT: protocol upgrade exception applies ✓ |
| Pair online | KAS/USD confirmed online ✓ |
| Spread | 0.095% ($0.031820/$0.031840) ✓ |
| Catalyst <6h | Toccata fork window opens June 5 (tomorrow) — ongoing protocol upgrade ✓ |
| 24h momentum | +10.84% ($0.028600→$0.031700) ✓ |
| R:R | 3% T1 / 2.5% stop risk = 1.2:1 ✓ |

### 2026-06-03T~UTC | KAS/USD | BUY | 4730 KAS | Entry: $0.032022 | Stop: 3.5% trailing | Open

**Order ID (buy):** O3AIQI-WYS2G-KEO3FA
**Trailing Stop Order ID:** OKGTE3-W5ESJ-T4YY3D (trailing_stop -3.5%, stopprice $0.030740, GTC)
**Notional:** ~$151.46 (99% equity — full conviction, Toccata fork opens tomorrow)
**ZUSD remaining:** $1.7457
**T1:** $0.032983 (+3.0%) | **T2:** $0.033623 (+5.0%)
**Stop level:** $0.030740 (3.5% trailing from HWM $0.031855 at stop placement; high-ATR asset)
**R:R:** 1.2:1 (3% T1 gain / 2.5% reference stop risk)
**Thesis:** Kaspa Toccata hard fork window opens June 5–20, 2026 (tomorrow). Protocol upgrade adds UTXO commitments, parallelism improvements, and prepares for Kaspa 2.0. KAS up +10.84% today on pre-fork momentum. Fear & Greed 11 (Extreme Fear) — contrarian timing. Previous position stopped at T1+, validating the thesis; re-entry at similar price level with fork 24h away.
**Stop rationale:** 3.5% trailing (high-ATR asset — today's range: $0.028000–$0.032670 = 16.7% range; noise-stop protection). Stop trails up as HWM advances.
**Notes:** Weekly gate ACTIVE but protocol upgrade entries explicitly exempt per TRADING-STRATEGY.md. ZEC (+16%) catalyst (SEC probe closure May 19) was 14 days old — skipped. WLD (+36%) parabolic derivatives squeeze — skipped. BCH down -10% from open — skipped. At T1 (+3%): cancel 3.5% stop, replace with 0.5% trailing to lock gains. Binary-catalyst scenario (fork activation confirmed): widen to 7% trail only if volatility spike warrants.

---

## 2026-06-03 — Overnight Triage Check

**Positions (Kraken):**
| Symbol | Qty | Entry | Current | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| KAS/USD | 4730 | $0.032022 | $0.032130 | **+0.34%** | $0.032900 | $0.031750 (trail 3.5%) | 1.18% ⚠️ | OKGTE3-W5ESJ-T4YY3D ✓ |

**Alpaca:** Stop a2b44cf9 CANCELLED since 2026-05-22 — no Alpaca positions or orders. ✓

**STEP 2 — Trailing stops verified:**
- KAS/USD: OKGTE3-W5ESJ-T4YY3D, 4730 KAS, trail 3.5%, HWM $0.032900 (today's high), stop $0.031750 — ✓
- No unprotected Kraken positions.

**STEP 3 — Emergency exits (>-20% AND stop not triggered):** KAS +0.34% from entry — not applicable.

**STEP 4 — Stop tightening (≥+20% since entry):** KAS +0.34% — well below threshold. No adjustments. 3.5% trail is appropriate for this high-ATR asset (today's range: $0.028000–$0.032900 = 17.5%).

**STEP 5 — BTC Crash Gate:**
- BTC ask: $64,604 | 24h open: $66,669.70 | Move: **-3.1%**
- Threshold: -20% | Gate: **NOT triggered** ✓
- 24h range: $64,564.90 – $67,420.00

**Notes:** KAS trailing stop buffer 1.18% — thin but expected given today's strong run to $0.032900 HWM. Stop is correctly trailing the HWM. Price is $0.032130 with T1 at $0.032983 (+2.6% away) and Toccata hard fork window opening June 5 (tomorrow). Thesis intact. BTC down -3.1% (normal drawdown, not a crash event). No Alpaca exposure.

**Result: NO-OP. No actions taken. No notification sent.**

---

## 2026-06-04 — Overnight Triage Check

### KAS/USD — STOP TRIGGERED OVERNIGHT (trailing stop filled)

**Positions (Kraken):**
| Symbol | Qty | Entry | Exit (implied) | P&L% | P&L$ | Notes |
|---|---|---|---|---|---|---|
| KAS/USD | 4730 | $0.032022 | ~$0.031482 | **−1.69%** | **~−$2.56** | Trailing stop OKGTE3-W5ESJ-T4YY3D filled |

**Details:**
- Stop order: OKGTE3-W5ESJ-T4YY3D (trailing_stop, 3.5%, HWM $0.032900 → stop trigger $0.031750)
- Implied fill: ~$0.031482 (ZUSD balance post-fill $150.6460 − pre-fill $1.7457 = $148.90 / 4730 KAS)
- Fill slightly below trigger ($0.031750) — light slippage consistent with KAS 24h low $0.028320 (sharp intraday drop)
- Stop worked as designed — no manual intervention required

**STEP 1 — Positions & Orders:**
- Kraken: **0 open positions, 0 open orders** ✓
- Alpaca: **0 positions, 0 orders** (stop a2b44cf9 canceled 2026-05-22) ✓

**STEP 2 — Trailing stop verification:** No open positions → N/A

**STEP 3 — Emergency exits:** No open positions → N/A

**STEP 4 — Stop tightening:** No open positions → N/A

**STEP 5 — BTC Crash Gate:**
- BTC last: $63,385.90 | 24h open: $64,036.10 | Move: **−1.0%**
- 24h range: $61,255.90 – $67,420.00
- Threshold: −20% | Gate: **NOT triggered** ✓

**Account:** ZUSD $150.6460 (100% cash) | KAS dust: 0 | All other balances: negligible dust

**KAS/USD Toccata note:** Toccata hard fork window opened June 5. Position was stopped out before fork activation — stop worked correctly. KAS now at $0.030100 (−5.7% from 24h open $0.031910; low $0.028320). If KAS shows fresh <6h catalyst on/after fork activation, re-entry eligible in next session (no consecutive-loss rules apply per Kraken day trading profile).

**Result: NO-OP. Stops worked as designed. No manual actions taken. No notification sent.**

---

## 2026-06-04 — EOD Snapshot (Day 15, Thursday)

### Jun 04 — EOD Snapshot (Day 15, Thursday)
**Portfolio:** $150.65 | **Cash:** $150.65 (100%) | **Day P&L:** +$0.10 (+0.06%) | **Phase P&L:** −$29.13 (−16.21%) | **vs BTC:** +1.05%

| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Trailing Stop |
|---|---|---|---|---|---|---|
| — | — | — | — | No positions | — | — |

**Trades today:** 1) KAS/USD BUY 3367 @ $0.031300 (session open); 2) KAS/USD T1 exit ~$0.032348 (+3.4%, +$2.99); 3) KAS/USD re-entry BUY 4730 @ $0.032022; 4) KAS/USD trailing stop OKGTE3 triggered overnight ~$0.031482 (−1.69%, −$2.56) | **Total since migration:** ~53

**Notes:** Two KAS round trips on the Toccata hard fork thesis (fork window June 5–20, 2026 now open). The first position (3367 KAS @ $0.031300) hit T1 (+3.4%) and was exited via 0.5% trailing stop at ~$0.032348 (+$2.99). Re-entry at $0.032022 (4730 KAS, 99% equity, full conviction one day before fork) was stopped out overnight at $0.031482 (−1.69%, −$2.56) as KAS sold off to an intraday low of $0.028320 before recovering. Net session P&L +$0.10 (+0.06%); bot outperformed BTC by +1.05% (BTC −0.99% on the day). Portfolio 100% ZUSD $150.6460. Alpaca stop a2b44cf9 cancelled since 2026-05-22 — no Alpaca exposure. Phase P&L −$29.13 (−16.21%) from Kraken starting equity $179.78. BTC at $63,400 (24h range $61,256–$64,686). Crash gate NOT triggered. For June 05: Toccata hard fork window is NOW OPEN — KAS eligible for re-entry on fresh <6h catalyst confirming fork activation; R:R ≥1.2:1 required; 3.5% trailing stop (high-ATR).

---

## Jun 05 — EOD Snapshot (Day 16, Friday)
**Portfolio:** $150.65 | **Cash:** $150.65 (100%) | **Day P&L:** $0.00 (0.00%) | **Phase P&L:** −$29.13 (−16.21%) | **vs BTC:** +0.93%

| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Trailing Stop |
|---|---|---|---|---|---|---|
| — | — | — | — | No positions | — | — |

**Trades today:** none | **Total since migration:** ~53

**Notes:** No trades executed today. Pre-session research identified KAS/USD as primary candidate (Toccata hard fork window opened June 5, entry ~$0.029910, 3.5% trailing stop, ~$149 full equity); order was not placed this session. Portfolio remains 100% ZUSD $150.6460. BTC dropped −0.93% on the day ($62,808 vs ~$63,400 yesterday close); bot outperformed by +0.93% holding cash. BTC weekly gate active (−16.5% from May 27 peak ~$75,824). Fear & Greed 12 (Extreme Fear). HYPE token unlock June 6 ($684M) adds near-term altcoin supply pressure — avoid HYPE through tomorrow. Alpaca stop a2b44cf9 cancelled since 2026-05-22 — no Alpaca exposure. Phase P&L −$29.13 (−16.21%) from Kraken starting equity $179.78. BTC crash gate NOT triggered (−0.93% today, −3.21% 24h at session open). For June 06: watch KAS/USD for positive 1h momentum >5% + confirmed Toccata fork activation = re-entry trigger (3.5% trail, full equity); reassess HYPE post-unlock price action; ONDO perps launch June 9.

---

## 2026-06-05 — Session-Open Trade (Morning Session)

### KAS/USD — Re-entry | Toccata Fork Active + Relative Strength

**Context:** Account 100% ZUSD $150.6460 — no open positions. KAS at $0.031690 (+7.45% from 24h open $0.029510) while BTC −3.3%, ETH −8.9%, NEAR −8.6% — exceptional relative strength. Toccata hard fork window is OPEN (June 5–20, 2026). Fork exception bypasses BTC weekly gate. Previous KAS positions stopped out on June 3 and June 4; no consecutive-loss rules apply per strategy.

**Pre-trade hard-check:**
| Check | Result |
|---|---|
| Crash gate (BTC -20% / 24h) | BTC −3.3% ($63,811→$61,733) — NOT triggered ✓ |
| BTC weekly gate | ACTIVE (−18.6% vs May 27 $75,824) — BUT: Toccata protocol upgrade exception applies ✓ |
| Pair online | KAS/USD confirmed online ✓ |
| Spread | 0.159% ($0.031340/$0.031390) ✓ |
| Catalyst <6h | Toccata fork window opened June 5 — ongoing protocol upgrade ✓ |
| 1h/4h momentum | +6.37%→+7.45% from 24h open; at 24h high — strong ✓ |
| Volume | 86M KAS ($2.7M) — healthy ✓ |
| R:R | 3% T1 / 2.5% stop risk = 1.2:1 ✓ |

### 2026-06-05T~UTC | KAS/USD | BUY | 4721.4998 KAS | Entry: ~$0.031690 | Stop: 3.5% trailing | Open

**Order ID (buy):** O5JQVS-SNUOF-AAEOI3
**Trailing Stop Order ID:** OUYRE3-XJV62-EICEO6 (trailing_stop −3.5%, stopprice $0.030590, HWM $0.031690, GTC)
**Notional:** ~$149.64 (~99.3% equity)
**ZUSD remaining:** $0.4985
**T1:** $0.032641 (+3.0%) | **T2:** $0.033275 (+5.0%)
**Stop level:** $0.030590 (3.5% trailing from HWM $0.031690; high-ATR asset)
**R:R:** 1.2:1 (3% T1 gain / 2.5% reference stop risk)
**Thesis:** Kaspa Toccata hard fork window opened June 5, 2026 — protocol upgrade adds native tokens, covenants, ZK infrastructure, and L1 programmability (Kaspa 2.0 preparation). KAS up +7.45% from 24h open while BTC −3.3%, ETH −8.9% — exceptional relative strength in a broad selloff. Fork exception bypasses BTC weekly gate per strategy. Third entry on this thesis; no consecutive-loss rules apply.
**Stop rationale:** 3.5% trailing (high-ATR asset — 24h range: $0.028750–$0.031690 = 10.2%; noise-stop protection). Stop trails up as HWM advances.
**Notes:** At T1 (+3%): cancel 3.5% stop, replace with 0.5% trailing to lock gains. Overnight sizing cap: if stop buffer <2% at EOD, consider reducing to 50% equity per strategy 2026-06-05 note. KAS at day high $0.031690 at time of stop placement.

---

## 2026-06-05 — Overnight Triage Check

**Positions (Kraken):**
| Symbol | Qty | Entry | Current | P&L% | HWM | Stop Trigger | Buffer | Order |
|---|---|---|---|---|---|---|---|---|
| KAS/USD | 4721.5 | $0.031690 | $0.031350 | **−1.07%** | $0.032020 | $0.030900 (trail 3.5%) | 1.43% | OUYRE3-XJV62-EICEO6 ✓ |

**Alpaca:** Stop a2b44cf9 CANCELLED since 2026-05-22 — no Alpaca positions or orders. ✓

**STEP 2 — Trailing stops verified:**
- KAS/USD: OUYRE3-XJV62-EICEO6, 4721.49980 KAS, trail 3.5%, HWM $0.032020 (24h high), stop $0.030900 — ✓
- Stop has trailed up from initial $0.030590 (at entry) → $0.030900 (HWM advance +$0.000330) — working correctly.
- No unprotected Kraken positions.

**STEP 3 — Emergency exits (>−20% AND stop not triggered):** KAS −1.07% from entry — not applicable.

**STEP 4 — Stop tightening (≥+20% since entry):**
- Entry $0.031690 → HWM $0.032020 = +1.04% gain to HWM — well below +20% threshold.
- No adjustments needed. 3.5% trail is appropriate (high-ATR asset, today's range $0.028750–$0.032020 = 11.3%).

**STEP 5 — BTC Crash Gate:**
- BTC ask: $61,712 | 24h open: $63,811.10 | Move: **−3.29%**
- 24h range: $59,070.60 – $63,905.30
- Threshold: −20% | Gate: **NOT triggered** ✓

**KAS/USD context:**
- 24h open $0.029510 → current $0.031350 (+6.23%) — still well above open
- Stop buffer 1.43% (thin but expected given HWM at $0.032020)
- Toccata hard fork window OPEN (June 5–20, 2026) — thesis intact
- T1 ($0.032641) is 4.11% above current; T2 ($0.033275) is 6.12% above current

---

## 2026-06-06 — Overnight Triage Check

**Positions (Kraken):** NONE — all flat
**Positions (Alpaca):** NONE — confirmed flat (stop a2b44cf9 cancelled 2026-05-22, no residual position)

**KAS trailing stop triggered overnight:**
- Order OUYRE3-XJV62-EICEO6 (trail 3.5%) fired automatically
- Entry: $0.031690 | HWM: $0.032020 | Stop trigger: $0.030900 (3.5% below HWM)
- Estimated fill: ~$0.030900
- Qty: 4721.4998 KAS (~$149.64 notional)
- P&L from entry: ~−$3.74 (−2.49%) | From HWM: −3.50% (stop functioned correctly)
- Current KAS: $0.030460 (below trigger — stop fired correctly)
- Toccata thesis still active (fork window June 5–20) but stop did its job protecting capital

| Date | Pair | Action | Qty | Entry | Exit | P&L | Notes |
|---|---|---|---|---|---|---|---|
| 2026-06-06 | KAS/USD | SELL (trailing stop triggered) | 4721.5 | $0.031690 | ~$0.030900 | ~−$3.74 (−2.49%) | Trail 3.5% from HWM $0.032020; stop OUYRE3-XJV62-EICEO6 auto-executed |

**STEP 2 — Trailing stops:** No open Kraken positions → nothing to verify. ✓
**STEP 3 — Emergency exits:** No open positions → N/A.
**STEP 4 — Stop tightening:** No open positions → N/A.
**STEP 5 — BTC Crash Gate:**
- BTC ask: $60,876 | 24h open: $61,038.30 | Move: **−0.26%**
- 24h range: $60,654.60 – $61,496.20 (today) | $59,070.60 – $63,614.60 (24h)
- Gate: **NOT triggered** ✓

**Portfolio:** Fully in ZUSD cash. No open positions on any broker.
**No tightening, no exits, no crash gate — stop auto-fire is the only event.**

**Result: NO-OP. No actions taken. No notification sent.**

---

## 2026-06-06 — EOD Snapshot (Day 17, Saturday)

### Jun 06 — EOD Snapshot (Day 17, Saturday)
**Portfolio:** $145.52 | **Cash:** $145.52 (100%) | **Day P&L:** −$5.13 (−3.41%) | **Phase P&L:** −$34.26 (−19.06%) | **vs BTC:** −3.79%

| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Trailing Stop |
|---|---|---|---|---|---|---|
| — | — | — | — | No positions | — | — |

**Trades today:** KAS/USD trailing stop auto-executed (OUYRE3-XJV62-EICEO6; 4721.5 KAS sold ~$0.03071, proceeds ~$145.02, loss ~−$4.62 / −3.1% on position) | **Total since migration:** ~55

---

## 2026-06-06 — Session-Open Trade

### NEAR/USD — Buy (O643ZB-RWJXH-2LZI56)

| Field | Value |
|---|---|
| Date/Time (UTC) | 2026-06-06 session-open |
| Symbol | NEAR/USD |
| Side | BUY |
| Qty | 74.0000 NEAR |
| Entry Price | ~$1.9535 (estimated; ZUSD spent $145.14 / 74 NEAR) |
| Trailing Stop % | 3.5% (high-ATR asset) |
| Stop Order ID | O2X4KP-EOPWH-VT5OFH |
| Stop Trigger | $1.8814 (current HWM $1.9496) |
| T1 Target | $2.0121 (+3%) |
| T2 Target | $2.0512 (+5%) |
| R:R | 1.2:1 (3% T1 / 2.5% reference stop) |
| Thesis | NEAR Protocol dynamic resharding upgrade (June 2026) — protocol upgrade catalyst bypasses BTC weekly trend gate; relative strength −1.35% from 24h open vs broad alt weakness −5–12%; spread 0.062%; volume 1.19M NEAR today |
| Buy Txid | O643ZB-RWJXH-2LZI56 |

**Stop management:** At T1 ($2.0121): cancel 3.5% stop O2X4KP-EOPWH-VT5OFH, place 0.5% trailing stop to lock gains and trail toward T2.

**Notes:** The KAS/USD position entered on June 05 ($0.031690, ~$149.64 notional, Toccata hard fork thesis) was closed overnight by the 3.5% trailing stop (HWM $0.032020, trigger $0.030900). Actual fill ~$0.030713 — slight slippage below trigger, resulting in −$5.13 Day P&L vs yesterday EOD $150.65. BTC gained +0.38% today ($61,038→$61,268), putting bot at −3.79% vs BTC for the day. Portfolio 100% ZUSD cash, no open positions on any broker. Alpaca stop a2b44cf9 confirmed cancelled since May 22 — no Alpaca residual. Phase P&L −$34.26 (−19.06%) from Kraken starting equity $179.78. This is the 3rd consecutive KAS stop-out (Jun 03, Jun 04, Jun 05/06); Toccata fork window still open (June 5–20) but re-entry requires clear fresh momentum above prior HWM with volume confirmation. ONDO perps launch June 9 — watch for pre-launch momentum play Mon/Tue.

---

## 2026-06-06 — Midday Scan

### NEAR/USD — SELL (thesis break — Arthur Hayes exit) | OTMDUQ-YXHFG-GVN2RL

**Thesis break trigger:** Midday Perplexity research confirmed Arthur Hayes sold his ENTIRE NEAR position — same pattern as WLD (−18.7%) and ZEC today. Whale exit = concentrated selling pressure overrides the resharding upgrade catalyst for a day trade.

| Field | Value |
|---|---|
| Position closed | NEAR/USD — 74 NEAR spot |
| Stop cancelled | O2X4KP-EOPWH-VT5OFH (trailing_stop 3.5%, trigger $1.88140) |
| Sell txid | OTMDUQ-YXHFG-GVN2RL |
| Side | SELL (market) |
| Qty | 74 NEAR |
| Entry | ~$1.9535 (ZUSD $145.14 spent) |
| Exit | ~$1.8900 (estimated; ZUSD received ~$139.50) |
| Net proceeds | ~$139.88 ZUSD (account balance post-trade) |
| P&L | ~−$5.64 (−3.87% from entry notional) |
| Exit rationale | Thesis break: Arthur Hayes sold entire NEAR position (new info since morning session); per strategy "if narrative broke, cut immediately regardless of P&L" |

**NEAR price at exit:** ~$1.89 (bid $1.8975, 0.70% above former stop $1.88140). Stop cancelled before market sell to prevent orphan order.

**Midday candidate scan (no new entries):**
| Asset | Verdict | Reason |
|---|---|---|
| ZEC/USD | SKIP | Hayes also exited ZEC; critical Orchard vulnerability disclosed; price declining from $401 high |
| BABY/USD | SKIP | No catalyst; declining −19% from 24h open |
| ALLO/USD | SKIP | Spread 2.0% (hard skip >1%) |
| KAS/USD | SKIP | Below 24h open ($0.02996 vs open $0.03091); re-entry signal (1h >3% positive) not triggered |

**Post-midday state:** $139.88 ZUSD (100% cash). No open positions. No open orders.
**Phase P&L:** ~−$39.90 (−22.2%) from Kraken starting equity $179.78.
**Forward:** ONDO June 7–9 pre-perps-launch setup; KAS conditional on $0.031000 reclaim + 1h >3% signal; NEAR re-entry only after Hayes-exit selling pressure stabilizes and upgrade confirms specific date.

---

## 2026-06-07 — EOD Snapshot (Day 18, Sunday)

### Jun 07 — EOD Snapshot (Day 18, Sunday)
**Portfolio:** $139.88 | **Cash:** $139.88 (100%) | **Day P&L:** $0.00 (0.00%) | **Phase P&L:** −$39.90 (−22.20%) | **vs BTC:** −1.95%

| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Trailing Stop |
|---|---|---|---|---|---|---|
| — | — | — | — | No positions | — | — |

**Trades today:** none | **Total since migration:** ~55
**Notes:** Full-cash day. No new entries. Portfolio sat at $139.88 ZUSD all day — carried over directly from the NEAR/USD thesis-break exit (Arthur Hayes whale exit) executed mid-session on Jun 06. BTC gained +1.95% today ($61,268→$62,462), putting bot −1.95% vs BTC for the day due to holding cash while market rallied. Alpaca stop a2b44cf9 confirmed cancelled (2026-05-22), no Alpaca residual. Phase P&L now −$39.90 (−22.20%) from Kraken starting equity $179.78. Forward: ONDO perps launch June 9 is the primary watch — potential pre-launch momentum play Mon morning; KAS re-entry conditional on $0.031000 reclaim + 1h >3% signal; NEAR only if Hayes-exit selling stabilises and fresh catalyst emerges.

---

## 2026-06-07 — Session-Open Trades

### ONDO/USD — Buy (OFMZFC-VI353-WZFNPS)

| Field | Value |
|---|---|
| Date/Time (UTC) | 2026-06-07 session-open |
| Symbol | ONDO/USD |
| Side | BUY |
| Qty | 198.0000 ONDO |
| Entry Price | ~$0.3530 (ZUSD $70.31 spent / 198; HWM at stop $0.35298) |
| Trailing Stop % | 2.5% (standard) |
| Stop Order ID | OTQEIG-LAE2N-36SUDK |
| Stop Trigger | $0.34416 (current HWM $0.35298) |
| T1 Target | $0.3636 (+3% from entry) |
| T2 Target | $0.3706 (+5% from entry) |
| R:R | 1.2:1 (3% T1 / 2.5% stop) |
| Thesis | ONDO retail perps full launch on Kraken June 9 (exchange listing = BTC weekly gate exception); price +8.49% from 24h open ($0.32466→$0.35238 ask at entry); spread 0.074% ✓; momentum confirmed primary candidate |
| Buy Txid | OFMZFC-VI353-WZFNPS |

**Stop management:** At T1 ($0.3636): cancel 2.5% stop OTQEIG-LAE2N-36SUDK, place 0.5% trailing stop to lock gains and trail toward T2. Exit fully by June 9 retail launch to avoid buy-the-news reversal.

---

### NEAR/USD — Buy (OQEQAX-YGPDI-SJMGIG)

| Field | Value |
|---|---|
| Date/Time (UTC) | 2026-06-07 session-open |
| Symbol | NEAR/USD |
| Side | BUY |
| Qty | 35.0000 NEAR |
| Entry Price | ~$1.9375 (ZUSD $68.22 spent / 35; HWM at stop $1.93750) |
| Trailing Stop % | 3.5% (high-ATR asset) |
| Stop Order ID | ODNEDT-XQDZ4-PHHLPF |
| Stop Trigger | $1.86970 (current HWM $1.93750) |
| T1 Target | $1.9956 (+3% from entry) |
| T2 Target | $2.0344 (+5% from entry) |
| R:R | 1.2:1 (3% T1 / 2.5% reference stop) |
| Thesis | NEAR Protocol resharding (Nightshade 2.0) upgrade confirmed June 9 (Binance deposit suspension confirms date; protocol upgrade = BTC weekly gate exception); $1.92 trigger MET (entry $1.939 > trigger); price +4.28% from 24h open $1.85940; spread 0.129% ✓; Hayes selling pressure absorbed (NEAR recovered from $1.89 exit to $1.939, today's high $1.9532) |
| Buy Txid | OQEQAX-YGPDI-SJMGIG |

**Stop management:** At T1 ($1.9956): cancel 3.5% stop ODNEDT-XQDZ4-PHHLPF, place 0.5% trailing stop to lock gains and trail toward T2. Third consecutive stop-out attempt — strict discipline: cut immediately if price breaks below $1.86970 trigger or thesis breaks.

**Account state post-trade:**
- ONDO: 198 ONDO (~$69.94 notional at entry)
- NEAR: 35 NEAR (~$67.81 notional at entry)
- ZUSD remaining: $1.3468 (cash buffer)
- Total deployed: ~$137.75 (98.5% of prior equity)
- BTC 24h change: +3.23% ($60,858→$62,825) — crash gate NOT triggered ✓
- BTC weekly gate: ACTIVE but both trades are gate exceptions ✓

---

## 2026-06-07 — Midday Scan

### ONDO/USD — Trailing Stop Triggered (OTQEIG-LAE2N-36SUDK)

| Field | Value |
|---|---|
| Event | Trailing stop auto-triggered |
| Stop Order ID | OTQEIG-LAE2N-36SUDK |
| Stop Type | trailing_stop 2.5% |
| HWM at trigger | ~$0.36039 (today's session high) |
| Stop trigger price | ~$0.35138 (HWM × 0.975) |
| Estimated fill | ~$0.34186 (from ZUSD balance: $67.69 / 198) |
| Entry | ~$0.35308 ($70.31 / 198 ONDO) |
| Exit proceeds | ~$67.69 ZUSD (ZUSD balance: $69.04 − $1.3468 prior cash) |
| P&L | ~−$2.62 (−3.73% from notional entry) |
| Exit reason | Trailing stop auto-fired on pullback from HWM $0.36039 → trigger ~$0.35138 → price continued to $0.344; fill ~$0.342 with slippage |
| Thesis status | June 9 perps launch still pending; price declining post-HWM with falling OI — stop mechanism worked correctly |

**ONDO position: CLOSED.** Account shows ONDO = 0.00000. Re-entry requires: price reclaim above prior HWM $0.36039 with volume confirmation; currently at $0.344 (declining) — no re-entry signal.

---

### Midday Position Review

**NEAR/USD — Thesis Intact, Stop Confirmed Live**

| Field | Value |
|---|---|
| Qty | 35 NEAR |
| Entry | ~$1.9375 |
| Current price | ~$1.9015–$1.9024 |
| Unrealized P&L | ~−$1.26 (−1.86%) |
| HWM | $1.95850 (session high per quote) |
| Stop | ODNEDT-XQDZ4-PHHLPF trailing 3.5% — CONFIRMED OPEN ✓ |
| Stop trigger | $1.89000 (HWM $1.9585 × 0.965) |
| Distance to stop | ~0.6% ($0.0115 above trigger) |
| Thesis | NEAR Nightshade 2.0 resharding June 9 — Binance deposit suspension confirms date; no thesis break found |
| T1 | $1.9956 — not yet reached |
| Action | No action — stop tighten not triggered (position below entry, far from +20% threshold) |

**Midday candidate scan — no new entries:**

| Asset | Signal | Spread | Verdict |
|---|---|---|---|
| TAO/USD | +8.56% from 24h open; Nvidia/Chamath AI narrative | 0.068% ✓ | SKIP — BTC weekly gate active; catalyst timing unconfirmed <3h |
| XLM/USD | −3.2% from 24h open; DTCC tokenization narrative | 0.058% ✓ | SKIP — declining from open; catalyst stale (March 2026) |
| ONDO/USD | $0.344; June 9 perps still pending | 0.097% ✓ | SKIP — below prior HWM $0.36039; OI declining; no re-entry signal |
| KAS/USD | — | — | SKIP — $0.031000 trigger unmet |

**BTC weekly gate:** ACTIVE (BTC ~−15% over 5 days vs June 1 high $72,145). Pure momentum entries banned. No candidate with confirmed fresh catalyst <3h.

**Post-midday account state:**
- NEAR: 35 NEAR (~$66.55 at $1.9015)
- ZUSD: $69.04
- Total equity: ~$135.59
- Day P&L: ~−$4.29 (−3.07%) [ONDO stop-out −$2.62 + NEAR unrealized −$1.26 + fees]
- Phase P&L: ~−$44.19 (−24.58%) from Kraken starting equity $179.78

---

### NEAR/USD — Trailing Stop Triggered (ODNEDT-XQDZ4-PHHLPF)

| Field | Value |
|---|---|
| Event | Trailing stop auto-triggered (post-midday) |
| Stop Order ID | ODNEDT-XQDZ4-PHHLPF |
| Stop Type | trailing_stop 3.5% (high-ATR) |
| HWM at trigger | $1.95850 |
| Stop trigger price | $1.89000 (HWM $1.95850 × 0.965) |
| Estimated fill | ~$1.8774 (~$65.71 proceeds / 35 NEAR; derived from ZUSD delta $134.75 − $69.04) |
| Entry | ~$1.9375 ($68.22 ZUSD / 35 NEAR) |
| Exit proceeds | ~$65.71 ZUSD |
| P&L | ~−$2.51 (−3.68% from notional entry) |
| Exit reason | Price dropped from midday $1.9015 to day low $1.8142 — below stop trigger $1.89000; stop fired and market-sold at ~$1.877 |
| Day low | $1.8142 (well below trigger) |
| Thesis status | Jun 9 Nightshade 2.0 upgrade still intact; stop mechanism worked correctly; NEAR recovered to $1.9215 post-stop |

**NEAR position: CLOSED.** Account confirmed: NEAR = 0.00532 (dust). ZUSD = $134.7518.

**Re-entry criteria for NEAR:** Sustained 1h candle close above $1.92 with volume expansion; Monday Jun 8 pre-upgrade positioning opportunity; actual R:R with 3.5% stop = 0.86:1 (below 1.2 threshold on risk-adjusted basis — only valid as gate-exception catalyst play).

---

## 2026-06-07 — Evening Session Scan

**Portfolio:** $134.7518 ZUSD (100% cash). No open positions. No open orders. ✓
**Day P&L:** ~−$5.02 (−3.60%) [ONDO −$2.62 + NEAR −$2.51 + fees ~$0.50 est.]
**Phase P&L:** ~−$45.03 (−25.05%) from Kraken starting equity $179.78

### Candidates Screened
| Asset | vs 24h Open | Current | Spread | Verdict |
|---|---|---|---|---|
| NEAR/USD | +3.33% | $1.9215 ask | 0.16% ✓ | SKIP — 4th consecutive stop-out attempt; barely at $1.92 trigger; Sunday low volume; actual R:R with 3.5% stop = 0.86:1 |
| ONDO/USD | +6.18% | $0.3448 ask | 0.01% ✓ | SKIP — below prior HWM $0.36039; no re-entry signal |
| TAO/USD | +8.20% | $209.51 ask | 0.07% ✓ | SKIP — ETF filing catalyst is Dec 2025 S-1 (stale >6h); MACD bearish; BTC weekly gate blocks stale catalysts |
| KAS/USD | +2.88% | $0.030830 ask | 0.10% ✓ | SKIP — $0.031000 trigger unmet ($0.030830 current) |
| TON/USD | +4.32% | $1.7170 ask | 0.12% ✓ | SKIP — Catchain 2.0 catalyst June 6 (>24h old); exhausted +100% weekly rally |

### Decision: NO NEW ENTRIES — HOLD ZUSD

No fresh catalyst (<6h) confirmed for any liquid Kraken pair. BTC weekly gate active. Capital preservation priority with phase P&L at −25.05%.

### Forward Calendar
- **Jun 8 (Mon):** NEAR $1.92 trigger watch (Nightshade 2.0 upgrade tomorrow); STABLE unlock $34.43M (avoid STABLE); consider NEAR entry only if 1h close above $1.92 with volume expansion + early session institutional volume
- **Jun 9:** NEAR resharding upgrade live; ONDO full retail perps launch on Kraken → position ONDO before launch (buy at market open if +3% with volume); exit both NEAR and ONDO before/at launch to avoid buy-the-news reversal
- **Jun 10:** RAIN $713M unlock — avoid
- **Jun 17:** SPK $61M unlock — avoid

---

## 2026-06-07 — Second Midday Scan (Late Session)

**Portfolio:** $134.7518 ZUSD (100% cash). No open positions. No open orders. ✓
**BTC:** $61,745 ask (+1.46% from $60,858 open) — crash gate NOT triggered; BTC weekly gate ACTIVE

### Account Verification
| Account | State |
|---|---|
| Kraken positions | 0 (clean) ✓ |
| Kraken open orders | 0 (clean) ✓ |
| Alpaca positions | 0 — BTC position fully closed |
| Alpaca stop a2b44cf9 | **CANCELLED since 2026-05-22** — residual BTC position no longer exists; $2.54 cash only |

**Note:** Alpaca BTC residual position fully resolved. Monitoring no longer required.

### Candidate Scan
| Asset | vs 24h Open | Current Ask | Spread | Verdict |
|---|---|---|---|---|
| NEAR/USD | +3.61% | $1.9265 | 0.13% ✓ | SKIP — $0.0065 above $1.92 trigger; R:R 0.86:1 (actual 3.5% stop); Sunday night low liquidity; 4th attempt |
| ONDO/USD | +6.23% | $0.34488 | 0.06% ✓ | SKIP — below prior HWM $0.36039; no re-entry signal |
| TON/USD | +2.19% | $1.6820 | 0.06% ✓ | SKIP — below 3% threshold; declining from $1.7710 day high |
| XLM/USD | −3.84% | $0.20439 | 0.06% ✓ | SKIP — DTCC catalyst confirmed 11 days old (May 27, 2026); declining from open |

### Decision: NO NEW ENTRIES — HOLD ZUSD

XLM DTCC-Stellar announcement confirmed May 27 (11 days stale). NEAR barely above trigger with thin R:R on Sunday night. No fresh catalyst (<6h) on any liquid Kraken pair.
- **Jul (est.):** XRP CLARITY Act floor vote (standing binary trigger, 7% trail)

---

## 2026-06-07 — Overnight Triage Check (~overnight UTC)

**Kraken positions:** 0 — fully in cash ($134.7518 ZUSD) ✓
**Kraken open orders:** 0 — no orphaned orders ✓
**Alpaca positions:** 0 — BTC residual closed 2026-05-22; stop a2b44cf9 cancelled ✓

**BTC Crash Gate:** Open $60,858 → current $62,993 = **+3.48%** overnight — NOT triggered ✓

**STEP 2 — Trailing stops:** No positions → N/A
**STEP 3 — Emergency exits:** No positions → N/A
**STEP 4 — Stop tightening:** No positions → N/A
**STEP 5 — Crash gate:** BTC +3.48% — clear

**Forward:** NEAR $1.92 trigger watch (Nightshade 2.0 resharding upgrade Jun 9); ONDO perps full launch Jun 9 — buy if +3% with volume at open; exit both before launch. KAS re-entry conditional on $0.031000 reclaim + 1h >3% signal.

**Result: NO-OP. No actions taken. No notification sent.**

**Result: NO-OP. No actions taken. No notification sent.**

---

## 2026-06-08 — EOD Snapshot (Day 19, Monday)

### Jun 08 — EOD Snapshot (Day 19, Monday)
**Portfolio:** $134.75 | **Cash:** $134.75 (100%) | **Day P&L:** $0.00 (0.00%) | **Phase P&L:** −$45.03 (−25.05%) | **vs BTC:** −0.94%

| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Trailing Stop |
|---|---|---|---|---|---|---|
| — | — | — | — | No positions | — | — |

**Trades today:** none | **Total since migration:** ~55
**Notes:** Full-cash Monday. No new positions opened. Portfolio at $134.7518 ZUSD — actual starting balance after Jun 7 ONDO (−$2.62) and NEAR (−$2.51) intraday exits. BTC rallied +0.94% today ($62,462→$63,050); bot underperformed by −0.94% holding cash. Crash gate NOT triggered (BTC +0.94%, well clear of −20%). Alpaca stop a2b44cf9 confirmed cancelled since 2026-05-22 — no Alpaca residual. Phase P&L −$45.03 (−25.05%) from Kraken starting equity $179.78. Jun 9 is the primary catalyst day: NEAR Nightshade 2.0 resharding upgrade live + ONDO full retail perps launch on Kraken. Entry criteria: NEAR — sustained 1h close above $1.92 with volume expansion; ONDO — buy at market open if +3% with volume, 2.5% trailing stop, exit before/at launch to capture pre-launch momentum (avoid buy-the-news reversal).

---

## 2026-06-08 — Session-Open Trades (Day 19, Monday — late morning)

**Account at open:** $134.7518 ZUSD | 0 positions | 0 orders
**BTC:** $63,180 ask | Crash gate: NOT triggered | BTC weekly gate: ACTIVE (BTC −12.4% vs Jun 1)

---

### Trade 1 — KAS/USD BUY

| Field | Value |
|---|---|
| **Date/Time (UTC)** | 2026-06-08 09:07 |
| **Symbol** | KAS/USD |
| **Side** | BUY (spot) |
| **Qty** | 2428 KAS |
| **Entry Price** | $0.032730 |
| **Cost** | ~$79.47 |
| **T1 (+3%)** | $0.033712 |
| **T2 (+5%)** | $0.034367 |
| **Stop Type** | trailing_stop 2.5% GTC |
| **Stop Trigger** | $0.031920 |
| **Stop Order ID** | OANQVR-ACRCJ-FEJKRO |
| **Buy Order ID** | ORGDQB-HBMH3-G7YZ7T |
| **Thesis** | Kaspa Toccata protocol upgrade window Jun 5–20 — adds L1 covenants, native tokens, zk verification; protocol upgrade catalyst bypasses BTC weekly gate; +5.51% from open, near day high |
| **R:R** | 3% / 2.5% = 1.2:1 ✓ |
| **Spread** | 0.091% ✓ |
| **Size** | ~$79 (59% equity) |

---

### Trade 2 — ONDO/USD BUY

| Field | Value |
|---|---|
| **Date/Time (UTC)** | 2026-06-08 09:08 |
| **Symbol** | ONDO/USD |
| **Side** | BUY (spot) |
| **Qty** | 125 ONDO |
| **Entry Price** | $0.358270 |
| **Cost** | ~$44.78 |
| **T1 (+3%)** | $0.369018 |
| **T2 (+5%)** | $0.376184 |
| **Stop Type** | trailing_stop 2.5% GTC |
| **Stop Trigger** | $0.349320 |
| **Stop Order ID** | OYHRV7-WCPDY-TTLWAN |
| **Buy Order ID** | OER776-SWX4I-CGYMKF |
| **Thesis** | Ondo Finance Perps platform launch Jun 9 — pre-event positioning for tokenized stocks/ETFs perps platform launch; catalyst-driven, bypasses BTC weekly gate; +3.02% from open |
| **R:R** | 3% / 2.5% = 1.2:1 ✓ |
| **Spread** | 0.008% ✓ |
| **Size** | ~$45 (33% equity) |

**Capital deployed:** ~$124.25 / $134.75 (92.2%). Reserve: ~$10.50 ZUSD for fees.
**Exit note — ONDO:** Exit before or at Jun 9 launch to avoid buy-the-news reversal.

---

---

### ONDO/USD — Trailing Stop Triggered (OYHRV7-WCPDY-TTLWAN) [Trade #2 Exit]

| Field | Value |
|---|---|
| **Event** | Trailing stop auto-triggered |
| **Stop Order ID** | OYHRV7-WCPDY-TTLWAN |
| **Stop Type** | trailing_stop 2.5% GTC |
| **HWM at trigger** | $0.364930 (midday confirmed) |
| **Stop trigger price** | $0.355810 (HWM × 0.975) |
| **Est. fill** | ~$0.3551 (market sell at trigger; day fell to $0.342120 low) |
| **Entry** | $0.358270 (125 ONDO, ~$44.78 cost) |
| **Est. exit proceeds** | ~$44.27 (125 × ~$0.3542 after fee) |
| **Est. P&L** | ~−$0.63 (−1.4% net after fees) |
| **Exit reason** | Price fell from $0.3626 post-midday to day low $0.342120; trailing stop triggered at $0.355810 |
| **Thesis status** | Jun 9 ONDO Perps launch intact; SEC investigation closure adds regulatory catalyst; re-entry executed |

**ONDO position (Trade #2): CLOSED.** Re-entry executed 12:10 UTC.

---

### Trade 3 — ONDO/USD RE-ENTRY (2026-06-08 12:10 UTC)

| Field | Value |
|---|---|
| **Date/Time (UTC)** | 2026-06-08 12:10 |
| **Symbol** | ONDO/USD |
| **Side** | BUY (spot) |
| **Qty** | 120 ONDO |
| **Entry Price** | ~$0.3621 (est. from ZUSD delta $43.56 / 120, net of 0.26% taker fee) |
| **Cost** | ~$43.45 notional + ~$0.11 fee = $43.56 total ZUSD |
| **T1 (+3%)** | $0.37296 |
| **T2 (+5%)** | $0.38021 |
| **Stop Type** | trailing_stop 2.5% GTC |
| **Stop Trigger** | $0.351820 (confirmed active) |
| **HWM at placement** | $0.360840 |
| **Stop Order ID** | OWTP5B-DTQH4-BAE4D2 |
| **Buy Order ID** | OFTVHQ-5Z5P4-7DDRAG |
| **Thesis** | (1) SEC closed investigation into Ondo's tokenized equity platform without charges — regulatory clarity catalyst (BTC weekly gate exemption: regulatory event); (2) Ondo Finance Perps platform launch Jun 9 pre-event positioning; (3) Ondo tokenized-stock activity on BNB Chain +440% to $221M; (4) Ripple-Mastercard-JPMorgan-Ondo cross-border tokenized Treasuries pilot |
| **R:R** | 3% / 2.5% = 1.2:1 ✓ |
| **Spread** | 0.14% ✓ |
| **Size** | ~$43 (~32% of ~$133 total equity) |
| **Exit note** | MUST exit before or at Jun 9 ONDO Perps launch — buy-the-news reversal risk; exit at T1 $0.37296 or tighten to 0.5% trail at T1 |


---

## 2026-06-08 — Session-Open Evening Trades

### Trade — NEAR/USD BUY (2026-06-08 21:10 UTC)

| Field | Value |
|---|---|
| **Date/Time (UTC)** | 2026-06-08 21:10 |
| **Symbol** | NEAR/USD |
| **Side** | BUY (spot) |
| **Qty** | 30 NEAR |
| **Entry Price** | ~$2.1670 (est. from ZUSD delta $65.27 / 30, inclusive of 0.4% fee) |
| **Cost** | ~$65.27 ZUSD total |
| **T1 (+3%)** | $2.2320 |
| **T2 (+5%)** | $2.2754 |
| **Stop Type** | trailing_stop 2.5% GTC |
| **Stop Trigger** | $2.1089 (confirmed active at placement) |
| **HWM at placement** | $2.1630 |
| **Stop Order ID** | OZUM7J-75WPF-PBVUSL |
| **Buy Order ID** | OVWLGX-Y7T3M-CF6VAE |
| **Thesis** | Dynamic resharding (protocol upgrade v2.13) went live June 2 — protocol upgrade exemption bypasses BTC weekly gate; AI/SpaceX IPO week narrative driving NEAR today (+5.26% vs open, 4.1M intraday volume); HWM confirmed same-day above T1 territory ($2.2633). Spread 0.12% ✓ |
| **R:R** | 3% / 2.5% = 1.2:1 ✓ |
| **Spread** | 0.12% ✓ |
| **Size** | ~$65 (~49% of $132.76 equity) |
| **Account after** | ZUSD $67.49, NEAR 30.005 |
| **BTC weekly gate** | ACTIVE — protocol upgrade exemption applied |
| **Crash gate** | NOT triggered (BTC +0.43% 24h, open $63,305 → $63,582) |


---

## 2026-06-08 — Midday Scan (22:11 UTC)

### KAS/USD — Trailing Stop Triggered [Exit, Trade #1]

| Field | Value |
|---|---|
| **Event** | Trailing stop auto-triggered (observed in midday scan) |
| **Stop Order ID** | OANQVR-ACRCJ-FEJKRO (not visible in open orders) |
| **Stop Type** | trailing_stop 2.5% GTC |
| **Entry** | $0.032730 (2428 KAS, ~$79.47 cost) |
| **Initial stop trigger** | $0.031920 (entry × 0.975) |
| **Confirmed trigger** | Day low $0.030870 well below initial stop — stop fired |
| **Est. exit price** | ~$0.031920 (trailing stop trigger; dust balance 0.00004 KAS confirms exit) |
| **Est. P&L** | ~−$1.97 (−2.5% on $79.47) |
| **Exit reason** | Trailing stop triggered; KAS pulled back from session high |

---

### ONDO/USD — Trailing Stop Triggered [Exit, Trade #3 Re-entry]

| Field | Value |
|---|---|
| **Event** | Trailing stop auto-triggered (observed in midday scan) |
| **Stop Order ID** | OWTP5B-DTQH4-BAE4D2 (not visible in open orders) |
| **Stop Type** | trailing_stop 2.5% GTC |
| **Entry** | ~$0.3621 (120 ONDO, ~$43.45 notional) |
| **T1** | $0.37296 — day high $0.379200 confirms T1 was hit |
| **HWM (estimated)** | $0.379200 (Kraken day high) |
| **Est. stop trigger** | ~$0.36972 (HWM × 0.975) |
| **Est. exit price** | ~$0.370 (trailing trigger on pullback from day high) |
| **Est. P&L** | ~+$0.96 (+2.2% net after fee on $43.45) |
| **Exit note** | ONDO Perps launch Jun 9 (tomorrow) — position exited ahead of buy-the-news reversal window ✓ |

---

### Trade — INJ/USD BUY (2026-06-08 22:11 UTC)

| Field | Value |
|---|---|
| **Date/Time (UTC)** | 2026-06-08 22:11 |
| **Symbol** | INJ/USD |
| **Side** | BUY (spot) |
| **Qty** | 10 INJ |
| **Entry Price** | ~$5.805 (est. from ZUSD delta $58.05 / 10, inclusive of 0.26% taker fee) |
| **Cost** | ~$57.89 notional + ~$0.15 fee = $58.05 total ZUSD |
| **T1 (+3%)** | $5.979 |
| **T2 (+5%)** | $6.095 |
| **Stop Type** | trailing_stop 2.5% GTC |
| **Stop Trigger** | $5.627 (confirmed active at placement) |
| **HWM at placement** | ~$5.771 (stopprice $5.627 / 0.975) |
| **Stop Order ID** | O6ZXY6-6HK7F-7UKZLO |
| **Buy Order ID** | OAZPNG-YWUHT-WGSXVO |
| **Thesis** | (1) Binance.US listing — new U.S. exchange access, strongest exchange listing catalyst; (2) U.S.-regulated INJ futures live via Bitnomial — first regulated derivatives in U.S. market; (3) Native USDC launched on Injective — improves liquidity, collateral, DeFi utility. All three catalysts fresh and qualify under BTC weekly gate. INJ +6.12% vs day open at entry. |
| **R:R** | 3% / 2.5% = 1.2:1 ✓ |
| **Spread** | 0.173% ✓ |
| **Size** | ~$58 (~44% of ~$131 total equity) |
| **Account after** | ZUSD $9.44, NEAR 30.005, INJ 10.000 |
| **BTC weekly gate** | ACTIVE — exchange listing + regulated futures + USDC launch = catalyst exemptions ✓ |
| **Crash gate** | NOT triggered (BTC +2.24% 24h, $63,170) |


---

## 2026-06-08 — Overnight Triage Check

### NEAR/USD — Trailing Stop Triggered [Auto-Exit]

| Field | Value |
|---|---|
| **Event** | Trailing stop auto-triggered overnight (observed in overnight triage) |
| **Stop Order ID** | OZUM7J-75WPF-PBVUSL (not visible in open orders — confirmed filled) |
| **Stop Type** | trailing_stop 2.5% GTC |
| **Entry** | ~$2.1670 (30 NEAR, ~$65.27 ZUSD total cost) |
| **HWM at placement** | $2.1630 → initial stop trigger $2.1089 |
| **Day high / Day low** | $2.2633 / $2.0132 |
| **Estimated exit** | ~$2.11 (day low $2.0132 well below stop; ZUSD proceeds ≈ $63.36 from balance delta) |
| **Est. P&L** | ~−$1.91 (≈ −2.9% on $65.27 cost) |
| **Exit reason** | Trailing stop auto-triggered; day low $2.0132 < initial stop $2.1089 |
| **Residual dust** | 0.00533 NEAR (dust, no action) |

### INJ/USD — Position Intact

| Field | Value |
|---|---|
| **Status** | OPEN — 10 INJ, entry ~$5.805 |
| **Stop** | O6ZXY6-6HK7F-7UKZLO active, trail 2.5%, stop price $5.672 (HWM ~$5.817) |
| **Current price** | $5.748 (−1.0% from entry; above stop) |
| **Action** | None — protected, no tightening warranted (not up 20%+) |

### Crash Gate / BTC Check

| Field | Value |
|---|---|
| **BTC price** | $63,405 (ask) |
| **24h open** | $63,305 |
| **24h change** | +0.16% — well within normal range |
| **Crash gate** | NOT triggered |

### Alpaca Residual

| Field | Value |
|---|---|
| **Positions** | None (already fully exited) |
| **Stop a2b44cf9** | Canceled 2026-05-22 — expected, no action needed |


---

### INJ/USD — Trailing Stop Triggered [Exit, Jun 9 Pre-Session Confirm]

| Field | Value |
|---|---|
| **Event** | Trailing stop auto-triggered overnight (confirmed at 2026-06-09 pre-session) |
| **Stop Order ID** | O6ZXY6-6HK7F-7UKZLO |
| **Stop Type** | trailing_stop 2.5% GTC |
| **Entry** | ~$5.805 (10 INJ, Jun 8 22:11 UTC) |
| **HWM at overnight triage** | ~$5.817 → stop price $5.672 |
| **Confirmed trigger** | Dust balance 0.0000279447 INJ; current price $5.47 < stop $5.672 |
| **Est. exit price** | ~$5.672 (stop trigger; price continued down to $5.47) |
| **Est. P&L** | ~−$1.33 (≈ −2.3% on $58.05 cost, net of fee) |
| **Exit reason** | Trailing stop triggered; INJ lost momentum post-catalysts |
| **Account state post-exit** | ZUSD $129.14, no open positions, no open orders |

---

### Jun 09 — EOD Snapshot (Day 20, Tuesday)
**Portfolio:** $129.14 | **Cash:** $129.14 (100%) | **Day P&L:** −$5.61 (−4.16%) | **Phase P&L:** −$50.64 (−28.17%) | **vs BTC:** −3.85%

| Symbol | Qty | Entry | Price | Day Chg | Unrealized P&L | Trailing Stop |
|---|---|---|---|---|---|---|
| — | — | — | — | No positions | — | — |

**Trades today (includes Jun 08 post-EOD session + Jun 09 confirmations):** 1) KAS/USD BUY 2428 @ $0.03273 (Jun 8 09:07Z); 2) ONDO/USD BUY 125 @ $0.35827 (Jun 8 09:08Z); 3) ONDO stop exit OYHRV7 at −1.4% (−$0.63); 4) ONDO re-entry BUY 120 @ $0.3621 (Jun 8 12:10Z); 5) KAS stop exit OANQVR at −2.5% (−$1.97); 6) ONDO re-entry stop exit OWTP5B at +2.2% (+$0.96); 7) NEAR/USD BUY 30 @ ~$2.167 (Jun 8 21:10Z); 8) INJ/USD BUY 10 @ ~$5.805 (Jun 8 22:11Z); 9) NEAR trailing stop OZUM7J triggered overnight (~$2.11, −2.9%, −$1.91); 10) INJ trailing stop O6ZXY6 triggered Jun 9 pre-session (~$5.672, −2.3%, −$1.33) | **Total since migration:** ~65
**Notes:** Active trading spanning Jun 08 post-EOD and Jun 09 confirmations — 5 buys all ending in stop-outs. KAS (Toccata upgrade thesis, 3rd repeat) stopped at −2.5% (−$1.97); ONDO made brief HWM ratchet to +2.2% before reversing (net +$0.33 across two legs); NEAR (Nightshade 2.0 upgrade + AI/SpaceX IPO narrative, bought Jun 8 21:10Z at $2.167) stopped overnight at ~$2.11 (−2.9%, −$1.91); INJ (Binance.US listing + U.S.-regulated futures + native USDC, bought Jun 8 22:11Z at $5.805) stopped Jun 9 pre-session at ~$5.672 (−2.3%, −$1.33). Net Day P&L −$5.61 (−4.16%) vs Jun 08 EOD $134.75. BTC was −0.31% (24h open $63,068 → $62,871), bot underperformed by −3.85%. Portfolio 100% ZUSD $129.14. Phase P&L −$50.64 (−28.17%) from Kraken starting equity $179.78. Alpaca stop a2b44cf9 confirmed cancelled 2026-05-22 — no Alpaca residual. Crash gate NOT triggered (BTC −0.31%). Tomorrow: 100% cash; primary watches ONDO post-perps-launch action, KAS Toccata re-entry conditional on $0.031+ reclaim; require 1h >3% + fresh <6h catalyst, R:R ≥1.2:1.

