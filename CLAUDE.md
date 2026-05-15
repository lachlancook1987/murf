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

## Notifications (WhatsApp via CallMeBot)

`scripts/clickup.sh` now delegates to `scripts/whatsapp.sh` — all existing routine
calls to `scripts/clickup.sh` continue to work unchanged.

Required env vars: `WHATSAPP_PHONE` (international format, no `+`, e.g. `447911123456`)
and `WHATSAPP_APIKEY` (received from CallMeBot on first activation).

## Alpaca Script Commands

`scripts/alpaca.sh` supports only: `account`, `positions`, `orders`

No `quote` or `order` subcommands exist. Use `curl` directly against `$ALPACA_ENDPOINT`
for quotes or placing orders.

`ALPACA_CRYPTO_DATA_ENDPOINT` is not set in this environment.

## Current Strategy Profile

Aggressive profile (activated 2026-05-10). See `memory/TRADING-STRATEGY.md`.
Key parameters: max 65% per position, 95% total deployed, default stance = TRADE,
stop = 5% fixed stop-limit (trailing_stop not supported for crypto on Alpaca),
hold gate = BTC down >8% in 24h.
