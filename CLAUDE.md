# Claude Code — murf crypto bot

## CRITICAL: Memory File Persistence

Every session is a **fresh clone**. The remote's default branch (`claude/cool-noether-fh9dL`)
only has May 4 scaffolding data. All real, up-to-date memory lives on **`origin/main`**.

### At session START — always run this before reading any memory file:

```bash
git fetch origin main
git checkout origin/main -- memory/RESEARCH-LOG.md memory/TRADE-LOG.md memory/TRADING-STRATEGY.md
```

This overwrites the stale checkout with main's latest versions. Do this BEFORE STEP 1.

### At session END — after committing to the session branch, also push to main:

```bash
# Already committed to claude/<session-branch> per STEP 8
# Now also push memory files to main:
git fetch origin main
git checkout -b _mem-sync origin/main
git checkout HEAD -- memory/RESEARCH-LOG.md memory/TRADE-LOG.md
git add memory/
git commit -m "crypto session memory sync $DATE"
git push origin HEAD:main
git checkout <session-branch>
git branch -D _mem-sync
```

The STEP 8 instruction `git push origin main` only works when HEAD is on main.
Since sessions develop on `claude/*` branches, use the explicit sync above instead.

## Known Issues Fixed

- **2026-05-15**: Session branched off stale default branch (May 4), missed all May 9-11
  data on main. Fixed by restoring from origin/main before writing today's entries.
  Root cause: remote HEAD → cool-noether, not main. Each session must explicitly
  fetch from main as described above.

## Alpaca Script Commands

`scripts/alpaca.sh` supports: `account`, `positions`, `orders`  
No `quote` or `order` subcommands — use `curl` directly against `$ALPACA_ENDPOINT` for those.  
`ALPACA_CRYPTO_DATA_ENDPOINT` is NOT set in this environment.

## Current Strategy Profile

Aggressive (activated 2026-05-10). See `memory/TRADING-STRATEGY.md`.  
Key changes from original: max 65% per position, 95% deployed, default stance = TRADE,
stop = 5% trailing (fixed stop-limit fallback), hold gate = BTC down >8% (not >5%).
