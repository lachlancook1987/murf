# Crypto Trading Strategy — Kraken Day Trading Profile

*Activated: 2026-05-21. Day trading focus added: 2026-05-26.*

---

## Philosophy

This is discretionary gambling capital. The goal is **intraday day trading** — targeting
3–5% gains per trade, recycling capital multiple times per day. Fast entries, fast exits,
tight stops. **No holding through uncertainty.** Cut losses at 2.5%, let winners run to
target, move on. Volume of profitable trades beats size of any single trade.

---

## Universe

- **Any crypto asset tradeable on Kraken** — BTC, ETH, SOL, alts, micro-caps, memes
- No stocks, no options, no fiat pairs beyond USD
- Prefer assets with spread ≤ 1% (checked via `kraken.sh quote`); skip if wider
- **AU jurisdiction-restricted assets (added 2026-08-28):** `ZEC` and `DASH` both return `EAccount:Invalid permissions ... restricted for AU` on order placement, regardless of how cleanly they clear momentum/volume/spread gates (confirmed twice each, week of 2026-08-21 to 2026-08-28). Skip these pre-emptively in discovery sweeps rather than deep-diving them — do not spend scan time on them. Flag any other asset that returns this same error and add it here.

---

## Position Sizing

- No hard per-position cap — size to conviction and available capital
- Max total deployed: 100% of equity (no forced cash reserve)
- **Leverage: up to 2x available** — add `"leverage":"2"` to order JSON when using margin
  - Kraken charges rollover fees every **4 hours** on open margin positions (typically 0.01–0.02%/4h per asset)
  - At 2x leverage a 50% adverse move = liquidation — always place a stop on leveraged positions
- **Volatility-scaled sizing (added 2026-09-02):** Full conviction sizing (up to 100% equity) is reserved for **catalyst-confirmed** entries. **Momentum-only, high-ATR entries** (any entry using the 3.5% high-ATR trail exception) are capped at **60% of equity** per position. Rationale: the Aug 21–29 stop-out streak (RUNE, BMT, GWEI, ZIG, HNT — 5 of 6 momentum-only entries lost, most stopped within minutes to hours of entry) showed this entry class has materially higher reversal risk than catalyst-confirmed entries; sizing down the riskier class reduces the cost of the pattern without banning it outright.

---

## Trade Frequency

- **Day trading is the primary mode** — target 3–5% per trade, multiple cycles per day
- Idle capital is wasted capital; recycle freed ZUSD immediately into next best setup
- No weekly trade cap; no sector pause rules; consecutive losses do not block re-entry
- Intraday scalps, momentum plays, and news-driven entries are the priority
- Multi-day holds are the exception, not the rule — only if thesis is exceptional and stop is in profit

---

## Entry Rules

- **Intraday momentum is the primary signal**: price up >3% in the last 1–4h with volume confirmation
- Catalyst required: news, technicals, momentum, on-chain signal, or narrative — no blind chasing
- **Entry order type (revised 2026-09-02):** Default to a **limit buy at or just above the current bid** (no more than 0.15% above bid), not a market order, for every new entry. Market-buying a fresh breakout tends to fill at or near the local top — the direct mechanism behind most of the Aug 21–29 stop-out streak. If the limit order has not filled by the end of the same scan pass, cancel it; do not chase with a market order in the same pass — treat the missed entry as a skip and let the next scan re-evaluate the setup fresh. Market orders remain acceptable only for a confirmed <2h binary catalyst event where fill certainty matters more than entry price.
- Spread check mandatory before every order: `bash scripts/kraken.sh quote SYM/USD`
- **Target: 3–5% gain from entry.** Define T1 (3%) and T2 (5%) before entering
- Skip any setup where the projected gain to T1 is less than 2× the 2.5% stop risk (R:R < 1.2:1)
- **Momentum peak check (added 2026-06-19, freshness window tightened 2026-09-02):** Before entry, confirm the 24h high was set within the last **30 minutes** (tightened from 60 min — the wider window was still admitting entries that had already crested by the time the next scan caught them, e.g. RUNE/BMT/GWEI/ZIG/HNT in the Aug 21–29 streak, most of which stopped out within 6–30 min of fill). If the 24h high is >30 min old and current price is declining from it, the repricing event has already occurred — skip unless (a) there is a fresh 1h candle breakout above the prior 24h high, or (b) a new distinct catalyst event <2h old. Prevents "buy the rumour, sell the news" entries where momentum is fading rather than accelerating.
  - **Confirmed-candle requirement (added 2026-08-28):** The freshness window alone is not sufficient in a choppy/range-bound tape — the week of 2026-08-21 to 2026-08-28 saw several entries buy a high made on the *currently forming* (not yet closed) candle, which then immediately reversed (one stop-out fired 2m42s after fill). Before entry, the breakout high must be confirmed by **at least one fully closed 15m candle holding above the prior breakout level** — do not enter on a still-forming candle's fresh high alone. Applies on top of, not instead of, the freshness check above.
  - **Two-candle acceleration requirement (added 2026-09-02):** A single confirmed-closed breakout candle is not sufficient on its own — require the **last two closed 15m candles to each close higher than the prior candle's close** (i.e. momentum is still building into the entry, not just having built once). A candle sequence that spikes then stalls (higher high, flat-or-lower close) fails this check even if the confirmed-candle rule above is technically satisfied. This directly targets the "buy right as it stalls" pattern seen across the Aug 21–29 losing streak.
  - **Live intracandle fade check (added 2026-09-02):** Independent of candle-close timing, reject if the *live* price has already retraced more than **1.5%** off the 24h high at the moment of the entry check, even if that high sits on a still-forming candle. This catches fades happening *between* scan passes that a candle-close-only check would miss until the next pass (the CHIP/MINA pattern from the 2026-09-01 midday scan).
  - **Cadence-relative freshness ceiling (added 2026-09-02, second review same day):** The 30-minute figure above still assumes passes run close enough together to catch it — CLAUDE.md's target schedule spaces passes 4 hours apart, so a fixed 30-min bar risks becoming a near-permanent HOLD generator regardless of how good a setup is (2026-09-01 alone: 8+ candidates cleared every other gate, 0 converted to a trade). Use whichever is **smaller**: 30 minutes, or the time since the last logged pass in RESEARCH-LOG.md. This keeps the gate's intent (reject an already-fading pump) satisfiable at whatever cadence the external trigger actually runs at, without waiving the confirmed-candle, two-candle-acceleration, or live-intracandle-fade checks above — all three still apply on top of this ceiling.
- **Scheduled-catalyst pre-positioning caution (added 2026-07-03):** For catalysts with a known, publicly-scheduled activation time (hard forks, mainnet upgrades, token unlocks with a fixed date/time), do not enter more than **~2 hours ahead** of the event on anticipatory momentum alone. Pre-event momentum on dated catalysts is frequently front-run and sold into before the event fires. Prefer entering on confirmed post-event price reaction, or require a fresh breakout above the pre-event high with volume confirmation if entering ahead of the scheduled time. Does not apply to unscheduled/reactive catalysts (news, listings, protocol votes with no fixed announcement time), which remain governed by the momentum peak check above.
- **Extreme Fear + unconfirmed catalyst R:R floor (added 2026-07-10):** If a catalyst's freshness cannot be confirmed as <6h old AND the Crypto Fear & Greed Index reads "Extreme Fear" (≤25), require R:R **≥ 1.5:1** at T1 instead of the standard 1.2:1 minimum. A bare-minimum-R:R entry with unverified catalyst timing in an Extreme Fear backdrop (ARB, 2026-07-09) reversed within an hour. Does not apply when either condition alone is true — both must be present.
- **Momentum-only (no confirmed catalyst) R:R floor raised to 1.5:1, all Fear/Greed levels (added 2026-08-14):** Three consecutive momentum-only entries with no confirmed <6h catalyst, all sitting exactly at the bare 1.2:1 structural floor, have now lost 3-for-3 since the 0.8%/leg fee correction (VELVET 2026-07-29, SYN 2026-08-05, BICO 2026-08-06) — not just in Extreme Fear, SYN entered at F&G 40 "Fear." Any entry lacking a confirmed <6h catalyst now requires R:R ≥1.5:1 at T1 regardless of Fear & Greed reading. Catalyst-confirmed entries are unaffected and keep the standard 1.2:1 floor. This supersedes the Extreme Fear rule above only in the sense that the 1.5:1 bar is now the floor for every no-catalyst entry, not just Extreme Fear ones — the Extreme Fear rule's own text stays for historical reference but is now the general case.
- **Momentum-only R:R floor raised again to 1.8:1 (added 2026-09-02):** The 1.5:1 floor did not fix the underlying problem — the Aug 21–29 week realized a documented **15.8% win rate** on momentum-only entries against a real 1.6% round-trip fee, which is deeply net-negative even at 1.5:1 R:R. Raising the floor to **1.8:1 at T1** for every momentum-only entry (catalyst-confirmed entries keep the 1.2:1 floor). Combined with the win-rate kill switch below, the floor is a static backstop; the kill switch is the dynamic one.
- **Gate-protection default (added 2026-07-20):** Every gate in this document (momentum-peak check, spread cap, R:R floor, same-thesis cooling period) exists to protect capital and takes precedence over CLAUDE.md's "TRADE is the default stance" framing. A session that checks every live candidate and finds none clearing every gate should conclude HOLD — that is a correct, expected outcome, not a gap to route around. Gates are never to be loosened or skipped in-session to manufacture a trade, regardless of how long the HOLD streak has run.
- **Cross-exchange price-divergence gate (added 2026-07-24):** Before entry, compare Kraken's live price against CoinGecko/CoinMarketCap or another major exchange (via Perplexity or direct check). If Kraken's price diverges materially (roughly >15–20%) from that reference, reject the candidate regardless of how cleanly it clears momentum/spread/R:R — large divergence signals a thin, not-yet-arbitraged, or migration/listing-distorted order book, not a real tradeable move. Applied ad hoc and correctly on PTB (Jul 21), ALKIMI (~80% divergence, Jul 23), and TNSR (order-of-magnitude divergence, Jul 24) before being formalized here.

---

## Exit & Stop Rules

- **Stop-loss mandatory on every new position, placed immediately after fill**
- **Default: 2.5% trailing stop on ALL new trades** — `type: trailing_stop`, `trail_percent: 2.5`
  - Placed as a market-order sell GTC immediately after the buy fills
  - No exceptions: if a stop is not placed, the trade is not complete
  - **Exception: high-ATR assets** — for assets with expected intraday ATR >3% (e.g. FET, HYPE, WLD-type momentum coins), use **3.5% trailing stop** to avoid noise-stops on otherwise valid trades
  - **Overnight sizing cap for high-ATR re-entries:** If re-entering a high-ATR asset (3.5% trail) same-session after a prior T1 exit, cap overnight hold size at **50% equity** when stop buffer is <2% at session-end. Full overnight exposure at <2% buffer on a high-ATR asset courts noise-stops (added 2026-06-05)
- **Profit targets: T1 = +3%, T2 = +5%** from entry (standard structure); **T1 = +6%, T2 = +9%** on high-ATR entries per the 3.5%/7% trail exceptions below.
- **Partial profit-take at T1 (redesigned 2026-09-02 — replaces the old "tighten trail at T1" mechanism):**
  The prior rule ("at T1, cancel the trail and replace with a 0.5% trail") required a live session
  to catch the exact moment price crossed T1 — it fired only **3 times in ~100+ days** of trading
  (2026-05-23, 2026-06-15 ×2, none since) because sessions run on a scan cadence, not
  continuously. By the time a session checked in, price had usually already run past T1/T2 and
  reversed on the original, wider trail (MUBARAK, BIO on 2026-08-19/20 are the clearest examples —
  BIO ran to +7.81%, well past its +6% T2, purely because tightening never fired). The fix moves
  the lock-in onto the exchange instead of a future session action:
  1. **Immediately after every buy fill**, alongside the standard trailing stop (sized to the
     **full** position quantity, unchanged), place a second order: a **limit sell for 50% of the
     filled quantity at the T1 price**. This is a resting order Kraken executes on its own if T1
     is reached, with no session needing to be live at that moment.
  2. **On every subsequent scan pass** (folded into the existing Step 3 stop-verification routine),
     check whether that T1 limit order has filled. If it has: **cancel the existing full-quantity
     trailing stop and replace it with a new trailing stop sized to the actual remaining balance**
     (the other 50%), same trail_percent as originally used. This cleanup is not time-critical —
     the original trailing stop still protects the full original quantity in the meantime — but
     must happen by the next scan pass, logged in TRADE-LOG.md as a "STOP RESIZED (T1 partial
     fill)" action.
  3. If price never reaches T1 and the trailing stop fires first, it closes the full position as
     before; the resting T1 limit order will have no balance to fill and becomes an orphan — cancel
     it in the same pass using the existing Orphan-Stop Check pattern below, extended to cover
     orphan T1 limit orders as well as orphan stops.
  4. **At T2 (+5%, or +9% on high-ATR):** treat the remaining 50% the same way discretion allowed
     before — tighten the trail further if a session happens to catch it live, otherwise let the
     trail run. This half was never intended to be locked at a fixed target; T1's partial exit is
     what guarantees *some* gain is banked without depending on session timing.
  - **Known limitation:** between a T1 fill and the next scan's cleanup, the original trailing stop
    order still references the full original quantity. If it triggers in that window, Kraken's
    behavior on a stop order sized larger than available balance is not fully characterized here —
    treat any such occurrence as a priority item to verify and document the actual fill behavior
    the first time it happens.
- **Progressive stop-tightening on runners (added 2026-09-02, corrected 2026-09-02):** Layered on
  top of, not instead of, the T1 partial-profit-take above. For any position (or the post-T1
  remainder) with unrealized gain from entry **≥20%**, tighten the trailing stop to **2%** (from
  the 2.5% default, or from 3.5% on high-ATR entries). If unrealized gain reaches **≥40%**, tighten
  further to **1.5%**. Never widen a trailing stop; never replace a tighter stop with a looser one —
  if a position is already on a tighter trail than the threshold would set, leave it alone. Checked
  every hourly pass as part of Step 3 position maintenance.
  - **Correction note:** the routine originally carried this as an inline instruction (outside this
    doc, in the scheduled task prompt) with the thresholds backwards — tightening from 2.5% to 3%
    at ≥20% gain, which is a *widening*, not a tightening, and directly contradicted the "never
    widen" rule stated in the same instruction. This entry is the corrected, canonical version;
    treat this doc as authoritative over the stale prompt wording per the Rules Source of Truth
    principle (also applied to Step 4 elsewhere in the routine).
  - **Known limitation:** unlike T1's partial-take (an exchange-resting limit order that fills with
    no session needing to be live), this tightening is a *session-checked* action — it only takes
    effect on the pass that catches the position at or above the threshold. Hourly cadence is a
    real improvement over the old spotty session timing that made the pre-redesign T1 mechanism
    fire only 3 times in 100+ days, but a position that spikes past 20%/40% and reverses hard
    inside that same hour can still give back more than the tightened trail implies before the next
    pass adjusts it. Treat as best-effort profit protection, not a guarantee.
- **Binary catalyst assets (regulatory votes, ETF filings):** use `trail_percent: 7` for the initial stop — headline volatility can blow through 2.5%; widen only on binary events, not routine trades
- No fixed hold time — exit when thesis is invalidated, target is hit, or stop fires
- Cancel orders any time: `bash scripts/kraken.sh cancel <order_id>`
- **Orphan-stop check (added 2026-06-26):** Before cancelling any trailing stop as an "orphan" (no matching position), FIRST verify the underlying asset BALANCE via `bash scripts/kraken.sh account`. The `kraken.sh positions` endpoint returns ONLY margin positions — spot holdings appear only as non-zero balances (XXBT, XSOL, XETH, etc.) in the account output. A stop is orphaned ONLY IF: (a) `positions: {}` AND (b) the asset balance in `account` = 0 (dust < $0.01). Do NOT cancel stops based on `positions: {}` alone.
  - **Extended to T1 limit orders (added 2026-09-02):** The same check applies to the T1 partial-profit limit sell orders introduced above — if the asset balance is 0 (position fully closed by the trailing stop) but a T1 limit sell order is still open, cancel it as an orphan using this same balance-verification method.

---

## Leverage Rules

- Max 2x (`"leverage":"2"` in order JSON)
- Always pair a leveraged buy with an immediate stop-loss order
- Monitor rollover cost on multi-day margin holds (4h rollover fee compounds)
- Not all Kraken pairs support margin — check `assets` output for margin availability

---

## Crash Gate

- BTC down **>20% in 24h** → pause all new entries; close leveraged positions
- Normal BTC dips (-5%, -10%) are buying opportunities, not blockers

## BTC Weekly Trend Gate (added 2026-05-29)

- If BTC is down **>3% over the past 5 trading days**, apply stricter day-trade entry criteria:
  - Require 1h momentum **>5%** AND a fresh catalyst **<3h old** (not just >3%/1h momentum)
  - Pure momentum entries (no specific catalyst) are **banned** during a weekly BTC downtrend
  - Catalyst-driven entries (regulatory event, exchange listing, protocol upgrade) remain open regardless of BTC weekly trend
  - XRP binary catalyst (CLARITY Act / regulatory vote) entries remain open at 7% trail
- This gate does NOT apply to crash-gate situations — the crash gate supersedes it

---

## Same-Thesis Entry Cap (added 2026-06-12)

After **2 stop-outs on the same asset within a 7-day rolling window**, require:
1. **48h cooling period** — no re-entry on that asset for 48h after the 2nd stop-out
2. **Materially new catalyst** — a distinct new development (new exchange listing, new regulatory event, new protocol upgrade date) beyond "original thesis still valid"

This does NOT apply to:
- Same-session re-entries at a lower price after a stop (those remain fully open)
- Other assets, even in the same sector
- The same asset after the 48h window with a new catalyst

Rationale: three consecutive NEAR entries (Jun 6, 7, 8) and five consecutive KAS entries (Jun 3, 4, 5, 6, 8) at progressively higher prices after stop-outs cost ~$17 in one week — all on real catalysts, all stopped correctly. Re-entering a price structure that has rejected your thesis twice in 7 days has negative expected value regardless of catalyst quality.

---

## Process Integrity Rules (added 2026-08-28)

- **Same-pass logging (mandatory):** Every trade must be appended to `memory/TRADE-LOG.md` and committed before the pass that executes it ends. Never defer logging to a later session — the week of 2026-08-21 to 2026-08-28 had a live VIRTUAL/DRV position briefly exist with zero git record because the executing pass ended before logging it.
- **EOD/Summary labeling:** Only the last pass of a calendar day, written after that day's positions are confirmed closed/reconciled (via `kraken.sh closedorders` or balance reconciliation), may use an "EOD Snapshot"/"EOD Summary" heading. A mid-session pass that still shows open positions must not use that heading — mislabeling has recurred across at least 5 separate days over two consecutive weekly reviews (2026-08-21, 2026-08-28) despite being flagged as a recommendation the first time.
- **TRADE decision requires a confirmed fill (added 2026-09-02):** A session that concludes "Decision: TRADE" but does not place and confirm the order in that same pass is a silent execution failure, not a valid outcome. On 2026-08-20, pre-session research reached TRADE with 5 qualifying candidates and no execution followed — nobody flagged it, and it cost roughly 8.5 percentage points vs BTC in pure opportunity cost. Going forward: (a) a pass may only log "Decision: TRADE" once the order is placed and its fill is confirmed via `kraken.sh orders`/`account` in that same pass — if execution doesn't happen, log "Decision: HOLD (execution not completed)" instead, not a bare TRADE; (b) every subsequent pass's pre-check must explicitly reconcile against the immediately prior pass's logged decision — if the prior pass logged TRADE, the current pass must confirm a resulting position or closed-order record exists, and must flag loudly (push notification, not just a log line) if it does not.

---

## Performance-Linked Controls (added 2026-09-02)

Static gates (R:R floors, momentum bars) didn't stop the Aug 21–29 losing streak because every
individual trade cleared them — the problem showed up only in the aggregate realized win rate.
These two rules act on realized results directly, on top of the static gates above, not instead
of them.

- **Rolling win-rate kill switch:** Track the realized outcome (win/loss vs entry cost, from
  TRADE-LOG.md) of the last **10 momentum-only entries** (catalyst-confirmed entries are tracked
  separately and do not count toward this window). If the realized win rate over that trailing
  window is below **35%** — the approximate breakeven win rate at a 1.8:1 R:R against a 1.6%
  round-trip fee — **suspend new momentum-only entries** until the trailing win rate recovers
  above that line. Catalyst-confirmed entries are unaffected and remain open. Log the current
  trailing win rate in every research pass's discovery summary so a suspension is visible before
  it's needed, not discovered after the fact.
- **Daily consecutive-loss pause:** After **3 consecutive stop-outs on the same calendar day**
  (any assets, not sector-specific — sector pause rules remain retired), pause all new entries
  for the remainder of that day regardless of how clean a subsequent candidate looks. This is
  distinct from the same-thesis 48h cooling period (which gates re-entry on one specific asset)
  and from the retired sector-pause rules (which gated by sector) — this gates the whole day after
  a cluster of losses, on the observation that the Aug 24–29 losses were the same failure mode
  repeating across different tickers on the same days, not isolated bad picks. Resumes
  automatically at the next calendar day's first pass.

---

## Gate-Rejection Outcome Tracking (added 2026-09-02, second review same day)

When a candidate clears every raw momentum/volume/freshness bar but is rejected on a downstream
gate (catalyst floor, cross-exchange divergence, weekly-downtrend regime, scheduled-catalyst
caution, etc.), a later pass reviewing the same asset should note its price now vs. its price at
rejection. This is the only way to tell, with data instead of vibes, whether a given gate is net
protective or net costly over time — the win-rate kill switch above tracks realized *entries*,
this tracks realized *rejections*, so a weekly review can compare both sides. Observation only —
never re-enter a rejected candidate retroactively off this note; it exists to inform gate-tuning
during weekly reviews, not to trigger trades.

---

## Risk Awareness (not rules — just notes)

- Kraken taker fee: previously assumed ~0.4% per trade (round trip ~0.8%) based on the ARB entry (2026-07-09), but the VELVET round trip (2026-07-29) measured **0.80% per leg on both legs** (buy $0.31922/$39.90198 = 0.800%, sell $0.32007/$40.00888 = 0.800%) — a round trip of **~1.6%**, double the prior assumption. Use **0.8%/leg (1.6% round trip)** for R:R and fee-estimate purposes going forward. On a 3% target, 1.6% round-trip is over half of gross profit — factor in heavily. An entry sitting at exactly the 1.2:1 R:R floor is fee-thin, not comfortably profitable, at this rate.
- At 2.5% trailing stop: net loss per bad trade ≈ −2.5% − 0.8% fee ≈ −3.3%. Need meaningfully more than 1 winner per loser
- Thin alt liquidity: wide spreads and slippage can eat into the 2.5% stop budget — tight spread check is critical
- 2.5% trail on fast-moving alts may trigger on normal noise — pick assets with steady momentum, not spike-and-dump
- 2x leverage on volatile alts can gap through stops — size accordingly; day trades are usually unleveraged spot
- No circuit breakers beyond the crash gate — discipline is the only risk management

---

## Sector Tracking

Sector pause rules from the Alpaca era are **retired**. All sectors open.

| Sector | Assets | Status |
|---|---|---|
| BTC Core | BTC/USD | OPEN |
| ETH / L1 | ETH/USD | OPEN |
| L2 / DeFi | SOL, AVAX, ARB, OP | OPEN |
| Alts / Memes | Full Kraken universe | OPEN |

---

## Discovery & Research Method (revised 2026-07-20 — Perplexity demoted to context-only)

Across roughly a month of sessions (mid-June through mid-July 2026), Perplexity's
gainer/surge/volume queries were contradicted by live Kraken data in the large
majority of checks — wrong direction, wrong magnitude, or tickers with no Kraken
pair at all. Every bad read was caught before it reached an order, but it meant most
scan time went to disproving Perplexity rather than finding real setups. Perplexity
is now **context/catalyst-confirmation only**, not a discovery source.

### Primary discovery: Kraken-native

1. Sweep live Kraken ticker/OHLC data across the tradeable pair universe.
2. Rank by: 1h surge >3%, 4h momentum >5%, volume >2× trailing 24h average, and
   proximity to the 24h high (candidates whose high was set within the last ~30
   minutes are prioritized — that's what the momentum-peak-check gate requires,
   tightened from 60 min on 2026-09-02).
3. Spread check via `kraken.sh quote SYM/USD` — ≤1% or hard skip.

### Secondary: Perplexity for context only

Run via `bash scripts/perplexity.sh "<query>"`:

1. `"Bitcoin price and 24h change right now"`
2. `"Ethereum price and 24h change right now"`
3. `"Crypto Fear and Greed Index today"`
4. `"Bitcoin perpetual futures funding rate today"`
5. `"Crypto token unlocks or major protocol upgrades this week $DATE"`
6. `"Top crypto market catalysts and breaking news today $DATE"`
7. One query per open position: `"<ASSET> news and price outlook today"`
8. One query per Kraken-sourced candidate from the sweep above: `"<ASSET> news and
   price outlook today"` — to confirm/deny a catalyst, not to source the candidate

**Do not use** Perplexity's "biggest 1h surge," "top gainers," "momentum plays on
Kraken," "volume surge alerts," or "best intraday setups" queries — these are the
specific query types that produced bad data nearly every session this month.

### Candidate Screening (fast-mover focus)

Priority signals to look for in research output — rank candidates by these:

| Signal | Threshold | Notes |
|---|---|---|
| 1h price surge | >3% in 1h | Strongest intraday signal |
| 4h momentum | >5% in 4h | Confirms sustained move |
| Volume surge | >2× 24h average | Confirms real buying, not thin noise |
| News catalyst | Last 6h | Listing, partnership, upgrade, regulatory win |
| Spread | ≤1% | Hard skip if wider |

### Opportunity Scan Checklist

For each candidate found via the Kraken sweep:
- [ ] `bash scripts/kraken.sh assets SYM/USD` — confirm pair is online on Kraken
- [ ] `bash scripts/kraken.sh quote SYM/USD` — confirm spread ≤1% (skip if wider)
- [ ] Momentum-peak check: 24h high set within last 30 min (tightened from 60 min, 2026-09-02), or a fresh 1h breakout above it
- [ ] Catalyst documented via Perplexity — momentum alone OK if 1h surge >3% with volume
- [ ] Stop: `trailing_stop`, `trail_percent: 2.5` (default); 7 for binary-catalyst events only
- [ ] T1 = entry +3%, T2 = entry +5% defined before entry
- [ ] R:R ≥ 1.2:1 (T1 gain vs 2.5% stop risk) if a catalyst <6h old is confirmed; **≥1.8:1 for any momentum-only/no-catalyst entry, all Fear/Greed levels** (raised from 1.5:1 on 2026-09-02 — realized 15.8% win rate on momentum-only entries in the Aug 21–29 week was net-negative even at 1.5:1)
- [ ] Two-closed-candle acceleration + live intracandle fade checks (added 2026-09-02) — see Entry Rules
- [ ] Entry via limit buy ≤0.15% above bid, not market (added 2026-09-02) — see Entry Rules
- [ ] Momentum-only entries sized ≤60% equity (added 2026-09-02) — see Position Sizing
- [ ] Win-rate kill switch and daily loss-streak pause both checked clear — see Performance-Linked Controls
- [ ] Size chosen based on conviction — no arbitrary cap; up to 100% equity

### What NOT to apply (retired rules)

- ~~Sector consecutive-loss pause~~ — all sectors always open
- ~~CAUTION / OFFENSIVE regime based on BTC vs 20-day MA~~ — does not affect entries or sizing
- ~~DXY red flag~~ — not part of this strategy
- ~~Fixed 25% position size in CAUTION mode~~ — size to conviction
- ~~5% default trailing stop~~ — replaced by 2.5% on all new day trades
- ~~Perplexity-sourced "top gainer"/"1h surge"/"volume surge" discovery queries~~ —
  replaced by direct Kraken market-data sweep (added 2026-07-20)

---

## Flagged for Follow-Up — Outside This File (added 2026-09-02)

Two items from the 2026-09-02 review are not implemented as rules here because they aren't
strategy questions — they need changes outside `TRADING-STRATEGY.md`:

- **Higher-frequency position-only monitoring.** The partial-profit-take redesign above reduces
  how much this matters (the exchange now locks in T1 gains without a live session), but a
  lightweight position-only check every 10–15 min (separate from the full discovery-scan cadence)
  would still catch stop-resize cleanup and thesis breaks faster. This requires a scheduling/cron
  change, not a strategy-doc rule — raise it with the user if session cadence becomes the
  bottleneck again.
- **Increasing overall scan cadence.** Same category — a scheduling decision, not a strategy rule.

**Not implemented:** shifting away from the intraday day-trading mandate toward fewer,
longer-hold, higher-conviction setups. This would materially change what this document is, not
just tune it, and was explicitly left for the user to decide separately rather than assumed here.

---

*Last updated: 2026-09-02, second same-day correction (added the progressive stop-tightening rule for runners with unrealized gain ≥20%/≥40% as a formal, documented entry in this file — it had only existed as an inline instruction in the scheduled task prompt with the thresholds backwards, tightening 2.5%→3% at ≥20% gain, which is a widening and directly contradicted that same instruction's own "never widen" rule. Corrected to 2.5%→2%→1.5% and flagged this doc as authoritative over the stale prompt wording.) Previous update same day: 2026-09-02 (implemented the Sept 2 loss-pattern review's recommendations: tightened momentum-peak-check freshness window 60→30min, added two-closed-candle acceleration and live intracandle fade checks, switched default entry order type from market to limit-at-bid, added volatility-scaled sizing cap (60% equity) for momentum-only entries, redesigned T1 profit-lock from a session-dependent trail-tightening action — which fired only 3 times in ~100+ days — to an exchange-resting partial-limit-sell placed at entry time, raised the momentum-only R:R floor from 1.5:1 to 1.8:1, added a rolling win-rate kill switch and a same-day consecutive-loss pause, and added a hard TRADE-decision-requires-confirmed-fill gate after the 2026-08-20 silent execution miss. Driven by a review of the Aug 21–29 losing streak: 5 of 6 momentum-only entries lost, most stopped within minutes to hours of entry, plus the Aug 19-20 BIO/MUBARAK wins showing the old T1-tightening mechanism never actually fired.) Previous update: 2026-08-28 (weekly review — worst week on record, −36.82% vs BTC +2.97%, driven by a collapse in momentum-only win rate to 15.8% as the market shifted from trending to choppy/range-bound. Added a confirmed-closed-candle requirement to the momentum-peak-check after several fast reversals (one stop-out 2m42s post-fill) showed the 60-min freshness window alone wasn't catching still-forming-candle fakeouts; added an AU jurisdiction-restricted asset list (ZEC, DASH); formalized two recurring operational issues — EOD-snapshot mislabeling and deferred trade logging — into standing Process Integrity rules after review-note flagging alone failed to stop their recurrence; added `kraken.sh closedorders` command to fix a reconciliation data gap). Previous update: 2026-08-21 (flagged the T1 stop-tightening-to-0.5% rule as aspirational-only, not reliably executed given the scan cadence — sessions run periodically, not continuously, so they usually miss the moment price crosses T1; recent trades (MUBARAK, BIO) closed on the original untightened trail well past T1/T2 instead). Previous update: 2026-08-14 (weekly review — raised the R:R floor for momentum-only/no-catalyst entries to 1.5:1 at all Fear/Greed levels, after three such entries at the bare 1.2:1 floor lost 3-for-3 since the fee correction (VELVET, SYN, BICO)). Previous update: 2026-07-31 (weekly review — corrected taker fee assumption from 0.4%/leg to the actually-measured 0.8%/leg, ~1.6% round trip, after the VELVET trade showed the prior figure was 2x too low). Previous update: 2026-07-24 (weekly review — formalized the cross-exchange price-divergence rejection gate after three ad hoc applications this week). Prior: 2026-07-20 (demoted Perplexity to context/catalyst-confirmation only, replaced with Kraken-native discovery sweep; added gate-protection default rule resolving the "TRADE is default stance" vs. gate framing conflict). Prior: 2026-07-10 (added Extreme Fear + unconfirmed catalyst R:R floor of 1.5:1; corrected taker fee assumption from 0.26% to the actually-measured 0.4%)*
