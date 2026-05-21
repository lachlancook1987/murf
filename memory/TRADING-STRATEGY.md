# Crypto Trading Strategy — Kraken Profile

*Activated: 2026-05-21. Replaces the old Alpaca conservative profile.*

---

## Philosophy

This is discretionary gambling capital. The goal is active trading and compounding gains
across Kraken's full asset universe — not long-term holding. Trade > hold.

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

- Multiple trades per day is the target; idle capital is wasted capital
- No weekly trade cap
- No sector pause rules — consecutive losses do not block re-entry
- Intraday scalps, momentum plays, news-driven entries all valid

---

## Entry Rules

- Any documented catalyst: news, technicals, momentum, on-chain signal, narrative
- Market orders for speed on fast-moving setups; limit orders when entry precision matters
- No restriction on chasing — if the move is real, enter
- Spread check mandatory before every order: `bash scripts/kraken.sh quote SYM/USD`

---

## Exit & Stop Rules

- **Stop-loss recommended on every position**, especially leveraged ones
- Default: 5% stop-loss-limit below entry (`type: stop_limit`)
- Tighten or trail stops manually as positions move in favour
- Trailing stop available on Kraken: `type: trailing_stop`, `trail_percent: 5`
- No fixed hold time — exit when thesis is invalidated or target is hit
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

---

## Risk Awareness (not rules — just notes)

- Kraken taker fee: ~0.26% per trade. Two trades/day = ~0.52%/day in fees — factor this into targets
- Thin alt liquidity: wide spreads and slippage on low-cap coins can exceed the fee cost
- 2x leverage on volatile alts can gap through stop limits — size accordingly
- No limitations means full upside and full downside; no circuit breakers beyond the crash gate

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
3. `"Top 10 crypto gainers in the last 24 hours"`
4. `"Crypto Fear and Greed Index today"`
5. `"Bitcoin perpetual futures funding rate today"`
6. `"Top crypto market catalysts and breaking news today $DATE"`
7. `"Crypto token unlocks or major protocol upgrades this week $DATE"`
8. `"Top altcoin momentum plays on Kraken exchange today — assets up more than 5% in 4 hours"`
9. `"Best DeFi altcoin trade setups with catalyst today $DATE"`
10. One query per open position: `"<ASSET> news and price outlook today"`

### Opportunity Scan Checklist

For each candidate identified in research:
- [ ] `bash scripts/kraken.sh assets SYM/USD` — confirm pair is online on Kraken
- [ ] `bash scripts/kraken.sh quote SYM/USD` — confirm spread ≤1% (skip if wider)
- [ ] Catalyst documented (news / momentum / technical breakout)
- [ ] Stop type chosen: `trailing_stop` (default, trail_percent 5) or `stop_limit`
- [ ] Size chosen based on conviction — no arbitrary cap; up to 100% equity

### What NOT to apply (retired Alpaca rules)

- ~~Sector consecutive-loss pause~~ — all sectors always open
- ~~CAUTION / OFFENSIVE regime based on BTC vs 20-day MA~~ — does not affect entries or sizing
- ~~DXY red flag~~ — not part of this strategy
- ~~Fixed 25% position size in CAUTION mode~~ — size to conviction

---

*Last updated: 2026-05-21*
