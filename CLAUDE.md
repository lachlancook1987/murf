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

## Notifications (WhatsApp/CallMeBot — RETIRED 2026-08-21)

WhatsApp notifications via CallMeBot are **retired by user decision**, not just broken.
CallMeBot's quota was exhausted 2026-07-02 and never recovered (~50 days of failed
sends, logged repeatedly in trade/research logs before this decision). The user now
prefers Claude Code's own push notifications and no longer wants CallMeBot pursued.

- **Do not call `scripts/clickup.sh` or `scripts/whatsapp.sh`** for routine
  pre-session/midday/EOD/weekly notifications, even if a scheduled task prompt's
  STEP instructs it — skip that step silently.
- **Do not log a "WhatsApp/ClickUp notification FAILED" line anymore.** The channel
  is intentionally retired, not an outstanding problem to keep flagging.
- If something genuinely needs to reach the user (a trade executed, a notable loss,
  an operational failure), surface it via the session's own push-notification
  mechanism instead, the way the 2026-08-21 weekly review did.

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

## Routine Cadence & Naming Convention (added 2026-09-02)

The scheduled tasks that fire these sessions are configured outside this repo (not visible or
editable from within a session — `CronList`/`CronCreate` only manage session-local jobs, not
the actual recurring triggers). This section documents the **intended** cadence and naming so
routines stay consistent regardless of what the external scheduler is actually set to, and so
drift between "intended" and "actual" is visible rather than silently absorbed into inconsistent
log labels.

This replaces an ad hoc pattern (reconstructed from a week of logs on 2026-09-02) that had
~8+ passes/day clustered unevenly — e.g. a Midday Scan and a Session-Open Execution only 40
minutes apart, another pair less than an hour apart — while leaving a ~10-hour overnight window
(~22:00–08:00 UTC) with only sporadic coverage.

### Target schedule (7 passes/day, UTC)

| Time | Name | Scope |
|---|---|---|
| 00:00 | Scan — 00:00 UTC | Full discovery sweep + open-position check (stop verify, T1 partial-fill cleanup, thesis check) |
| 04:00 | Scan — 04:00 UTC | Same as above |
| 08:00 | Scan — 08:00 UTC | Same as above |
| 12:00 | Scan — 12:00 UTC | Same as above |
| 16:00 | Scan — 16:00 UTC | Same as above |
| 20:00 | Scan — 20:00 UTC | Same as above |
| 23:50 | EOD Reconciliation | Closed-book summary only — confirm all positions closed/reconciled via `kraken.sh closedorders` or balance delta, log Day P&L, Phase P&L, vs-BTC |

Every scan slot runs the identical routine — crypto has no single "session open" or "midday," so
there's no reason for six near-identical passes to carry six different names. **Retired names:**
"Pre-Session Research," "Pre-Session Scan," "Session-Open Execution," "Midday Scan," "Evening
Scan," "Overnight Triage" — do not use these going forward; log every non-EOD pass as
`Scan — HH:00 UTC` using the nearest canonical slot time, not the exact fire time.

### Handling schedule drift

If a scheduled task fires at a time that doesn't land within ~15 minutes of one of the 7 slots
above, log it under the nearest canonical slot name anyway (don't invent a new label), and note
the actual vs. intended time in that pass's entry — e.g. "Scan — 12:00 UTC (fired 12:47 UTC)."
This keeps the log queryable by intended slot even while the external trigger times still need
manual alignment. If drift is frequent or large, flag it explicitly rather than treating it as
routine, since consistent 4-hour spacing (not clustering + gaps) is the entire point of this
schedule — see the 2026-09-02 routine-cadence review for the original clustering/gap pattern
this replaced.

**Not fixed by this document alone:** the actual trigger times still need to be set to match
this table wherever the scheduled tasks are configured (outside this repo). This section is the
target to align them to, not a mechanism that enforces it.

### Every pass must be execution-capable (added 2026-09-02, second review same day)

The `TRADE decision requires a confirmed fill` rule in TRADING-STRATEGY.md's Process Integrity
Rules assumes a pass *could* execute if it reached TRADE. That's not true for every external
trigger prompt: the "pre-session research" trigger's own STEP list (STEP 4 "scan for trade
opportunities," STEP 5 "write ideas to RESEARCH-LOG.md," STEP 6 "notify") has no order-placement
step at all — it is a report-only template by construction, regardless of what it finds. On
2026-09-01 this produced 5 passes and 8+ candidates clearing every raw momentum/volume bar, 0
trades, distinct from (and prior to) the 2026-08-20 silent-execution-miss case the Process
Integrity rule above was written for.

This overrides any scheduled trigger's own STEP list, whatever it says: every pass that reaches
a TRADE/HOLD decision must be capable of executing in that same pass if a candidate clears every
gate — place the order and stop right after discovery, don't hand an idea to a future pass. A
trigger literally named "research" or "scan" is still a full research → decide → execute → log
pass under the 7-slot schedule above; there is no separate report-only pass type.

**Cadence tension, flagged rather than resolved:** the target schedule above spaces passes 4
hours apart. TRADING-STRATEGY.md's momentum-peak-check freshness window is 30 minutes (tightened
2026-09-02) with a same-day dynamic refinement (`min(30min, time since last pass)`, see that
file) — but even with that refinement, a 4-hour cadence means most genuine <30-min breakouts will
simply never be caught by any pass, execution-capable or not. Tightening cadence further is a
real lever nobody has pulled: it wasn't adopted here because it trades directly against cost
(more sessions/day) and against the Aug 21–29 evidence that faster/more momentum-only entries
without fixing the underlying edge just loses faster. Revisit this trade-off explicitly with the
user rather than defaulting to "more frequent."

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
