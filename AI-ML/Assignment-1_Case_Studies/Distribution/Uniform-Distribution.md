1.MY NAME IS JAINAM SANGHAVIN AND TODAY I WILL PRESENT UNIFORM DISTRIBUTION AND PAIRED T TEST CASE STUDY.

2.
**Simple Definition:**
> Uniform distribution means every outcome has an **equal probability** of occurring.

**Real-Life Analogy:**
- Rolling a fair dice → Each number (1-6) has a 1/6 chance
- Random lottery draw → Each ticket has equal winning probability
- Shuffling a deck of cards → Each card has equal chance of being drawn

### Why Does Business Need It?

✅ **Eliminates Bias** - Ensures fairness in testing and sampling  
✅ **Creates Control Groups** - Provides unbiased baseline for comparison  
✅ **Enables Discovery** - Helps find hidden opportunities without assumptions  
✅ **Ensures Scientific Validity** - Makes A/B testing statistically sound



## 2️⃣ REAL-WORLD APPLICATIONS

### A. Tech Companies (Google, Netflix, Amazon)

**1. A/B Testing**
- **Use:** Split users into equal groups to test features
- **Example:** Netflix testing two recommendation algorithms
  - 50% users → Algorithm A
  - 50% users → Algorithm B
- **Why Uniform?** Removes selection bias, ensures fair comparison

**2. Load Balancing**
- **Use:** Distribute server traffic evenly
- **Example:** Amazon AWS spreading requests across 4 servers
  - Each server handles ~25% of traffic
- **Why Uniform?** Prevents server overload, optimizes performance

---

### B. E-commerce (Amazon, Flipkart)

**3. Customer Sampling**
- **Use:** Select customers for surveys/promotions
- **Example:** Random selection for feedback collection
- **Why Uniform?** Every customer has equal chance of selection

**4. Lucky Draws & Flash Sales**
- **Use:** Winner selection in contests
- **Example:** Amazon Pay scratch cards, Paytm cashback
- **Why Uniform?** Ensures fairness and trust

---

### C. Manufacturing (Toyota, Samsung)

**5. Quality Control**
- **Use:** Random product inspection from production line
- **Example:** Selecting every 10th product randomly
- **Why Uniform?** Avoids predictable patterns that could be gamed

---

### D. Gaming (PUBG, Dream11)

**6. Matchmaking & Loot Boxes**
- **Use:** Random rewards or player pairing
- **Example:** Equal probability for rare items (in some games)
- **Note:** Often weighted in reality, but starts with uniform assumption


3.
# Section 3: Behaviour of Uniform Distribution in Business

---

## 3.1 The Two Key Points

Uniform distribution behaves differently from every other distribution in business. There are two important things to understand:

1. **It is rare in real-world data** — and even if it appears, it rarely helps in decision-making.
2. **Businesses introduce it on purpose** — as a mechanism to remove bias, and that is where its real power lies.

---

## 3.2 Descriptive vs. Experimental — Where Uniform Actually Belongs

Most distributions are useful because they *describe* data. Uniform distribution is different — it is useful because it *controls* how data is collected.

| Aspect | Descriptive Statistics | Experimental Design |
|---|---|---|
| Question | "What does the data look like?" | "How should we collect data?" |
| Role of Uniform | Rare | **Fundamental** |
| Example | Fit normal / lognormal | Randomized trials |
| Stitch Fix Use | ❌ | ✅ |

> **Key Line:** Uniform distribution is not something we expect to see in customer behavior. Instead, it is a mechanism we deliberately introduce during sampling or experimentation to ensure unbiased data collection.

---

## 3.3 Why Uniform Is Weak Descriptively

Real business data almost never follows a uniform pattern. Customer behavior, sales, ratings, and preferences are skewed, structured, or seasonal. If you see uniformity in data, it usually means:

- The data was artificially randomized, or
- You are looking at IDs, hashes, or random assignments — not actual behavior.

Trying to *fit* uniform distribution to business data and draw conclusions from it is the wrong approach. Unlike Poisson or Binomial, uniform does not model reality — **it models ignorance.**

---

## 3.4 Why Uniform Is Extremely Powerful as a Design Choice

> We introduced uniform distribution at the data collection stage to remove selection bias and create a baseline for insight discovery.

Uniform distribution is powerful because it controls **how data is collected**, not what data looks like.

**The crucial idea:** Insight quality depends more on how data is collected than how it is modeled.

Uniform distribution guarantees one thing:

**P(being observed) = constant**

That single property gives you:

- Unbiased estimators
- Identifiability
- Fair comparison
- Causal clarity

---

## 3.5 Stitch Fix — Why It Works Only Because of Uniform

### Without Uniform Exposure

- The AI shows items it already thinks will work.
- You never observe failures or surprises.
- The model becomes self-confirming.
- This is called **selection bias + feedback loop**.

### With Uniform Exposure

- Every item gets equal visibility.
- Some items outperform expectations, some underperform.
- The system learns where the model is actually wrong.
- Uniform acts as a **statistical probe** — it breaks the feedback loop.

> **Why it matters:** Stitch Fix did not *find* uniformity in its data. It *imposed* uniformity to discover hidden structure.

---

## 3.6 Closing Takeaway

> Uniform distribution is useless for explaining the world, but extremely useful for discovering it.

**Final position to remember:**

In real business data, uniform distribution is rarely observed and rarely useful descriptively. Its true power lies in experimental design — where it is deliberately introduced to remove bias, enable fair exposure, and allow learning.

| | Uniform Distribution |
|---|---|
| Explains the world? | ❌ No |
| Discovers the world? | ✅ Yes |
| Found in data? | ❌ Rare |
| Introduced by design? | ✅ Always |

---

4.
# Section 4: Stitch Fix Case Study — The Business Problem

---

## 4.1 Setting the Scene

*"Hi everyone. I am a data scientist here at Stitch Fix. I am here today to walk you through a problem we discovered in our business — and I want to show you the numbers, not just the story."*

**Where we stand right now — the good news:**

- Our AI personalization engine is working. Customers like their boxes.
- Revenue is strong — we crossed $1.3 billion annually.
- Keep Rate (the % of items customers actually buy) is healthy on average.
- On the surface, everything looks fine.

---

## 4.2 The Catch — Something Is Off in Our Inventory

*"But if you look deeper — specifically at our inventory — something does not add up."*

**The problem we found:**

When we pulled inventory data, a large chunk of our products are sitting unsold. These are not bad products. Some of them are actually good — but our AI never showed them to the right customers. They simply never got a chance.

**Why does this matter to the business?**

- Unsold inventory = wasted money (we bought it, it sits on shelves)
- If good products never get seen, we are losing potential revenue
- Customers are not seeing the full range of what we offer

---

## 4.3 The Cause — AI Bias and the Echo Chamber

*"So the question is: why are these products invisible? Let me show you with an example."*

**How the bias happens — one customer, step by step:**

1. A customer buys a blue casual shirt from their first box.
2. Our AI learns: *"This person likes blue. This person likes casual."*
3. Next box: AI picks more blue casual items.
4. Customer buys again — AI thinks: *"I was right."*
5. AI doubles down. Shows only blue casual items forever.
6. Meanwhile — a green jacket, a bold pattern shirt, a new trend — none of them ever appear for this customer.

**The result:** The AI is not discovering what customers like. It is *confirming* what it already thinks. This is called a **feedback loop** — and it creates bias.

**What this means at scale:**

- Popular item categories get shown again and again → they sell well → AI shows them even more.
- Unpopular or new items never get shown → they never sell → AI assumes they are bad → they never get shown.
- The AI is not wrong because the products are bad. It is wrong because **it never gave them a fair chance.**

This is called **Exploitation Bias** — the AI exploits what it already knows, and stops exploring anything new.

---

## 4.4 The Numbers — Synthetic Data Simulation

*"Let me put actual numbers on this so you can see it."*

The following visuals use synthetic data that simulates what our internal dashboards showed when we first identified this problem:

**Visual 1 — Inventory Sales Distribution**
Shows how sales are concentrated in a small number of products while the majority sit at near-zero sales. This is the "long tail" problem caused by AI bias.

**Visual 2 — AI Exposure vs Actual Sales (per product category)**
Shows that products the AI exposes heavily have high sales — but products with low AI exposure have almost no sales, even when demand signals suggest they should sell.

**Visual 3 — The Feedback Loop Timeline**
Shows how over time, the gap between "products AI shows" and "products in inventory" keeps growing. The AI gets narrower and narrower.

---

## 4.5 Summary — What We Know So Far

| What | Detail |
|---|---|
| The good | AI personalization works. Revenue is strong. Keep Rate is healthy. |
| The catch | A large portion of inventory is unsold and invisible to customers. |
| The cause | AI feedback loop creates exploitation bias — it only shows what it already believes works. |
| The gap | New products, emerging trends, and niche styles never get a fair chance to be seen. |
| The question | How do we fix this without breaking what already works? |

*"That question is what Section 5 will answer."*

---

5.
# Section 5: The Solution — Uniform Distribution as Exploration

---

## 5.1 The Proposal

*"Okay, so we know the problem. The AI is stuck in a loop. It only shows what it already believes works. Now — here is what I am proposing we do about it."*

**The core idea:** We do not replace the AI. We do not shut it down. We split the recommendation into two parts:

- **95% of interactions** → Continue to show customers items the AI predicts they will like (Exploitation)
- **5% of interactions** → Show items selected via uniform distribution — every item in inventory gets an equal chance (Exploration)

**Important nuance:** This 5% is applied per interaction, not per customer. If one specific customer was permanently stuck in the random group, they would get frustrated and quit. By making it 5% of interactions across all users, everyone helps scout for trends — but everyone still gets their personalized smart picks 95% of the time. This protects the user experience while still collecting enough data to learn.

---

## 5.2 Why Uniform Distribution? The Scientific Answer

> "If we want to know what customers actually like vs. what our AI thinks they like, we need a neutral control group where no assumptions are made."

**The Uniform Distribution Principle:**

- Give every item in inventory an equal probability of being shown
- Remove all favoritism from the algorithm
- Create a level playing field for all clothing items

This is not guessing. This is **controlled experimentation**. Uniform distribution is the mechanism that makes the experiment fair.

---

## 5.3 Why Exactly 5%? (This Is Not Random — It Is Systematic)

This is a question the business team asked during the proposal. The answer:

**Too low (< 2%):** Not enough customers in the exploration group. The data collected would be too small to detect hidden trends reliably. Statistical significance would take too long.

**Too high (> 10%):** Too many customers receive non-personalized boxes. Keep Rate drops for those customers. Revenue takes a short-term hit. The business cannot afford that risk.

**5% is the sweet spot:**
- Large enough sample to detect trends within weeks, not months
- Small enough that overall revenue and Keep Rate stay healthy
- Applied per interaction, not per customer — so no single user is permanently stuck in the random group
- Statistically validated — at 3.2M active customers, 5% of interactions generates more than enough exploration data

The 5% was calculated, not guessed.

---

## 5.4 The Debate — How the Business Decided

*"This is roughly how the conversation went in the meeting when we proposed this."*

| Who Said It | What They Said | Response |
|---|---|---|
| Data Scientist | "We need 5% of customers to receive uniform random picks so we can learn what the AI is missing." | — |
| Business Manager | "Won't this hurt our Keep Rate? We are sending random items." | "Yes — for that 5% group, Keep Rate will likely drop short-term. But we gain data on every product in inventory. That data is worth more than the short-term dip." |
| Finance Lead | "How long before we see results?" | "We run this 24/7, continuously. Within 4–6 weeks we start seeing which hidden categories are performing. Within a quarter we can act on it." |
| Product Lead | "What if customers in the 5% group get frustrated?" | "We also built a Style Shuffle feature — a swipe game — where uniform randomness feels like fun discovery, not a broken algorithm." |
| Decision | ✅ Approved. Run as continuous shadow testing. | — |

---

## 5.5 Implementation — Where They Applied It

### 1. Exploration Cells
- Special customer segments created purely for testing
- These customers receive items selected via continuous uniform distribution
- Every item in inventory has an equal probability of being picked
- Runs in the background — customers do not know they are in a test group

### 2. Style Shuffle Feature — The High-Velocity Data Lab
- An in-app swipe game where customers browse clothing items
- Items are shown using uniform randomness — not AI-predicted favorites
- This collected over 1 billion likes and dislikes for training data
- Customers experience it as fun discovery, not as a test
- **Key insight:** Because Style Shuffle is a game and does not cost the customer money or involve a physical shipment, Stitch Fix can use much higher levels of uniform randomness here than the 5% applied to shipments. While shipments are capped at 5% to protect revenue, Style Shuffle acts as a High-Velocity Uniform Data Lab — training the AI at scale with minimal business risk.

### 3. Stylist Recommendation Injection
- Even the ranked list that human stylists see gets uniform items mixed in
- This forces stylists to consider items the AI would normally hide
- Adds a human layer of judgment on top of the uniform exploration

---

## 5.6 Implementation — When They Do This

**Continuous Operation:**
- Runs 24/7 as ongoing shadow testing
- This is not a one-time experiment. It is a permanent part of the system.

**Peak Periods — When It Matters Most:**
- Season transitions (Winter → Spring, Summer → Fall)
- During these periods, the AI is blind to new trends because it only knows past season data
- Uniform distribution acts as a trend scout during these windows

---

## 5.7 Implementation — How It Works (Step by Step)

**Step 1: Baseline**
- AI picks items with high predicted Keep Rate for 95% of customers
- Standard recommendation algorithm continues as normal

**Step 2: Uniform Injection**
- For 5% of customers, ignore AI predictions entirely
- Generate a random number between [0, 1] for each inventory item
- Select items purely based on uniform probability — no favoritism

**Step 3: Comparison**
- Track Keep Rate of the Uniform Group vs the AI Group side by side
- Measure which styles are kept more than expected in the uniform group

**Step 4: Discovery — Finding Positive Residuals**
- If the Uniform Group loves "Boho Chic" but the AI never showed it to anyone — this signals a hidden trend the AI missed
- This is called a **Positive Residual** — when an item performs better in the Uniform Group than the AI predicted it would
- This is the moment uniform distribution earns its value. When we find a Positive Residual, we have found a gold mine that competitors who do not use uniform distribution are completely blind to
- This is where the ROI of the entire system lives

**Step 5: Action**
- Shift inventory buying strategy based on discoveries
- Update the AI model with the new preference data
- Scale up promising styles that were previously invisible

---

## 5.9 Validation — How We Know It Actually Works

We do not just hope this works. We prove it.

**The Tool:** Paired t-test

**What we compare:** Keep Rate of AI-picks vs Keep Rate of Uniform-picks, for the same user segments, over the same time period.

**What it gives us:** A P-value. If the P-value is statistically significant, it proves the AI's "uplift" over random chance is real — not just noise.

**Why this matters:** This ensures our $1.3 billion inventory strategy is backed by science, not just code. Every decision we make about which products to stock, which trends to chase, and which styles to scale up — is validated by a statistical test.

**The line to remember:** "We don't just believe the AI is better than random. We prove it — every single cycle — with a Paired t-test."

---

| Component | Detail |
|---|---|
| What | Split interactions: 95% AI + 5% Uniform (per interaction, not per customer) |
| Why | Remove bias. Give every product a fair chance. Learn what AI misses. |
| Why 5% | Statistically significant sample. Minimal revenue impact. Per-interaction so no user is stuck in random. |
| Where | Exploration Cells, Style Shuffle (high-velocity data lab), Stylist Injection |
| When | 24/7 continuous. Extra focus during season transitions. |
| How | Uniform selection → Compare → Find Positive Residuals → Validate with t-test → Act |
| Validation | Paired t-test compares AI vs Uniform Keep Rates. P-value proves uplift is real. |

---


# Section 6: The Outcome — Results After Months of Uniform Testing

---

## 6.1 Setting the Scene — The Follow-Up Meeting

*"Alright everyone. It has been a few months since we started the 95/5 split. You approved this in the last meeting. Today I am here to show you what happened — with numbers, not opinions."*

The uniform distribution has been running 24/7 as continuous shadow testing. The exploration cells have been collecting data. Style Shuffle has been gathering signals. Now it is time to see if it worked.

---

## 6.2 Before vs After — The Core Metrics

| Metric | Before (Bias-Only AI) | After (Uniform Testing) |
|---|---|---|
| Keep Rate | High initially, then plateaued | Increased by 10–15% over time |
| Customer Discovery | Low — same styles repeated | High — customers found new favorites |
| Inventory Waste | 30–40% of items unsold | Reduced significantly |
| Trend Detection Speed | Slow — 3–4 weeks behind competitors | 2–3 weeks faster than competitors |
| Model Accuracy | Degraded over time (feedback loop) | Continuously improving |

**What this table tells us:** Every single metric moved in the right direction. The AI did not break. It got better — because uniform distribution gave it data it never had before.

---

## 6.3 The Paired t-Test — Proving It Statistically

*"You might ask: how do we know this improvement is real and not just luck? Here is the proof."*

**What we tested:** Keep Rate of AI-picks vs Keep Rate of Uniform-picks, across the same user segments, over the same time period.

**The result:** 99% statistical confidence. The P-value confirms the AI's uplift over random chance is real — not noise, not coincidence.

**What this means for the business:** Every inventory decision we make — what to stock, what to scale, what to cut — is now backed by a statistically validated test. We are not guessing. We are proving.

| Test Component | Value |
|---|---|
| Test Used | Paired t-test |
| What Was Compared | AI Keep Rate vs Uniform Keep Rate |
| Confidence Level | 99% |
| P-value Result | Statistically significant |
| Conclusion | AI uplift over random is real and consistent |

---

## 6.4 Financial Impact

- **$1.3+ billion** annual revenue achieved
- Operates with **20% less inventory** than traditional retailers
- Higher profit margins due to less discounting — because fewer items sit unsold
- Inventory turnover is faster — products move, money flows

The uniform distribution did not just help the AI learn. It directly reduced waste and increased the efficiency of every dollar spent on inventory.

---

## 6.5 Strategic Impact — The Competitive Edge

**Trend Detection:** Stitch Fix spotted the "Chili Red" trend before competitors. This became the 2026 Color of the Year. Uniform distribution's exploration cells picked up the signal weeks before it went mainstream.

**Customer Retention:** The "boredom churn" problem from Section 4 is now under control. Customers keep discovering new styles they actually like — because uniform distribution forced the AI to show them things it would have never shown on its own.

**Data Quality:** 99% statistical confidence in AI decisions. The system is not just running — it is learning, validating, and improving every single cycle.

---

## 6.6 Operational Scale

- **100+ PhD Data Scientists** manage and improve these systems
- **1 billion+ data points** collected via uniform randomization through Style Shuffle and exploration cells
- Faster inventory turnover across all categories
- The system runs continuously — 24/7 — with no manual intervention needed

---

## 6.7 The Hidden Gems — Where Uniform Found Gold

*"This is the moment I want you to remember from today."*

**The Story:**

1. The AI predicted "Floral Dresses" would fail for a certain customer segment.
2. Uniform testing showed it to them anyway — because every item gets equal probability.
3. Customers in that segment loved it. Keep Rate was high.
4. The AI learned: "I was wrong about this segment."
5. The entire inventory strategy shifted for similar customers.
6. A product that would have sat unsold became a revenue driver.

**Why this only happens with uniform distribution:** The AI would never have shown Floral Dresses to that segment on its own. It was too confident in its own prediction. Uniform distribution broke that confidence — and found a Positive Residual the AI was blind to.

> "Uniform distribution does not just test the algorithm — it teaches the algorithm what it does not know."

---

## 6.8 Summary — The Outcome in One View

| What We Measured | Result |
|---|---|
| Keep Rate | Up 10–15% |
| Inventory Waste | Down from 30–40% |
| Trend Speed | 2–3 weeks faster than competitors |
| Statistical Proof | 99% confidence via Paired t-test |
| Revenue | $1.3B+ annually |
| Inventory Efficiency | 20% less inventory than traditional retailers |
| Data Collected | 1 billion+ data points |
| Hidden Gems Found | Yes — products AI predicted would fail actually succeeded |

**The final line:** Uniform distribution did not replace the AI. It made the AI honest — and taught it what it did not know.

---


7.
# Section 7: Limitations, Current Method & Future Enhancement

---

## 7.1 The Honest Part

*"Before I close, I want to be transparent about something. Pure uniform distribution — the way we first proposed it — is not the full story. It was the foundation. But it had limitations. And Stitch Fix evolved past it. Here is what that evolution looks like."*

Uniform distribution solved the bias problem. It broke the feedback loop. It found hidden gems. But it also had real costs — and the company learned from those costs to build something even better.

---

## 7.2 Limitations of Pure Uniform Distribution

### Limitation 1: Revenue Trade-off
- You cannot give uniform distribution to all customers. If you do, sales drop — because showing random items reduces the chance customers actually buy.
- This is why the 5% cap exists. It is not arbitrary. It is the maximum the business can afford to explore without hurting revenue.

### Limitation 2: Sample Size Requirements
- Rare styles might not get enough exposure even in the 5% group to generate statistically meaningful data.
- Each item needs a minimum of 2–4 weeks of testing before you can draw conclusions. Trends do not appear overnight.

### Limitation 3: Seasonal Bias
- True uniform randomness ignores context. If you run uniform testing in winter, it will show swimsuits. Swimsuits in winter = bad experience = low Keep Rate — but that does not mean swimsuits are a bad product.
- Uniform distribution does not know about seasons. It knows nothing. That is its strength for removing bias, but it is also its weakness when context matters.

### Limitation 4: Customer Experience Risk
- Some customers in the exploration group receive items that feel completely "off." Random does not mean relevant.
- A customer who expects smart personalization and gets a random pick may lose trust in the platform.

---

## 7.3 What Did Not Work

**100% Uniform:** When tested at scale, too many bad recommendations caused customers to churn. The business cannot afford to show random items to everyone.

**No Human Override:** Early versions had no stylist veto. This meant obviously bad picks — wrong size, wrong season, wrong context — went through. Stylists needed the ability to override uniform picks before they shipped.

**Ignoring Context:** Running pure uniform across all categories regardless of season, size, or customer history produced noise, not signal. The data was technically unbiased — but it was also not useful in its raw form.

---

## 7.4 The Evolution — From Uniform to Epsilon-Greedy

*"So what do they actually use now in 2026? It is not pure uniform anymore. It is something smarter — but uniform is still the core idea underneath."*

Stitch Fix moved to a **hybrid approach** called **Epsilon-Greedy (ε-Greedy)**.

**How it works:**

- **ε (Epsilon) = 5–10% of the time:** Explore. Use uniform distribution. Pick items with no AI bias. Learn what is being missed.
- **90–95% of the time:** Exploit. Use the AI's best recommendations. Serve customers what the model predicts they will like.

This is not a new idea. It is a well-known framework in machine learning for balancing exploration and exploitation. Stitch Fix applies it to fashion recommendation at scale.

**Why this works better than pure uniform:**
- 95% of the time, customers get personalized, profitable picks — revenue stays healthy
- 5% of the time, the system is still learning — discoveries keep happening
- The balance between safety and innovation is built into the algorithm itself

---

## 7.5 Thompson Sampling — The Current Engine

The most advanced method Stitch Fix uses today is called **Multi-Armed Bandit with Thompson Sampling**. This is the technical name for the system that sits on top of the epsilon-greedy framework.

**How Thompson Sampling works — step by step:**

**Step 1: New item arrives in inventory.**
- The system has no data on this item yet.
- It starts with a uniform assumption — every item is equally likely to succeed. This is the prior belief.

**Step 2: Collect data.**
- The item is shown to customers via the exploration group.
- The system tracks whether customers keep it or not.

**Step 3: Update beliefs.**
- If customers like it — Keep Rate is high — the system increases the probability that this item will succeed.
- If customers do not like it — Keep Rate is low — the probability decreases.
- This update happens automatically, continuously, every cycle.

**Step 4: Optimize.**
- Over time, the system shifts from uniform (equal probability) to weighted (based on actual performance).
- Popular items get shown more. Unpopular items get shown less. But the exploration never fully stops — new items always get a chance.

**Example — "Neon Green Jacket":**

| Week | What Happened | Belief Update |
|---|---|---|
| Week 1 | New item. No data. Shown to exploration group. | Prior: 50% success (uniform assumption) |
| Week 2 | Results come in. 70% Keep Rate — higher than expected. | Updated: 70% likely to succeed |
| Week 3 | AI increases frequency. Shown to more customers. | Belief confirmed. Scale up. |

---

## 7.6 Uniform vs Epsilon-Greedy vs Thompson Sampling — The Full Picture

| Method | What It Does | When It Was Used | Strength | Weakness |
|---|---|---|---|---|
| Pure Uniform | Every item gets equal chance | Initial exploration phase | Removes all bias completely | Ignores context. Hurts revenue at scale. |
| Epsilon-Greedy | 5% explore (uniform), 95% exploit (AI) | Current standard | Balances revenue and learning | Epsilon is fixed — does not adapt per item |
| Thompson Sampling | Updates probability per item based on real performance | Current advanced engine | Adapts dynamically. Most efficient learning. | Complex to implement and monitor |

**The progression:** Uniform → taught the AI what it did not know. Epsilon-Greedy → made exploration sustainable. Thompson Sampling → made learning intelligent.

---

## 7.7 Key Learnings

**The 5% Rule:** A small exploration budget prevents major revenue loss while still enabling discovery. You do not need to explore everything — you need to explore enough.

**Combine AI and Human:** Uniform distribution informs the AI with unbiased data. But humans still curate the final selection. The stylist is the last line of quality control.

**Context Matters:** Randomness must operate within constraints — seasonal relevance, size appropriateness, customer history. Pure randomness without context creates noise. Randomness within constraints creates signal.

**Patience Required:** Trends emerge over weeks, not days. The system needs time to collect enough data before conclusions are valid. Rushing this process produces false signals.

**Uniform is the foundation, not the ceiling:** Every method Stitch Fix uses today — epsilon-greedy, Thompson Sampling, exploration cells — has uniform distribution at its core. It is not the final answer. It is the starting point that makes everything else possible.

---

## 7.8 Summary — Where Things Stand Now

| Stage | Method | Role |
|---|---|---|
| Foundation | Uniform Distribution | Removes bias. Gives every item a fair chance. Breaks feedback loops. |
| Current Standard | Epsilon-Greedy (ε = 5–10%) | Balances exploration and exploitation sustainably. |
| Current Engine | Thompson Sampling | Learns dynamically. Updates beliefs per item based on real data. |
| Human Layer | Stylist Override | Final quality check. Catches context errors uniform cannot see. |
| Validation | Paired t-test | Proves every cycle that the system is working — not guessing. |

**The final position:** Uniform distribution was not the end of the story. It was the beginning. It proved that removing bias works. Everything Stitch Fix built after that — epsilon-greedy, Thompson Sampling, the entire exploration infrastructure — exists because uniform distribution showed them the way.

---