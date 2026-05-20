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

## Alpaca Script Commands

`scripts/alpaca.sh` supports only: `account`, `positions`, `orders`

No `quote` or `order` subcommands exist. Use `curl` directly against `$ALPACA_ENDPOINT`
for quotes or placing orders.

`ALPACA_CRYPTO_DATA_ENDPOINT` is not set in this environment.

## Kraken Script Commands (migration target)

`scripts/kraken.sh` is a drop-in replacement for `alpaca.sh` targeting the Kraken spot API.

Required env vars: `KRAKEN_API_KEY` and `KRAKEN_PRIVATE_KEY` (base64-encoded private key
from Kraken API settings).

Subcommands: `account`, `positions`, `orders`, `quote SYM/USD`, `assets [SYM/USD]`,
`order '{json}'`, `close SYM/USD`, `cancel TXID`

**Key differences from Alpaca:**
- **Trailing stops are natively supported** — use `"type":"trailing_stop"` with
  `"trail_percent":"3"` in the order JSON (e.g. 3% trailing stop).
- Symbols use the same `ETH/USD` / `BTC/USD` format; `BTC/USD` is auto-translated
  to `XBTUSD` internally.
- ETC/USD and a much wider alt universe are available.
- No paper trading environment — all orders execute against live funds.
- Order IDs are called `txid` (not UUID); use txid for `cancel`.

Order JSON is Alpaca-compatible. Trailing stop example:
```json
{"symbol":"ETH/USD","qty":"0.038882","side":"sell","type":"trailing_stop","trail_percent":"3","time_in_force":"gtc"}
```

## Current Strategy Profile

Aggressive profile (activated 2026-05-10). See `memory/TRADING-STRATEGY.md`.
Key parameters: max 65% per position, 95% total deployed, default stance = TRADE,
stop = 5% fixed stop-limit (trailing_stop not supported for crypto on Alpaca),
hold gate = BTC down >8% in 24h.
