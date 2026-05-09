# Research Log

<!-- Pre-session research entries appended below, newest last -->

---

## 2026-05-04 — Pre-Session Research

### Account Snapshot
| Field | Value |
|---|---|
| Equity | $100,000 |
| Cash | $100,000 |
| Buying Power | $200,000 (2× margin) |
| Open Positions | None |
| Open Orders | None |
| Account Status | ACTIVE (paper — PA3GA9F7N5EE) |

*First session — clean slate.*

---

### Market Context

| Asset/Indicator | Value | Note |
|---|---|---|
| BTC price | ~$79,000–80,000 | Flat 24h (range -3% to +2.6% across exchanges) |
| ETH price | ~$2,330–2,380 | +1–3% 24h |
| BTC Dominance | ~58–60% | Slight recent decrease; CoinMarketCap: 60.4% |
| Fear & Greed | 47 (Neutral) | 3-month high from low of 12; recovering sentiment |
| BTC Funding Rate | +0.01%/8h | Neutral; longs paying shorts, not overheated |
| DXY | ~98.2 | Slight daily gains (+0.05–0.23%); mild crypto headwind |
| S&P 500 Futures | ~7,265 (+0.11%) | Near all-time highs; macro neutral-to-positive |

**BTC 20-day MA:** Estimated ~$80,000–82,000 (recent 20-day range $78–85K). BTC sitting at lower end — borderline.

---

### Regime Filter (STEP 4)

- BTC 24h change: Flat (~0%, not down >5%) → gate **NOT triggered**
- BTC vs. 20-day MA: At or slightly below estimated MA → **DEFENSIVE MODE**
- Funding: +0.01%/8h → neutral (no overheated long signal)
- **Mode: DEFENSIVE — BTC/ETH only, reduce position sizes 50%**

---

### Key Catalysts

**Bullish:**
- US spot Bitcoin ETFs: $2B+ net inflows over 9 days through Apr 24; absorbing supply ~9× faster than mining rate
- Strategy (MicroStrategy) added 34,164 BTC ($2.54B) → 815,061 BTC total (3.9% of supply); free float tightening
- Ethereum ETF single-day inflow: $101M (May 1); Bitcoin ETF same day: $630M
- Ethereum Glamsterdam upgrade upcoming — DeFi/L2 narrative strong ($40B TVL)
- Solana ecosystem: Schwab Crypto™ launched Apr 20; GSR BESO ETF with SOL staking
- Fear & Greed rebounding from extreme fear (12) → neutral (47) — sentiment recovery

**Bearish/Risk:**
- DXY ~98.2 and slightly rising — historical inverse correlation with crypto
- BTC struggling to reclaim $82K+ (200-day EMA reported at $82,228)
- Lagrange Labs (LA) unlock today: 11.45M tokens (~$1.59M, 5.94% of mcap) — sell pressure risk on LA
- Babylon (BABY) team/investor unlock May 10 — watch for pre-unlock dumps

---

### Trade Ideas (DEFENSIVE mode — BTC/ETH only)

**Idea 1 — BTC Long on Dip to Support**
- Catalyst: ETF inflows sustained + Strategy accumulation + Fear→Neutral recovery
- Entry: $77,500–78,500 (pullback to consolidation base)
- Stop: $74,800 (~4.5% risk from mid-entry)
- Target 1: $82,500 (200-day EMA); Target 2: $85,000
- Size: ~$10,000 notional (10% equity, half of normal 20% max)
- R:R: ~1.5:1 (T1) / ~2.2:1 (T2)
- Note: Do NOT chase — only enter on pullback. BTC must hold $77K.

**Idea 2 — ETH Long on Glamsterdam Catalyst**
- Catalyst: Upcoming Glamsterdam upgrade + ETF inflows ($101M single day May 1)
- Entry: $2,250–2,300 (pullback to support)
- Stop: $2,130 (~6% risk from mid-entry)
- Target 1: $2,550; Target 2: $2,750
- Size: ~$8,000 notional (8% equity, reduced for defensive mode)
- R:R: ~1.9:1 (T1) / ~2.7:1 (T2)
- Note: Verify upgrade date before entry.

**Idea 3 — Offensive Trigger Watch**
- If BTC closes 2 consecutive days above $82,500 → switch to offensive mode
- Then expand to SOL, AVAX, full position sizes
- Confirm: ETF inflows continue + DXY rolls below 97

---

### Risk Factors
1. BTC at/below 20-day MA → momentum failure risk on any long
2. DXY slightly rising — watch 99+ as red flag
3. LA unlock today (5.94% mcap) — minor sentiment noise
4. BABY unlock May 10 — avoid BABY longs this week
5. S&P 500 at ATH — any risk-off shock amplified in crypto
6. One Perplexity source cited BTC $118,838 (stale/error) — consensus $79-80K used

---

### Decision: **HOLD**

First session, clean slate. Defensive mode active. No market entries — wait for defined pullbacks or upside confirmation.

**Watch levels:**
- BTC long trigger: $77,500–78,500 pullback OR breakout above $82,500
- ETH long trigger: $2,250–2,300 pullback
- Offensive mode switch: BTC 2 closes above $82,500

---

## 2026-05-09 — Pre-Session Research

### Account Snapshot
| Field | Value |
|---|---|
| Equity | $56.21 |
| Cash | $0 |
| Buying Power | $0 |
| Open Positions | 0.0007 BTC/USD @ avg $80,245.40 (current $80,300.37, unrealized P&L +$0.04 / +0.07%) |
| Open Orders | None |
| Account Status | ACTIVE (acct 251041174) |

> Note: Account fully deployed — no cash to enter new positions. Script fix: alpaca.sh updated to use /v2/ API path (was returning "endpoint not found").

---

### Market Context

| Asset/Indicator | Value | Change / Note |
|---|---|---|
| BTC price | ~$80,300 | +0.6% 24h; range $79,200–$80,700 |
| ETH price | ~$2,315 | +1.5% avg 24h; range $2,265–$2,323 |
| BTC Dominance | ~59% | Slight decrease from prior ~60%; alts marginally gaining |
| Fear & Greed | 38 (Fear) | ↓ from 47 (Neutral) last session — sentiment deteriorating |
| BTC Funding Rate | -0.003% to -0.005%/8h | ⚠ NEGATIVE — shifted from +0.01% last session; shorts pay longs |
| DXY | ~97.9 | Softening (-0.15% session, down ~0.9% past month) — mild crypto tailwind |
| S&P 500 Futures (ESM6) | 7,420 (+0.78%) | Risk-on macro; near recent highs |

**BTC 20-day MA:** Estimated ~$80,000–82,000 (consistent with prior session). BTC at $80,300 — borderline / at-MA. Defensive mode posture maintained.

---

### Key Catalysts

**Bullish:**
- Fed pause-to-cut expectations + softening DXY → risk-asset reallocation tailwind
- BTC spot demand vs perp shorts: funding deeply negative means market is net short on perps — squeeze potential if BTC pushes above $82K
- LINK +11.5% 24h: 30 wallets withdrew 6.26M LINK ($117M) since Oct 2025 — accumulation
- AI/Bittensor narrative: TAO +87% (1m), RENDER +31%, FET +60% — sector rotation into AI crypto
- BTC technical: Broke $78K resistance; short gamma clustering at $82K (Bitfinex) adds buy pressure if reclaimed
- ETH technicals: holding $2,265 support, ETF inflows continue

**Bearish / Risk:**
- Fear & Greed at 38 (Fear) — below 47 of prior session; strategy says no trading during extreme fear (<15), but 38 is in caution zone
- Funding rate NEGATIVE: Market leaning bearish on perps (though contrarian upside squeeze possible)
- RAIN token unlock May 10: $377.3M (50.28B tokens = **50.28% of supply**) — massive dilution; avoid RAIN entirely
- APT unlock May 12: $102M (~11.3M tokens for contributors/investors)
- BASED unlock May 11: $5M (20% supply)
- BTC RSI 53 (neutral), MACD mixed — no clean breakout confirmation yet

---

### Regime Filter (STEP 4)

- BTC 24h change: +0.6% → **gate NOT triggered** (not down >5%)
- BTC vs. 20-day MA: At or slightly below ~$80–82K MA range → **DEFENSIVE MODE** (same as prior session)
- Funding: NEGATIVE → offensive mode **not** unlocked (requires neutral/positive funding)
- F&G: 38 (Fear) → caution, but above extreme fear threshold (15)
- **Mode: DEFENSIVE — BTC/ETH only, 50% position sizes**

---

### Trade Ideas (Theoretical — $0 cash currently)

**Idea 1 — BTC Long on Dip to $78–79K Support**
- Catalyst: Negative funding (contrarian squeeze setup) + ETF accumulation + softening DXY
- Entry: $78,000–79,000 (retest of break-out base)
- Stop: $76,200 (~3.5% below mid-entry)
- Target 1: $82,500 (short gamma wall, 200-day EMA zone); Target 2: $85,000
- Size: ~$11 notional (20% of equity, half-size defensive = $5.60 if funded) — not tradeable at current equity
- R:R: ~2.0:1 (T1) / ~3.4:1 (T2)

**Idea 2 — ETH Long on Glamsterdam + Dip**
- Catalyst: Upcoming Glamsterdam upgrade + ETF inflows + ETH outperforming on relative basis
- Entry: $2,200–2,250 (pullback to demand zone)
- Stop: $2,090 (~5% risk from mid)
- Target 1: $2,550; Target 2: $2,750
- R:R: ~1.7:1 (T1) / ~2.7:1 (T2)

**Idea 3 — AI Crypto Watchlist (Offensive Mode Only)**
- TAO / RENDER / FET: AI narrative extremely strong (TAO +87% 1m). Enter only if BTC reclaims 20-day MA and funding returns positive.
- NOT eligible in current defensive mode.

---

### Risk Factors
1. Account fully depleted ($0 cash, $0 buying power) — no new entries possible today
2. Funding rate regime shift: +0.01% → -0.005% signals perp market turned bearish
3. RAIN unlock May 10 ($377M / 50% supply) — systemic sell pressure on RAIN, potential contagion to alts
4. BTC still borderline vs. 20-day MA — failure to hold $79K would deepen defensive posture
5. F&G declined from 47 → 38 in one session — sentiment fragile; watch for further deterioration toward extreme fear
6. APT unlock May 12 ($102M) — could weigh on L1 sentiment

---

### Decision: **HOLD**

Account has zero buying power — no entries possible regardless of regime. Maintain existing 0.0007 BTC position (at breakeven, minor profit). Await account reload to execute any ideas.

**Watch levels:**
- BTC hold above $79,000 → maintain long bias; break below → reassess
- BTC 2 closes above $82,500 + positive funding → offensive mode switch
- ETH long trigger: $2,200–2,250 pullback (when funded)
- Monitor: RAIN (avoid), APT (avoid into May 12 unlock)
