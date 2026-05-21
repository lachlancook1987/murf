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

## Primary Broker: Kraken

All new trading uses `scripts/kraken.sh`. See Kraken Script Commands below.
Alpaca is legacy — one residual BTC position remains open with a stop, no new Alpaca trades.

## Kraken Script Commands

`scripts/kraken.sh` mirrors the full `alpaca.sh` interface plus extra subcommands:

```
account | positions | orders | quote SYM/USD | assets [SYM/USD]
order '{json}' | close SYM/USD | cancel ORDER_ID | replace ORDER_ID '{json}'
```

Required env vars: `KRAKEN_API_KEY`, `KRAKEN_PRIVATE_KEY` (base64-encoded private key).

**Order JSON format is identical to Alpaca** — the script translates internally:

| Alpaca `type`    | Kraken `ordertype`   | Notes |
|------------------|----------------------|-------|
| `market`         | `market`             | |
| `limit`          | `limit`              | needs `"price"` |
| `stop_limit`     | `stop-loss-limit`    | needs `"stop_price"` + `"limit_price"` |
| `stop`           | `stop-loss`          | needs `"stop_price"` |
| `trailing_stop`  | `trailing-stop`      | needs `"trail_percent"` — **supported natively** |

Symbol format is the same: `ETH/USD`, `BTC/USD`, `SOL/USD`.
`replace ORDER_ID '{json}'` = cancel + new order (Kraken has no PATCH endpoint).
`positions` synthesises holdings from Balance + live Ticker (no avg entry price —
use TRADE-LOG.md for that).

## Current Strategy Profile

**Kraken** (primary): High-frequency, full universe, 2× leverage, trailing stops native.
No regime filter, no sector pauses, no trade cap. See `memory/TRADING-STRATEGY.md` — Kraken Profile.

**Alpaca** (legacy/wind-down): One residual BTC position with stop `a2b44cf9`.
No new Alpaca trades. Monitor stop only.
