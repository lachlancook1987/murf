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

## 2026-05-09 — Midday Scan Addendum

### Account Snapshot (midday)
| Field | Value |
|---|---|
| Equity | $139.76 |
| Cash | $119.79 |
| Long Market Value | $19.97 (ETH/USD) |
| Open Positions | 1 (ETH/USD) |

### Positions
| Pair | Qty | Entry | Current | Unrealized P&L | % |
|---|---|---|---|---|---|
| ETH/USD | 0.0085785 | $2,314.90 | $2,327.58 | +$0.11 | +0.55% |

### Open Orders
| Order ID | Type | Side | Pair | Stop | Limit | Status |
|---|---|---|---|---|---|---|
| ce339cc1 | stop_limit | sell | ETH/USD | $2,199.16 | $2,188.16 | active |

### Midday Decisions
- **Step 3 (Cut losers):** ETH at +0.55% — no cut (threshold: -10%). PASS.
- **Step 4 (Tighten stops):** +0.55% far below +25% threshold — no tighten. PASS.
- **Step 5 (Thesis check):** Glamsterdam upgrade narrative intact. ETF inflow momentum persists. No protocol exploit, unlock event, or regulatory action noted. HOLD.
- **Step 6 (Research):** No sharp unexplained moves. BTC ~$80,200 range, ETH +0.47% today. No Perplexity query needed.
- **Step 7 (Notification):** No action taken — no ClickUp alert sent.

### Note
ALPACA_ENDPOINT env var is set to `https://api.alpaca.markets` (missing `/v2`), causing `scripts/alpaca.sh` to fail with "endpoint not found". Workaround: used direct curl with `/v2` path for this scan. This env var should be corrected to `https://api.alpaca.markets/v2`.
