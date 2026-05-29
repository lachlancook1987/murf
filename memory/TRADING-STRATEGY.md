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

---

## Exit & Stop Rules

- **Stop-loss mandatory on every new position, placed immediately after fill**
- **Default: 2.5% trailing stop on ALL new trades** — `type: trailing_stop`, `trail_percent: 2.5`
  - Placed as a market-order sell GTC immediately after the buy fills
  - No exceptions: if a stop is not placed, the trade is not complete
  - **Exception: high-ATR assets** — for assets with expected intraday ATR >3% (e.g. FET, HYPE, WLD-type momentum coins), use **3.5% trailing stop** to avoid noise-stops on otherwise valid trades
- **Profit targets: T1 = +3%, T2 = +5%** from entry
  - At T1 (+3%): tighten trailing stop to 0.5% to lock in gains, let it run toward T2
  - At T2 (+5%): consider closing or tightening further — day trading wins are banked, not held
- **Binary catalyst assets (regulatory votes, ETF filings):** use `trail_percent: 7` for the initial stop — headline volatility can blow through 2.5%; widen only on binary events, not routine trades
- No fixed hold time — exit when thesis is invalidated, target is hit, or stop fires
- Cancel orders any time: `bash scripts/kraken.sh cancel <order_id>`

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

## Risk Awareness (not rules — just notes)

- Kraken taker fee: ~0.26% per trade (round trip ~0.52%). On a 3% target that's ~17% of profit — factor in
- At 2.5% trailing stop: net loss per bad trade ≈ −2.5% − 0.26% fee ≈ −2.76%. Need >1 winner per loser
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

## Pre-Session Research Query Set

Run all of these via `bash scripts/perplexity.sh "<query>"` at each session open:

1. `"Bitcoin price and 24h change right now"`
2. `"Ethereum price and 24h change right now"`
3. `"Crypto assets with the biggest price surge in the last 1 hour right now"`
4. `"Top 10 crypto gainers in the last 24 hours"`
5. `"Crypto Fear and Greed Index today"`
6. `"Bitcoin perpetual futures funding rate today"`
7. `"Top crypto market catalysts and breaking news today $DATE"`
8. `"Crypto token unlocks or major protocol upgrades this week $DATE"`
9. `"Top altcoin momentum plays on Kraken exchange today — assets up more than 3% in 4 hours"`
10. `"Crypto volume surge alerts — which coins have unusual trading volume in the last 4 hours $DATE"`
11. `"Best intraday crypto day trade setups with catalyst today $DATE"`
12. One query per open position: `"<ASSET> news and price outlook today"`

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

For each candidate identified in research:
- [ ] `bash scripts/kraken.sh assets SYM/USD` — confirm pair is online on Kraken
- [ ] `bash scripts/kraken.sh quote SYM/USD` — confirm spread ≤1% (skip if wider)
- [ ] Catalyst documented — momentum alone OK if 1h surge >3% with volume
- [ ] Stop: `trailing_stop`, `trail_percent: 2.5` (default); 7 for binary-catalyst events only
- [ ] T1 = entry +3%, T2 = entry +5% defined before entry
- [ ] R:R ≥ 1.2:1 (T1 gain vs 2.5% stop risk)
- [ ] Size chosen based on conviction — no arbitrary cap; up to 100% equity

### What NOT to apply (retired rules)

- ~~Sector consecutive-loss pause~~ — all sectors always open
- ~~CAUTION / OFFENSIVE regime based on BTC vs 20-day MA~~ — does not affect entries or sizing
- ~~DXY red flag~~ — not part of this strategy
- ~~Fixed 25% position size in CAUTION mode~~ — size to conviction
- ~~5% default trailing stop~~ — replaced by 2.5% on all new day trades

---

*Last updated: 2026-05-29 (added BTC weekly trend gate; high-ATR assets use 3.5% trailing stop instead of 2.5%)*
