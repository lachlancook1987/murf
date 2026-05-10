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

## 2026-05-10 — Pre-Session Research

### Account Snapshot
| Field | Value |
|---|---|
| Equity | $139.87 (live account #251041174) |
| Cash | $91.83 |
| Buying Power | $91.83 |
| Long Market Value | $48.04 |
| Account Status | ACTIVE (crypto enabled) |

**Note:** `ALPACA_ENDPOINT` missing `/v2` — wrapper script returned "endpoint not found." Data retrieved via direct API calls to `https://api.alpaca.markets/v2/`. Fix env var for next session.

**Open Positions:**
| Symbol | Qty | Avg Entry | Current | Unrealized P&L | Stop |
|---|---|---|---|---|---|
| ETHUSD | 0.0085785 | $2,314.90 | $2,326.93 | +$0.10 (+0.52%) | $2,199.16 (stop_limit) |
| SOLUSD | 0.29875 | $93.35 | $93.99 | +$0.19 (+0.69%) | $88.68 (stop_limit) |

**Recent History:** BTC exited May 9 (sold 0.00105 @ $80,221 + 0.0007 @ $80,292, both dashboard/API). ETH and SOL entered May 9.

---

### Market Context
| Asset/Indicator | Value | Note |
|---|---|---|
| BTC price | ~$80,612 | +0.42% 24h; range $80,125–81,065 |
| ETH price | ~$2,329 | +0.8–0.9% 24h; range $2,300–2,338 |
| SOL price | ~$93.99 | +1.3% 24h (from position data); Polymarket 100% ≥$90 |
| BTC Dominance | ~58–60% | CoinMarketCap ~60.25%; flat week-on-week |
| Fear & Greed | 47–49 (Neutral) | Unchanged from last session; recovering from 12 (extreme fear) |
| BTC Funding Rate | ~+0.01%/8h avg | Near zero across exchanges (neutral, not overheated) |
| DXY | ~97.56–100.14 | -0.35–0.42% today — FALLING; bullish tailwind for crypto |
| S&P 500 Futures | 7,420.50 (+0.78%) | Strong macro backdrop; risk-on |

**BTC 20-day MA estimate:** ~$80,000–82,000 (BTC at lower boundary → DEFENSIVE MODE maintained)

---

### BTC Regime Filter (STEP 4)
- BTC 24h change: +0.42% → gate NOT triggered (not down >5%)
- BTC vs. 20-day MA: ~$80,612 vs est. $80–82K → **borderline, DEFENSIVE MODE maintained**
- Funding: ~+0.01%/8h → neutral
- **Mode: DEFENSIVE — BTC/ETH primary; SOL position held (existing, stops active)**

---

### Key Catalysts

**Bullish:**
- DXY falling -0.35–0.42% today → inverse correlation boost for crypto
- S&P 500 futures +0.78% → strong risk-on macro
- Ethereum Glamsterdam upgrade: targeted June 2026; gas limit 60M→200M, ~10K TPS, -78% gas fees — most significant upgrade since The Merge; $2,420 breakout = bull trigger; range $2,250–2,657 for May
- SOL momentum: trending up from $84 (May 4) → $94 today; Polymarket 100% chance ≥$90; Changelly avg $99.47 (max $106)
- AI crypto sector hot: TAO +87% monthly, RENDER +31%, FET +60% — rotation narrative
- ETF inflows remain steady (sustained from prior weeks)
- Arthur Hayes buying HYPE (26K+, $10M+) — institutional confidence signal

**Bearish/Risk:**
- RAIN token unlock today: 50.28B tokens, $377.3M (4.37% supply) — massive, avoid RAIN
- BABY (Babylon): investor/team unlock today (first 1/36th of schedule) — avoid BABY
- APT: $102M unlock May 12 — mid-week pressure
- SOL's DeFi inflow story weakening per BeInCrypto (declining ETF inflows into SOL products)
- BTC struggling to break $82,500 resistance decisively
- Some perplexity sources cited stale ATH data ($126K Oct 2025) — confirmed consensus $80,612 used

---

### Trade Ideas (DEFENSIVE mode)

**Idea 1 — Hold ETH Long (existing position)**
- Catalyst: Glamsterdam upgrade narrative building for June 2026; ETF inflows; DXY weakness
- Current: Long @ $2,314.90, stop $2,199.16 (risk: ~$0.99 on 0.0086 ETH = ~$0.10 max loss)
- Watch: Breakout above $2,420 → add or trail stop up to $2,280
- Target 1: $2,550; Target 2: $2,750
- Action: HOLD, no adjustment needed

**Idea 2 — Hold SOL Long (existing position)**
- Catalyst: Price momentum ($84→$94 in 10 days), Polymarket 100% ≥$90 bet
- Current: Long @ $93.35, stop $88.68 (risk: ~$1.39/unit × 0.2987 = ~$0.41 max loss)
- Watch: Break above $95 → trail stop to $90; target $99–106 (Changelly range)
- Action: HOLD, consider trailing stop if SOL > $95

**Idea 3 — Offensive Mode Trigger**
- Trigger: BTC closes 2 consecutive days above $82,500 + DXY <97
- Then: Consider BTC add, AI sector entry (TAO/RENDER/FET), full size (within 20% single / 80% total)
- Note: Account is small ($139.87); position sizing at 10-20% = $14–28 per trade

---

### Risk Factors
1. SOL already at ~20% of equity ($28.08/$139.87) — at max single position limit; no add
2. RAIN unlock today ($377.3M) — potential sentiment overhang on alts broadly
3. BABY unlock today — if BABY is held (not currently) do not enter
4. APT unlock May 12 — alt market headwind mid-week
5. BTC at 20-day MA boundary — failure to hold could trigger defensive de-risking
6. Wrapper script endpoint issue — direct API workaround used; fix ALPACA_ENDPOINT to include `/v2`

---

### Decision: **HOLD**

Both ETH and SOL positions are profitable with stops in place. Macro tailwinds (DXY down, SPX up, neutral funding) support continuation. Glamsterdam and SOL momentum catalysts intact. No new entries — SOL already at position size limit, cash is available but regime is defensive. Wait for BTC to confirm above $82,500 for offensive mode expansion.

**Watch levels:**
- ETH breakout trigger: $2,420 (add / trail stop)
- SOL trail stop trigger: $95 (trail stop → $90)
- Offensive mode switch: BTC 2 closes above $82,500 + DXY <97
