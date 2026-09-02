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
- Market orders for speed on fast-moving setups; limit orders when entry precision matters
- Spread check mandatory before every order: `bash scripts/kraken.sh quote SYM/USD`
- **Target: 3–5% gain from entry.** Define T1 (3%) and T2 (5%) before entering
- Skip any setup where the projected gain to T1 is less than 2× the 2.5% stop risk (R:R < 1.2:1)
- **Momentum peak check (added 2026-06-19):** Before entry, confirm the 24h high was set within the last **60 minutes**. If the 24h high is >60 min old and current price is declining from it, the repricing event has already occurred — skip unless (a) there is a fresh 1h candle breakout above the prior 24h high, or (b) a new distinct catalyst event <2h old. Prevents "buy the rumour, sell the news" entries where momentum is fading rather than accelerating.
  - **Cadence-relative freshness ceiling (added 2026-09-01):** The 60-minute figure assumes near-continuous monitoring, but the actual scan cadence has run as sparse as every 1–5h — meaning candidates are frequently already stale by the time *any* pass, research or execution, looks at them (2026-09-01: 8+ candidates cleared every other gate and 0 converted to a trade, largely on this gate alone). Use whichever is **smaller**: 60 minutes, or the time since the last logged pass in RESEARCH-LOG.md. This keeps the gate's actual intent (reject a pump that's already fading) satisfiable regardless of how sparse the real trigger schedule is, instead of it being a near-permanent HOLD generator whenever passes run hours apart. The confirmed-closed-candle requirement below still applies on top of this — a fresh scan interval doesn't waive it.
  - **Confirmed-candle requirement (added 2026-08-28):** The 60-minute freshness window alone is not sufficient in a choppy/range-bound tape — the week of 2026-08-21 to 2026-08-28 saw several entries buy a high made on the *currently forming* (not yet closed) candle, which then immediately reversed (one stop-out fired 2m42s after fill). Before entry, the breakout high must be confirmed by **at least one fully closed 15m candle holding above the prior breakout level** — do not enter on a still-forming candle's fresh high alone. Applies on top of, not instead of, the 60-minute check above.
- **Scheduled-catalyst pre-positioning caution (added 2026-07-03):** For catalysts with a known, publicly-scheduled activation time (hard forks, mainnet upgrades, token unlocks with a fixed date/time), do not enter more than **~2 hours ahead** of the event on anticipatory momentum alone. Pre-event momentum on dated catalysts is frequently front-run and sold into before the event fires. Prefer entering on confirmed post-event price reaction, or require a fresh breakout above the pre-event high with volume confirmation if entering ahead of the scheduled time. Does not apply to unscheduled/reactive catalysts (news, listings, protocol votes with no fixed announcement time), which remain governed by the momentum peak check above.
- **Extreme Fear + unconfirmed catalyst R:R floor (added 2026-07-10):** If a catalyst's freshness cannot be confirmed as <6h old AND the Crypto Fear & Greed Index reads "Extreme Fear" (≤25), require R:R **≥ 1.5:1** at T1 instead of the standard 1.2:1 minimum. A bare-minimum-R:R entry with unverified catalyst timing in an Extreme Fear backdrop (ARB, 2026-07-09) reversed within an hour. Does not apply when either condition alone is true — both must be present.
- **Momentum-only (no confirmed catalyst) R:R floor raised to 1.5:1, all Fear/Greed levels (added 2026-08-14):** Three consecutive momentum-only entries with no confirmed <6h catalyst, all sitting exactly at the bare 1.2:1 structural floor, have now lost 3-for-3 since the 0.8%/leg fee correction (VELVET 2026-07-29, SYN 2026-08-05, BICO 2026-08-06) — not just in Extreme Fear, SYN entered at F&G 40 "Fear." Any entry lacking a confirmed <6h catalyst now requires R:R ≥1.5:1 at T1 regardless of Fear & Greed reading. Catalyst-confirmed entries are unaffected and keep the standard 1.2:1 floor. This supersedes the Extreme Fear rule above only in the sense that the 1.5:1 bar is now the floor for every no-catalyst entry, not just Extreme Fear ones — the Extreme Fear rule's own text stays for historical reference but is now the general case.
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
- **Profit targets: T1 = +3%, T2 = +5%** from entry
  - At T1 (+3%): tighten trailing stop to 0.5% to lock in gains, let it run toward T2
  - At T2 (+5%): consider closing or tightening further — day trading wins are banked, not held
  - **Aspirational only — not reliably executed (flagged 2026-08-21):** tightening at T1 requires
    a live session to catch the price crossing T1 in real time and actively cancel/replace the
    trailing-stop order. Sessions run on a scan cadence (pre-session/midday/EOD), not
    continuously, so by the time a session checks in, price has frequently already run past
    T1/T2 *and* reversed on the original, wider trail before any tightening could happen. June
    sessions did catch this live a few times (logged "STOP TIGHTENED (T1 hit)" events), but the
    Aug 19-20 trades (MUBARAK, BIO) show the more typical outcome: both ran through T1 and T2
    and were closed by the original 2.5%/3.5% trail, not a tightened 0.5% one — BIO netted
    +7.81%, well past its +6% T2, precisely because tightening never fired. Do not assume T1
    tightening happened just because T1/T2 are defined in a trade log entry; check for an
    explicit "STOP TIGHTENED" action before crediting it in a review. This is not treated as a
    bug to fix — untightened trades have been letting winners run further, not worse — but
    future reviews should stop assuming the tightening step executes as written.
- **Binary catalyst assets (regulatory votes, ETF filings):** use `trail_percent: 7` for the initial stop — headline volatility can blow through 2.5%; widen only on binary events, not routine trades
- No fixed hold time — exit when thesis is invalidated, target is hit, or stop fires
- Cancel orders any time: `bash scripts/kraken.sh cancel <order_id>`
- **Orphan-stop check (added 2026-06-26):** Before cancelling any trailing stop as an "orphan" (no matching position), FIRST verify the underlying asset BALANCE via `bash scripts/kraken.sh account`. The `kraken.sh positions` endpoint returns ONLY margin positions — spot holdings appear only as non-zero balances (XXBT, XSOL, XETH, etc.) in the account output. A stop is orphaned ONLY IF: (a) `positions: {}` AND (b) the asset balance in `account` = 0 (dust < $0.01). Do NOT cancel stops based on `positions: {}` alone.

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

## Gate-Rejection Outcome Tracking (added 2026-09-01)

When a candidate clears every raw momentum/volume/freshness bar but is rejected on a
downstream gate (catalyst floor, cross-exchange divergence, weekly-downtrend regime,
scheduled-catalyst caution, etc.), a later pass reviewing the same asset should note
its price now vs. its price at rejection. This is the only way to tell, with data
instead of vibes, whether a given gate is net protective or net costly over time.
Observation only — never re-enter a rejected candidate retroactively off this note;
it exists to inform gate-tuning during weekly reviews, not to trigger trades.

## Process Integrity Rules (added 2026-08-28)

- **Same-pass logging (mandatory):** Every trade must be appended to `memory/TRADE-LOG.md` and committed before the pass that executes it ends. Never defer logging to a later session — the week of 2026-08-21 to 2026-08-28 had a live VIRTUAL/DRV position briefly exist with zero git record because the executing pass ended before logging it.
- **EOD/Summary labeling:** Only the last pass of a calendar day, written after that day's positions are confirmed closed/reconciled (via `kraken.sh closedorders` or balance reconciliation), may use an "EOD Snapshot"/"EOD Summary" heading. A mid-session pass that still shows open positions must not use that heading — mislabeling has recurred across at least 5 separate days over two consecutive weekly reviews (2026-08-21, 2026-08-28) despite being flagged as a recommendation the first time.

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
   proximity to the 24h high (candidates whose high was set within the last ~60
   minutes are prioritized — that's what the momentum-peak-check gate requires).
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
- [ ] Momentum-peak check: 24h high set within last 60 min, or a fresh 1h breakout above it
- [ ] Catalyst documented via Perplexity — momentum alone OK if 1h surge >3% with volume
- [ ] Stop: `trailing_stop`, `trail_percent: 2.5` (default); 7 for binary-catalyst events only
- [ ] T1 = entry +3%, T2 = entry +5% defined before entry
- [ ] R:R ≥ 1.2:1 (T1 gain vs 2.5% stop risk) if a catalyst <6h old is confirmed; **≥1.5:1 for any momentum-only/no-catalyst entry, all Fear/Greed levels** (added 2026-08-14)
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

*Last updated: 2026-08-28 (weekly review — worst week on record, −36.82% vs BTC +2.97%, driven by a collapse in momentum-only win rate to 15.8% as the market shifted from trending to choppy/range-bound. Added a confirmed-closed-candle requirement to the momentum-peak-check after several fast reversals (one stop-out 2m42s post-fill) showed the 60-min freshness window alone wasn't catching still-forming-candle fakeouts; added an AU jurisdiction-restricted asset list (ZEC, DASH); formalized two recurring operational issues — EOD-snapshot mislabeling and deferred trade logging — into standing Process Integrity rules after review-note flagging alone failed to stop their recurrence; added `kraken.sh closedorders` command to fix a reconciliation data gap). Previous update: 2026-08-21 (flagged the T1 stop-tightening-to-0.5% rule as aspirational-only, not reliably executed given the scan cadence — sessions run periodically, not continuously, so they usually miss the moment price crosses T1; recent trades (MUBARAK, BIO) closed on the original untightened trail well past T1/T2 instead). Previous update: 2026-08-14 (weekly review — raised the R:R floor for momentum-only/no-catalyst entries to 1.5:1 at all Fear/Greed levels, after three such entries at the bare 1.2:1 floor lost 3-for-3 since the fee correction (VELVET, SYN, BICO)). Previous update: 2026-07-31 (weekly review — corrected taker fee assumption from 0.4%/leg to the actually-measured 0.8%/leg, ~1.6% round trip, after the VELVET trade showed the prior figure was 2x too low). Previous update: 2026-07-24 (weekly review — formalized the cross-exchange price-divergence rejection gate after three ad hoc applications this week). Prior: 2026-07-20 (demoted Perplexity to context/catalyst-confirmation only, replaced with Kraken-native discovery sweep; added gate-protection default rule resolving the "TRADE is default stance" vs. gate framing conflict). Prior: 2026-07-10 (added Extreme Fear + unconfirmed catalyst R:R floor of 1.5:1; corrected taker fee assumption from 0.26% to the actually-measured 0.4%)*
