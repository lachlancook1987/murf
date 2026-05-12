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

## 2026-05-12 — Pre-Session Research

### Account Snapshot

| Field | Value |
|---|---|
| Equity | $141.75 |
| Cash | $1.95 |
| Buying Power | $1.95 |
| Long Market Value | $139.80 |
| Account | ACTIVE (paper) |

**Open Positions:**

| Symbol | Qty | Avg Entry | Current | MV | Unrealized P&L | Stop |
|---|---|---|---|---|---|---|
| BTCUSD | 0.000588525 | $81,645.25 | $81,456 | $47.94 | -$0.11 (-0.23%) | **NONE** ⚠️ |
| ETHUSD | 0.0085785 | $2,314.90 | $2,330 | $19.99 | +$0.13 (+0.65%) | $2,199.16 |
| SOLUSD | 0.73785075 | $95.29 | $97.41 | $71.87 | +$1.56 (+2.2%) | $91.79 |

**Active Orders:** ETH stop-limit sell (stop $2,199.16 / limit $2,188.16); SOL stop-limit sell (stop $91.79 / limit $91.33). **BTC has NO active stop-loss — critical risk gap.**

*Note: ALPACA_ENDPOINT missing /v2 path prefix; script hit wrong endpoint. Used direct /v2/ calls successfully.*

---

### Market Context

| Asset/Indicator | Value | Note |
|---|---|---|
| BTC price | ~$81,456 (Alpaca live) | -0.23% intraday; 24h range $80,274–$82,450 |
| ETH price | ~$2,330–$2,339 | Mixed -0.5% to +0.4% 24h |
| BTC Dominance | ~58.8% avg | CoinStats 57.52%, CoinMarketCap 60.0% |
| Fear & Greed | 48–50 (Neutral) | Up from 12 (30 days ago); stable |
| BTC Funding Rate | +0.005%–+0.01%/8h | MacroMicro avg 0.0054%; neutral, not overheated |
| DXY | ~97.9–100.1 | Down ~3.4–3.9% YTD; weak USD = crypto tailwind |
| S&P 500 Futures | ~7,419 (May 8 close) | Futures -0.03% pre-market; near highs |

**BTC 20-day MA:** Estimated ~$80,000–$82,000. BTC at $81,456 is at the borderline — insufficient to confirm move above MA. Defensive mode remains active.

---

### Regime Filter (STEP 4)

- BTC 24h change: ~-0.23% → gate **NOT triggered** (not down >5%)
- BTC vs. 20-day MA: ~$81,456 vs. ~$80,000–$82,000 → **borderline/at MA**
- Funding rate: +0.005–0.01%/8h → **neutral** (not overheated)
- **Mode: DEFENSIVE — existing BTC/ETH/SOL positions managed; no new alt entries**

---

### Key Catalysts

**Bullish:**
- Solana ETFs: $39.23M net inflows last week; SOL up 15% recently to ~$97 — strong institutional demand for our SOL position
- Bitmine (institutional): Purchased 101,745 ETH ($240M) — large buyer supporting ETH floor
- Hyperliquid (HYPE) ETF: 21Shares listing spot THYP on Nasdaq today — ETF narrative strengthening
- DXY declining YTD (-3.4–3.9%) — USD weakness historically supportive of crypto
- Fear & Greed recovery from extreme fear (12) to neutral (48) — sentiment improved

**Bearish / Watch:**
- AVAX unlock today: 1.67M tokens (~$17.25M, 0.31% of supply) at 12:00 AM UTC — minor sell pressure (we hold no AVAX)
- APT unlock today: 11.31M tokens (~$13.23M, 0.67% of supply) at 6:00 PM UTC — minor noise (we hold no APT)
- Starknet (STRK) unlock May 15: 127M tokens ($6.62M), 4.05% supply — watch if holding
- ARB unlock May 16: 92.65M tokens ($13.37M), 1.71% supply
- SOL Fear & Greed (token-level): "Greed" — elevated; possible near-term correction risk
- ETH trading below 20-day EMA (~$2,287–$2,361) — technical weakness

---

### Trade Ideas (DEFENSIVE mode — manage existing positions only)

**Idea 1 — BTC: Add Stop-Loss Immediately**
- Action: Place stop-limit sell on BTC position (0.000588525 qty)
- Stop: $77,800 (~4.5% below $81,456); Limit: $77,500
- Rationale: BTC currently has zero downside protection — primary risk management action
- Note: This is maintenance, not a new entry

**Idea 2 — SOL: Trail Stop Higher**
- Current stop: $91.79 (buy avg $95.29, current $97.41)
- SOL momentum strong (ETF inflows, institutional), current stop protects ~3.7% below avg entry
- Consider raising stop to ~$93.50 (break-even buffer) if SOL holds above $97 into session
- Entry trigger for add: Not applicable (defensive mode); monitor for $98+ breakout
- R:R for stop trail: Locks in near break-even vs. leaving $3.50/SOL at risk

**Idea 3 — ETH: Hold + Monitor Bitmine Support**
- Bitmine's $240M ETH purchase creates institutional demand floor
- ETH stop at $2,199.16 gives ~5.6% room — appropriate for defensive mode
- If ETH reclaims $2,360 (20-day EMA) with volume → potential add at $2,320–$2,340 pullback
- Stop for add: $2,200; Target: $2,500; R:R ~1.7:1 — monitor only today, no new entry yet

---

### Risk Factors

1. **BTC has no stop-loss** — largest immediate risk; must place before session activity
2. SOL stop at $91.79 is below avg entry ($95.29) — in profit but stop could be trailed higher
3. ETH below 20-day EMA ($2,287–$2,361) — technical headwind despite Bitmine support
4. AVAX + APT unlocks today — broad alt sentiment pressure possible
5. DXY conflicting sources (97.9–100.1) — if reverses higher above 101, crypto headwind
6. Perplexity BTC analysis showed ~$92,673 (inconsistent with Alpaca's $81,456) — used Alpaca live price as ground truth; Perplexity data may be stale/mixed

---

### Decision: **HOLD + RISK MANAGEMENT**

Defensive mode active. No new entries. Priority action: place stop-loss on BTC position. Monitor SOL for stop trail opportunity. ETH hold with existing stop.

**Watch levels:**
- BTC stop-loss: Place at $77,800 / limit $77,500 (action required)
- SOL stop trail: Raise to $93.50 if SOL holds $97+ into session
- Offensive mode switch: BTC 2 consecutive closes above $82,500 + DXY holds below 100
