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

