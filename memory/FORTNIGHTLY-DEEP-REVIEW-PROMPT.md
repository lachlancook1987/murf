# Fortnightly Deep Strategy Review — Scheduled Task Setup

*Added 2026-09-27, following the first deep-review session (probe-batch deadlock fix, T1
stop-tightening rung, dated-catalyst query, free RSS cross-check, full 106-trade R:R history
review). This file exists because the task tool available inside a session (`CronCreate`) is
session-scoped and auto-expires after 7 days — unsuitable for a fortnightly cadence meant to run
indefinitely. This must be set up as a platform-level scheduled task through the Claude Code on
the web scheduling UI (the same mechanism that runs the hourly routine), not from inside a
session. This file is the durable record of what to configure, so it survives independently of
any one conversation.*

## Setup

**Cadence:** `0 8 * * 5` (UTC) — every Friday at 08:00 UTC (~6pm AEST). The prompt below
self-gates to every second Friday (see Step 0), so the platform-level cron itself just needs to
fire weekly; the fortnightly cadence is enforced inside the prompt, not by the cron expression
(standard 5-field cron has no native "every N weeks" primitive).

**Known caveat:** 08:00 UTC is ~6pm AEST but will read as ~7pm AEDT once daylight saving starts
(first Sunday of October in most of Australia) — the same imprecision the existing hourly
routine's Friday 07:00 UTC weekly-review-mode pass already has (documented in CLAUDE.md as
"≈5pm AEST" without seasonal adjustment). Left as-is for consistency; revisit only if the drift
becomes a real problem.

**Branch/repo:** same as the hourly routine — develop on a fresh `claude/<name>` branch per firing,
push memory/ changes to `main` via the mem-sync pattern in `CLAUDE.md`.

## The scheduled task prompt

```
You are running a deep, periodic strategy audit of this crypto trading bot — not a routine
hourly pass. Take as much time as needed; thoroughness matters more than speed here.

STEP 0 — Fortnightly gate check (do this before anything else):
  WEEK=$(date -u +%V)
  If WEEK is ODD, this is an off-week. Log one line to memory/RESEARCH-LOG.md
  ("Fortnightly deep review — off-week (ISO week $WEEK odd), skipped") and exit. Do not push a
  notification for an off-week skip. If WEEK is EVEN, proceed with the full review below.

STEP 1 — Context: Read memory/TRADING-STRATEGY.md, CLAUDE.md, and the tail of
memory/WEEKLY-REVIEW.md for what's changed since the last deep review (check for a prior
"Fortnightly Deep Review" entry there or in RESEARCH-LOG.md to find the date to review from).

STEP 2 — Mine the full historical trade record: memory/TRADE-LOG.md and memory/RESEARCH-LOG.md,
covering everything since the last deep review (or all-time if this is the first one). If the
relevant log range is large, fan out parallel agents to extract trade-level R:R/outcome data and
gate-rejection reasons, the way the 2026-09-27 session did (split by line ranges, each agent
returns a structured table, synthesize yourself afterward — do not delegate the synthesis or the
final judgment calls to a subagent).

STEP 3 — Ask, with real data, not intuition:
  - Is any single gate disproportionately blocking clean setups (a gate-attribution tally)?
  - Has any change made at the last deep review or since actually moved a real metric (win rate,
    expectancy, trade frequency) — compare before/after with actual numbers, not assumption.
  - Is the probe-batch mechanism (if still active) progressing? How many taken, what's the
    running win rate on them?
  - Any new structural/mechanical bugs (like the Kraken T1-order balance conflict found
    2026-09-25, or the win-rate kill switch's original deadlock found 2026-09-27)?
  - Is catalyst-detection (Perplexity dated-query, RSS cross-check) actually converting more
    near-misses into real trades, or still mostly returning NO CATALYST?

STEP 4 — Write findings to memory/WEEKLY-REVIEW.md under a new dated "Fortnightly Deep Review"
entry — the data, the reasoning, and any recommendation, whether or not it's actioned this pass.

STEP 5 — Decide autonomy per recommendation, using this test:
  AUTONOMOUS (implement directly, log it, no notification needed beyond the routine's normal
  Step 8 rules):
    - Bug documentation with no behavior change (e.g. discovering a mechanism doesn't work).
    - A status-line update to an existing mechanism (e.g. probe progress, kill-switch win rate).
    - A small calibration tweak to an already-established, already-approved mechanism, in the
      same direction and spirit it was designed for (e.g. nudging a freshness window by a few
      minutes based on data, adjusting a query template's wording for clarity) — NOT a change
      that alters how much risk a trade can take or how much capital it can use.
  REQUIRES USER CONFIRMATION FIRST (write the recommendation + supporting data to
  WEEKLY-REVIEW.md, push a notification summarizing it, do NOT implement until the user responds
  in a future session):
    - Any change to R:R floors, position sizing caps, or leverage rules.
    - Any new paid service, subscription, or external API integration (check current pricing
      live before even proposing one, the way the CryptoPanic evaluation did on 2026-09-27 —
      don't propose something disproportionate to account size).
    - Any change that loosens a gate specifically added in response to a prior loss event.
    - Any structural redesign of a core mechanism (stop-loss design, kill-switch logic, entry
      order type).
    - Anything where you are not confident which bucket it belongs in — default to this bucket.

STEP 6 — Commit and push via the standard mem-sync pattern in CLAUDE.md. Before pushing, git
fetch origin main and diff-check per CLAUDE.md's concurrent-session guidance — this fires at the
same time as an hourly pass could be running, so the same race-condition care applies.
```

## Design notes (why it looks like this)

- **Self-gating fortnightly, not a cron trick:** cron's day-of-week field can't express "every
  second Friday" natively, and workarounds based on day-of-month drift against real fortnights
  because months aren't a fixed number of weeks. An ISO-week-parity check inside the prompt is
  deterministic, easy to verify by eye from any date, and doesn't depend on the platform's cron
  engine supporting anything unusual.
- **Autonomy test mirrors what actually happened on 2026-09-27:** the probe-batch fix, the T1
  stop-tightening rung, and the catalyst-query rewording all got implemented after being proposed
  and discussed — none were auto-applied. The R:R loosening question was investigated in full but
  explicitly *not* auto-applied in the loosening direction; only the mechanical stop-vs-target fix
  (itself a structural correction, arguably borderline) went in, and even that was confirmed with
  the user first. The test above tries to encode that same bar for a fully unattended run: real
  money-behavior changes wait for a human, mechanical bookkeeping doesn't need to.
- **Parallel-agent mining, but not parallel-agent judgment:** today's session used agents to
  extract data at scale (gate-attribution tallies, trade-by-trade R:R history) but kept the
  actual synthesis, the "so what does this mean" reasoning, and every implementation decision in
  the main thread. The prompt repeats that split deliberately — subagents are for volume, not for
  conclusions that affect real capital.
