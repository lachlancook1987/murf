# Claude Code — murf crypto bot

## Git / Persistence

- **Default branch is `main`**. Fresh clones check out `main` directly — memory files
  are current from the first read, no extra fetch needed.
- Each session develops on a new `claude/<name>` branch (assigned in session instructions).
- **At session end, memory files must also be pushed to `main`** (not just the session
  branch), otherwise the next session won't see the updates. The STEP 8 instruction
  `git push origin main` won't work from a `claude/*` branch — use this pattern instead:

```bash
DATE=$(date +%Y-%m-%d)
git fetch origin main
git checkout -b _mem-sync origin/main
git checkout <session-branch> -- memory/RESEARCH-LOG.md memory/TRADE-LOG.md
git add memory/
git commit -m "crypto session memory sync $DATE"
git push origin HEAD:main
git checkout <session-branch>
git branch -D _mem-sync
```

> **IMPORTANT:** Memory files must be **committed on the session branch first** before
> running the mem-sync above. The `git checkout <session-branch> -- memory/...` step
> copies the *committed* version — any uncommitted edits on the session branch will be
> lost. Always run `git add memory/ && git commit` on the session branch before switching
> to `_mem-sync`.

## Notifications (WhatsApp via CallMeBot)

`scripts/clickup.sh` now delegates to `scripts/whatsapp.sh` — all existing routine
calls to `scripts/clickup.sh` continue to work unchanged.

Required env vars: `WHATSAPP_PHONE` (international format, no `+`, e.g. `447911123456`)
and `WHATSAPP_APIKEY` (received from CallMeBot on first activation).

## Kraken Script Commands (primary broker)

`scripts/kraken.sh` supports: `account`, `positions`, `orders`, `quote SYM/USD`,
`assets SYM/USD`, `order '{...}'`, `cancel <txid|all>`

Required env vars: `KRAKEN_API_KEY`, `KRAKEN_PRIVATE_KEY` (base64-encoded secret).

Symbol format: `BTC/USD`, `ETH/USD`, `SOL/USD` etc. (script maps BTC→XBT internally).

Order JSON fields:
- `symbol`, `qty`, `side` (buy/sell), `type` (market|limit|stop_limit|trailing_stop)
- `stop_price` + `limit_price` for stop_limit
- `trail_percent` for trailing_stop (default 5)
- `leverage` (optional, e.g. `"leverage":"2"` for 2x margin)
- `time_in_force` (gtc)
- `validate` (optional, `true` = dry-run, confirms order structure without submitting)

Trailing stop IS supported on Kraken (unlike Alpaca).

## Alpaca Script Commands (residual — Alpaca BTC position only)

`scripts/alpaca.sh` supports only: `account`, `positions`, `orders`

No `quote` or `order` subcommands exist. Use `curl` directly against `$ALPACA_ENDPOINT`
for quotes or placing orders.

`ALPACA_CRYPTO_DATA_ENDPOINT` is not set in this environment.

## Current Strategy Profile

Kraken **day trading** profile (activated 2026-05-21, day trading focus added 2026-05-26).
See `memory/TRADING-STRATEGY.md`.
Key parameters: target 3–5% per trade, recycle capital multiple times per day, full alt
universe, no position caps, up to 2x leverage, **2.5% trailing stop on all new trades**
(placed immediately after fill), crash gate = BTC down >20% in 24h.

## Pre-Session Research — Kraken Framework

The Kraken profile is **aggressive day trading**. Apply only these rules in pre-session
research — the old Alpaca conservative rules are fully retired.

### Discovery Method (revised 2026-07-20 — Perplexity demoted, chronic data-quality failures)

**Primary discovery is Kraken-native, not Perplexity.** A month of sessions showed
Perplexity's "top gainer" / "1h surge" / "volume surge" queries were wrong-direction,
wrong-magnitude, or non-existent tickers in the large majority of checks. Every miss
was caught by a live Kraken cross-check before it reached an order, but it meant most
of each session went to disproving Perplexity instead of finding real setups.

1. Sweep live Kraken ticker/OHLC data across the tradeable pair universe. Rank by:
   1h surge >3%, 4h momentum >5%, volume >2× trailing 24h average, and proximity to
   the 24h high (candidates whose high was set within the last ~60 minutes are
   prioritized — that's what the momentum-peak-check gate below requires anyway).
2. Spread check via `kraken.sh quote SYM/USD` — ≤1% or hard skip.
3. Run Perplexity **only** for macro context and catalyst confirmation, not discovery:
   `"Bitcoin price and 24h change right now"`, `"Ethereum price and 24h change right
   now"`, `"Crypto Fear and Greed Index today"`, `"Bitcoin perpetual futures funding
   rate today"`, `"Top crypto market catalysts and breaking news today $DATE"`,
   `"Crypto token unlocks or major protocol upgrades this week $DATE"`, one query per
   open Kraken position (`"<ASSET> news and price outlook today"`), and one query per
   Kraken-sourced candidate from step 1 (same format) to confirm/deny a catalyst.
4. **Do not run or rely on** Perplexity's "biggest 1h surge," "top gainers,"
   "momentum plays on Kraken," "volume surge alerts," or "best intraday setups"
   queries — these are the specific query types that produced bad data nearly every
   session this month. Kraken's own market data replaces them entirely.

### Candidate Screening Priority

Same signal ranking as before, now sourced from the Kraken sweep first:
1. **1h surge >3%** — strongest intraday signal
2. **4h momentum >5%** — sustained move, not a spike
3. **Volume surge >2× average** — real buying pressure
4. **News catalyst <6h old** — listing, upgrade, partnership, regulatory win (Perplexity-confirmed)
5. Spread ≤1% (hard skip if wider)

### Decision Rules (gates protect capital — read before assuming "TRADE" means force an entry)

| Rule | Kraken |
|---|---|
| Crash gate | BTC down >20% in 24h → no new entries, protect positions |
| Everything else | **Scan for a qualifying setup.** Enter only if it clears every gate (momentum-peak-check freshness, spread ≤1%, R:R ≥1.2:1 [≥1.5:1 in Extreme Fear + unconfirmed catalyst], same-thesis cooling period). **HOLD is the default and correct outcome when nothing clears every gate — it is not a failure of the "trade" stance, and gates are never to be loosened in-session just to manufacture a trade.** |
| Sector pause rules | **RETIRED** — ignore consecutive loss counts entirely |
| CAUTION / OFFENSIVE regime | **RETIRED** — BTC vs MA does not affect sizing or entries |
| DXY filter | **NOT in strategy** — do not apply |
| Per-position size cap | **None** — size to conviction, up to 100% equity |
| Leverage | Normal tool — 2x available; always pair with a stop |

### Trade Idea Format

For each idea include:
- **Catalyst** (what's driving it — must be <6h old for day trades)
- **Entry** (market for speed; limit if precise level matters)
- **Stop:** `trailing_stop`, `trail_percent: 2.5` (default all new trades); 7 for binary-catalyst events only
- **T1** (entry +3%) and **T2** (entry +5%) — both defined before entry
- **R:R** — must be ≥1.2:1 at T1 vs 2.5% stop
- **Size** (% of equity or $ notional — sized to conviction, no arbitrary caps)
- **Kraken pair** confirmed via `kraken.sh assets SYM/USD`
- **Spread** confirmed ≤1% via `kraken.sh quote SYM/USD`

### Stop placement rule (MANDATORY)

Immediately after every buy fill: place `trailing_stop` at `trail_percent: 2.5`, GTC.
The trade is not complete until the stop is placed. No open unprotected positions.

### Banned phrases in research logs

These belong to the old Alpaca strategy — do not use them:
- "Sector X at N consecutive losses"
- "CAUTION mode" / "OFFENSIVE mode"
- "Size 25% in CAUTION"
- "DXY red flag"
- "BTC below 20-day MA → reduce sizing"
- "Alts sector PAUSED"
