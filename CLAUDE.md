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

Kraken profile (activated 2026-05-21). See `memory/TRADING-STRATEGY.md`.
Key parameters: full alt universe, no position caps, up to 2x leverage,
multiple trades/day, trailing stops supported, crash gate = BTC down >20% in 24h.
