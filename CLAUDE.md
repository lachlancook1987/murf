# Claude Code — murf crypto bot

## Autonomous Operation (added 2026-09-02)

**This bot runs unattended.** The hourly routine fires on a schedule with nobody watching —
there is no human present to click "allow" on a permission prompt. Any tool call that would
stall waiting for interactive approval silently freezes the routine until someone happens to
open the session and approve it, which could be hours or days later.

- **Every tool this routine relies on must be pre-approved in `.claude/settings.json` on
  `main`**, not just approved once in a live session. A same-session approval can auto-persist
  to project settings (as happened with the `Artifact` tool, `permissions.allow: ["Artifact"]`,
  committed 2026-09-02), but always verify it actually landed in a commit on `main` — per the
  Git/Persistence section below, every session (including scheduled ones) starts from a fresh
  clone of `main`, so an approval that only exists in local/session state does not carry
  forward to the next hourly pass.
- If a future change to this routine introduces a new tool, script, or external call that could
  trigger a permission prompt (a new MCP server, a new destination for `Artifact` writes, a
  newly-added script), proactively add it to `.claude/settings.json`'s `permissions.allow` and
  commit it to `main` in the same pass — don't wait for it to stall a future run first.
- This is a standing operating constraint for this repo, independent of what any individual
  scheduled-task prompt says.

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

### Known bug: concurrent sessions can silently clobber each other's log entries (found 2026-09-02)

The mem-sync recipe above does `git checkout <session-branch> -- memory/` against a **fresh**
`origin/main` — this **replaces the memory files wholesale** with the session's own copy rather
than merging. If two or more instances of the hourly routine run concurrently, whichever
session's branch forked *before* another's push will overwrite it — the later session has no
record of the entry it's erasing, so this fails completely silently. This actually happened on
2026-09-02: at least three separate sessions, apparently all firing for the same real-time window
(labeled "12:00 UTC", "14:00 UTC", and "16:00 UTC") landed their mem-sync pushes on `main` within
minutes of each other, each wholesale-overwriting the last. Two rounds of the resulting data loss
were caught and manually recovered from git history (see the RESEARCH-LOG.md entries around this
date and the `b7c1550`/`0c76275` commits) — but only because sessions happened to notice `git
fetch` returning unexpected new commits before pushing. `memory/TRADE-LOG.md` was not affected
this time (all three concurrent passes were pure HOLD/no-execution), but the same race applies to
it, and a silently-dropped trade/position/order-ID entry there would be a real safety issue, not
just a lost research note.

**This is a scheduling/infrastructure problem** — three sessions firing for overlapping hours
within minutes of each other means the routine's trigger is not actually running as the single
hourly cadence CLAUDE.md's Routine Cadence section describes; something outside any session's
reach (the scheduler config, or duplicate/overlapping triggers) needs the user's attention. It is
not something a single session's code can fully fix, but every session can avoid making it worse:
**before pushing** in the mem-sync recipe, if `git fetch` on `origin/main` returns a commit you
did not expect (i.e. `origin/main` moved between your read and your push), **stop and diff**
before overwriting — check whether your `git checkout <branch> -- memory/` would delete content
that isn't in your own branch's history, recover it (as done here) if so, and flag the pattern to
the user via push notification rather than silently completing. A clean-looking diff on your own
session branch does not guarantee the push is safe; the risk is specifically that `origin/main`
advanced past your base while you worked.

## Position Watch Dashboard (added 2026-09-02)

A read-only status page for the user's own monitoring (originally set up for an always-on iMac
near their workstation): **https://claude.ai/code/artifact/576a1343-17bf-4818-85aa-b998a1007622**

It shows current phase P&L, cash, the open position (if any) with live-updating unrealized P&L/
stop/T1/T2, the last scan's decision, and the 8 most recent closed trades. It has no write access
to Kraken — display only, cannot place/modify/cancel orders.

**Every hourly pass must update its `state/bot` document** (via the Artifact tool's `write_db`
action against the URL above, `db_op: "set"`) whenever position state changes — a new fill, a
stop/T1 resize, a position close, or a new scan decision. At minimum, update `last_scan` and
`updated_at` every pass so the dashboard's "last updated" indicator stays honest; update
`position`, `cash_usd`, `phase_pnl_usd`/`phase_pnl_pct`, and append to `recent_closed` whenever
Step 3 or Step 4 changes them. Schema (single document at `state/bot`):

```json
{
  "updated_at": "ISO 8601 UTC timestamp of this write",
  "cash_usd": 0,
  "phase_pnl_usd": 0,
  "phase_pnl_pct": 0,
  "position": null,
  "last_scan": { "time_utc": "YYYY-MM-DD HH:00 UTC", "decision": "HOLD|TRADE", "summary": "..." },
  "recent_closed": [ { "pair": "SYM/USD", "entry": 0, "exit": 0, "pnl_pct": 0, "outcome": "win|loss", "opened": "YYYY-MM-DD", "closed": "YYYY-MM-DD", "reason": "trailing stop|T1 partial + trail|thesis break|..." } ]
}
```

`position` (null when flat) shape when open: `{ "pair", "entry_price", "current_price", "qty", "unrealized_pct", "unrealized_usd", "stop_percent", "t1_price", "t2_price", "catalyst" }`. Keep `recent_closed` to the 8 most recent (prepend new, drop oldest) rather than letting it grow unbounded. This is best-effort visibility for the user, not part of the trading logic — a missed dashboard update is not a trading error and doesn't need a push notification, just fix it next pass.

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

## Routine Cadence & Naming Convention (added 2026-09-02, consolidated same day — "single hourly routine")

**Current model: one consolidated routine, firing hourly, replaces six separate triggers.**
Pre-Session Research, Session-Open Execution, Midday Scan, Overnight Triage, Daily Summary, and
Weekly Review were previously six independently-scheduled prompts, each with its own copy of
overlapping logic (position checks, stop management) and — in Pre-Session Research's case — no
ability to execute at all. The platform enforces a minimum 1-hour repeat interval per routine,
which made a sub-hourly "Watch Pass" (see below, retained for reference) impractical to run as
its own trigger; consolidating into one routine that fires every hour turned that constraint into
the simpler fix: one routine, one clock, always capable of both position maintenance and new
entries, with EOD/weekly behavior as time-gated modes rather than separate triggers.

**Retired as separate triggers:** "Pre-Session Research," "Pre-Session Scan," "Session-Open
Execution," "Midday Scan," "Evening Scan," "Overnight Triage," "Daily Summary," "Weekly Review"
— do not recreate these as distinct scheduled tasks. One routine now covers all of it. Log every
pass as `Scan — HH:00 UTC` using the UTC hour of firing, regardless of what time of day it is.

### What the consolidated routine does every hour

1. **Position maintenance, always, before any new-entry research** — orphan-stop/orphan-T1-limit
   check, T1 partial-profit-take resize, progressive stop-tightening on runners, thesis-break
   exits, crash-gate check. This is the same job the old Midday/Overnight routines did, just now
   running hourly instead of at uneven, sometimes 5+ hour gaps.
2. **Research and execute** — full Kraken-native discovery sweep, Perplexity for context only,
   every entry gate in TRADING-STRATEGY.md, execute in the same pass if a candidate clears every
   gate. See "Every pass must be execution-capable" below — this is no longer a special override,
   it's just what the one routine does every time.
3. **EOD mode** (only on the 23:00 UTC pass) — also computes and appends an EOD Snapshot (Day
   P&L, Phase P&L, vs-BTC) to TRADE-LOG.md. This heading may only be used on this specific pass.
4. **Weekly Review mode** (only on the Friday 07:00 UTC pass, ≈5pm AEST) — also runs the full
   weekly stats/trade-quality review and appends to WEEKLY-REVIEW.md, updating TRADING-STRATEGY.md
   if the review warrants a rule change.

### Handling schedule drift

If the hourly trigger fires more than ~10 minutes off the hour, log it under the nearest hour
anyway (e.g. "Scan — 12:00 UTC (fired 12:14 UTC)") rather than inventing a new label. If drift
is frequent or large, flag it explicitly — hourly, not clustered/gapped, is the entire point.

**Not fixed by this document alone:** the actual trigger cadence still needs to be set to hourly
wherever the scheduled task is configured (outside this repo, outside what any tool in a session
can reach) — this section describes what the routine does once it fires, not how often it fires.

### Watch Pass — superseded by hourly consolidation, kept for reference (added 2026-09-02)

Before consolidation, a separate 15-20 minute "Watch Pass" trigger was designed to close the gap
between infrequent full scans (see prior versions of this file for the full spec: position
maintenance + a strict extreme-move tripwire). With the routine now firing hourly instead of
every 4+ hours, most of that gap is already closed, and the platform's 1-hour-per-routine minimum
makes a genuinely sub-hourly cadence impossible without multiple staggered triggers anyway. Not
pursued for now — revisit only if hourly coverage turns out to still be too sparse in practice
(e.g. a fast breakout consistently missed between hourly passes) and the added cost/complexity of
staggered triggers is worth it at that point. This is a live option, not a closed one.

### Every pass must be execution-capable

Every hourly pass that reaches a TRADE/HOLD decision must be capable of executing in that same
pass if a candidate clears every gate — place the order and stop right after discovery, don't
hand an idea to a future pass. This used to require an explicit override (Pre-Session Research's
old STEP list had no order-placement step at all — on 2026-09-01 this produced 5 passes and 8+
candidates clearing every raw momentum/volume bar, 0 trades). Consolidation removes the
report-only trigger entirely, so this is no longer a special case to guard against — it's just
what the one routine does.

**Cadence/freshness note:** TRADING-STRATEGY.md's momentum-peak-check freshness window is 30
minutes, with a dynamic refinement (`min(30min, time since last pass)`, see that file). At an
hourly cadence, that ceiling is now satisfied by construction on most passes — a real
improvement over the old 4+ hour gaps, though still not sub-30-minute coverage. Tightening
further (sub-hourly) was considered and not adopted, per the Watch Pass note above.

## Trading Framework — Kraken Research & Decision Rules

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
