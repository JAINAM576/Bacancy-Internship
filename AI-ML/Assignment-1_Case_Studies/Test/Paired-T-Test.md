# PAIRED T-TEST CASE STUDY PRESENTATION
## By Jainam Sanghavin

---

# Section 1: Introduction to Paired t-Test

## 1️⃣ WHAT IS PAIRED T-TEST?

**Simple Definition:**
> Paired t-test compares **two measurements from the same group** to determine if the difference between them is statistically significant.

**Real-Life Analogy:**
- Measuring weight **before and after** a diet program → Same people, two time points
- Testing blood pressure **before and after** medication → Same patients, two conditions
- Comparing test scores **before and after** tutoring → Same students, two measurements

### Why Does Business Need It?

✅ **Measures Real Impact** - Shows if an intervention actually works, not just correlation  
✅ **Controls for Individual Variation** - Each subject serves as their own control  
✅ **Higher Statistical Power** - More sensitive than independent t-tests  
✅ **Enables Causal Claims** - Supports before/after and A/B testing conclusions

---

## 2️⃣ REAL-WORLD APPLICATIONS

### A. Tech Companies (Google, Netflix, Amazon)

**1. A/B Testing with Same Users**
- **Use:** Test feature changes on the same user base over time
- **Example:** Netflix testing new UI - measuring engagement before and after
  - Week 1 → Old interface (baseline)
  - Week 2 → New interface (treatment)
- **Why Paired?** Same users eliminate individual preference variation

**2. Performance Optimization**
- **Use:** Measure page load speed improvements
- **Example:** Google testing CDN changes
  - Before optimization → Response time tracked per server
  - After optimization → Same servers measured again
- **Why Paired?** Server-specific differences are controlled

---

### B. E-commerce (Amazon, Flipkart)

**3. Conversion Rate Optimization**
- **Use:** Test checkout flow changes
- **Example:** Amazon testing one-click vs multi-step checkout
- **Why Paired?** Same product categories tested before and after

**4. Pricing Strategy**
- **Use:** Measure impact of discount campaigns
- **Example:** Flipkart testing "Big Billion Days" pricing
  - Sales 7 days before campaign
  - Sales during campaign (same products)
- **Why Paired?** Product-level comparison eliminates seasonal noise

---

### C. Manufacturing (Toyota, Samsung)

**5. Process Improvement**
- **Use:** Measure efficiency gains from new methods
- **Example:** Toyota testing assembly line changes
  - Production time before Kaizen implementation
  - Production time after (same production lines)
- **Why Paired?** Line-specific factors are controlled

**6. Quality Enhancement**
- **Use:** Test defect reduction initiatives
- **Example:** Samsung testing new quality control protocol
  - Defect rate before protocol (per production batch)
  - Defect rate after (same batches tracked over time)
- **Why Paired?** Batch-specific variables eliminated

---

### D. Marketing & Retail

**7. Campaign Effectiveness**
- **Use:** Measure ROI of marketing campaigns
- **Example:** Email campaign performance
  - Open rate before subject line optimization
  - Open rate after (same customer segments)
- **Why Paired?** Customer segment characteristics remain constant

**8. Store Performance**
- **Use:** Test layout or merchandising changes
- **Example:** Retail store testing new shelf arrangement
  - Sales per product category before redesign
  - Sales after redesign (same stores, same categories)
- **Why Paired?** Store location and demographics controlled

---

# Section 2: Understanding Paired vs Independent Tests

## 2.1 The Fundamental Difference

The choice between paired and independent t-tests is not about preference — it is about **data structure** and **experimental design**.

---

## 2.2 When Data is Paired — The Natural Matches

Data is paired when **each observation in Group A has a natural match in Group B**.

**Three common pairing structures:**

### 1. **Same Subject, Two Time Points (Before/After)**
- Weight loss program: Person's weight before diet vs after diet
- Training effectiveness: Employee performance before training vs after training
- Medical treatment: Patient's symptoms before medication vs after medication

**Why paired?** Each person is their own control. We compare John's before to John's after, not John's before to Mary's after.

---

### 2. **Same Subject, Two Conditions (A/B on Same Units)**
- Product preference: Same customer rates Product A and Product B
- Website testing: Same user's behavior on Layout A vs Layout B
- Teaching methods: Same classroom taught with Method A vs Method B

**Why paired?** Individual differences are eliminated. We measure the treatment effect, not the person effect.

---

### 3. **Matched Pairs (Deliberately Created Matches)**
- Twin studies: One twin gets Treatment A, the other gets Treatment B
- Matched stores: Two similar stores test different promotions
- Paired geographic regions: Similar cities test different policies

**Why paired?** Matching controls for confounding variables. The pairs are similar in every way except the treatment.

---

## 2.3 When Data is Independent — No Natural Connection

Data is independent when **observations in Group A have no relationship to observations in Group B**.

**Examples of independent data:**

- Men's height vs Women's height (different people entirely)
- Sales in Store A vs Sales in Store B (different locations, no pairing)
- Satisfaction scores from Customer Group X vs Customer Group Y (random groups)

**Why independent t-test?** There is no "before and after" or "same subject." The groups are separate populations.

---

## 2.4 The Critical Question to Ask

> **"Does each observation in Group A have a specific, identifiable match in Group B?"**

| Answer | Test to Use |
|---|---|
| **Yes** — I can draw a line from Observation 1 in Group A to its pair in Group B | **Paired t-test** |
| **No** — Observations in Group A are unrelated to Group B | **Independent t-test** |

---

## 2.5 Valid Cases for Paired t-Test

### ✅ **Case 1: Before-After Design**

**Scenario:** A company wants to test if a new training program improves employee productivity.

**Data Structure:**
- **Before Training:** Measure productivity score for each employee
- **After Training:** Measure productivity score for the same employees

| Employee ID | Before Training | After Training | Difference |
|---|---|---|---|
| E001 | 75 | 82 | +7 |
| E002 | 68 | 71 | +3 |
| E003 | 80 | 85 | +5 |
| ... | ... | ... | ... |

**Why it's valid:** Each employee is measured twice. The pairing is clear: Employee E001's "before" matches Employee E001's "after."

**What we test:** Is the average difference (after - before) significantly different from zero?

---

### ✅ **Case 2: Repeated Measures on Same Units**

**Scenario:** A retailer wants to test if a new product display increases sales.

**Data Structure:**
- **Old Display:** Sales per product category (Week 1-4)
- **New Display:** Sales for the same categories (Week 5-8)

| Product Category | Old Display Sales | New Display Sales | Difference |
|---|---|---|---|
| Electronics | 12,500 | 14,200 | +1,700 |
| Clothing | 8,300 | 9,100 | +800 |
| Home Goods | 6,700 | 7,500 | +800 |
| ... | ... | ... | ... |

**Why it's valid:** Same categories are measured under two conditions. Electronics sales under old display pairs with electronics sales under new display.

**What we test:** Is the average sales difference across categories statistically significant?

---

### ✅ **Case 3: Matched Pairs Experimental Design**

**Scenario:** A pharma company tests a new drug using twin studies.

**Data Structure:**
- **Twin A:** Receives new drug
- **Twin B:** Receives placebo

| Twin Pair ID | Twin A (Drug) Recovery Time | Twin B (Placebo) Recovery Time | Difference |
|---|---|---|---|
| Pair 1 | 8 days | 12 days | -4 |
| Pair 2 | 6 days | 10 days | -4 |
| Pair 3 | 9 days | 11 days | -2 |
| ... | ... | ... | ... |

**Why it's valid:** Twins are genetically matched. The pairing controls for genetic and environmental factors. We measure treatment effect, not genetic variation.

**What we test:** Is the average difference in recovery time significantly different from zero?

---

## 2.6 Invalid Cases for Paired t-Test (Use Independent t-Test Instead)

### ❌ **Invalid Case 1: Different Subjects, No Pairing**

**Scenario:** A company compares sales performance of Team A vs Team B.

**Data Structure:**
- **Team A:** 50 salespeople
- **Team B:** 60 salespeople (different people, no matching)

| Team | Average Sales |
|---|---|
| Team A | $45,000 |
| Team B | $52,000 |

**Why it's invalid for paired t-test:** There is no natural pairing. Salesperson 1 in Team A does not match with anyone specific in Team B.

**Correct approach:** Independent t-test (two separate groups).

---

### ❌ **Invalid Case 2: Unequal Sample Sizes**

**Scenario:** Testing customer satisfaction before and after a website redesign, but different customers were surveyed each time.

**Data Structure:**
- **Before Redesign:** 200 customers surveyed
- **After Redesign:** 180 different customers surveyed

**Why it's invalid for paired t-test:** The samples are independent. Customer 1 from "before" is not the same as Customer 1 from "after."

**Correct approach:** Independent t-test.

---

### ❌ **Invalid Case 3: Aggregated Data Without Individual Matches**

**Scenario:** Comparing average monthly revenue of Store A vs Store B.

**Data Structure:**
- **Store A:** Average monthly revenue = $120,000
- **Store B:** Average monthly revenue = $135,000

**Why it's invalid for paired t-test:** There is no pairing. Store A and Store B are separate entities with no inherent connection.

**Correct approach:** Independent t-test (if comparing two stores) or time-series analysis (if comparing same store over time).

---

## 2.7 The Diagnostic Checklist

Before running a paired t-test, verify:

| Check | Question | Valid if... |
|---|---|---|
| ✅ | Are the two measurements from the same subjects? | Yes |
| ✅ | Can I identify specific pairs (Obs 1A ↔ Obs 1B)? | Yes |
| ✅ | Are sample sizes equal in both groups? | Yes |
| ✅ | Is each observation used only once in each condition? | Yes |
| ❌ | Are the groups completely independent? | No |
| ❌ | Are there different subjects in Group A vs Group B? | No |

**If all ✅ checks pass → Use Paired t-test**  
**If any ❌ check is true → Use Independent t-test**

---

## 2.8 Why This Matters — The Statistical Consequences

Using the wrong test leads to:

- **False Positives:** Claiming significance when there is none
- **False Negatives:** Missing real effects because the test lacks power
- **Invalid Conclusions:** Business decisions based on incorrect analysis

**Example of wrong test choice:**

A company measures customer satisfaction before and after a service upgrade but treats the data as independent (wrong choice).

- **Independent t-test result:** p = 0.08 (not significant)
- **Paired t-test result (correct):** p = 0.02 (significant)

**Why the difference?** Paired t-test removes individual customer variation, increasing statistical power. Using the wrong test causes the company to miss a real improvement.

---

## 2.9 Summary — Paired vs Independent

| Aspect | Paired t-Test | Independent t-Test |
|---|---|---|
| **Data Structure** | Same subjects, two measurements | Two separate groups |
| **Sample Sizes** | Must be equal | Can be unequal |
| **Pairing** | Clear one-to-one match | No relationship between groups |
| **Statistical Power** | Higher (controls for individual variation) | Lower (more variability) |
| **Use When** | Before/after, repeated measures, matched pairs | Comparing two independent populations |

**The golden rule:** If you can pair the data, you should. Paired t-tests are almost always more powerful when the pairing is valid.

---

# Section 3: The Mathematics Behind Paired t-Test

## 3.1 What Are We Actually Testing?

Paired t-test answers one specific question:

> **"Is the average difference between paired observations significantly different from zero?"**

We are not comparing two group means directly. We are testing whether the **difference** is real or just random noise.

---

## 3.2 The Core Formula

### Step 1: Calculate Differences

For each pair, compute:

**d_i = X₂ᵢ - X₁ᵢ**

Where:
- X₁ᵢ = Measurement in condition 1 (e.g., "before")
- X₂ᵢ = Measurement in condition 2 (e.g., "after")
- d_i = Difference for pair i

---

### Step 2: Calculate Mean Difference

**d̄ = (Σ dᵢ) / n**

Where:
- d̄ = Average of all differences
- n = Number of pairs

---

### Step 3: Calculate Standard Deviation of Differences

**s_d = √[Σ(dᵢ - d̄)² / (n - 1)]**

This measures how much the differences vary across pairs.

---

### Step 4: Calculate t-Statistic

**t = d̄ / (s_d / √n)**

Where:
- d̄ = Mean difference
- s_d = Standard deviation of differences
- n = Number of pairs
- (s_d / √n) = Standard error of the mean difference

---

### Step 5: Determine Degrees of Freedom

**df = n - 1**

Where n is the number of pairs.

---

### Step 6: Compare to Critical Value

- Look up the critical t-value in a t-distribution table for the given df and significance level (usually α = 0.05)
- If |t| > t_critical → Reject null hypothesis (difference is significant)
- Alternatively, calculate p-value: if p < 0.05 → Reject null hypothesis

---

## 3.3 Worked Example — Employee Training Program

**Scenario:** A company wants to test if a training program improves productivity scores.

**Data:**

| Employee | Before Training | After Training | Difference (d) |
|---|---|---|---|
| 1 | 75 | 82 | +7 |
| 2 | 68 | 71 | +3 |
| 3 | 80 | 85 | +5 |
| 4 | 72 | 78 | +6 |
| 5 | 65 | 68 | +3 |
| 6 | 78 | 84 | +6 |
| 7 | 70 | 74 | +4 |
| 8 | 82 | 88 | +6 |

---

### Step-by-Step Calculation

**Step 1: Differences are already calculated**

d = [7, 3, 5, 6, 3, 6, 4, 6]

---

**Step 2: Calculate Mean Difference**

d̄ = (7 + 3 + 5 + 6 + 3 + 6 + 4 + 6) / 8  
d̄ = 40 / 8  
**d̄ = 5**

---

**Step 3: Calculate Standard Deviation**

First, calculate squared deviations:

| d | (d - d̄) | (d - d̄)² |
|---|---|---|
| 7 | 2 | 4 |
| 3 | -2 | 4 |
| 5 | 0 | 0 |
| 6 | 1 | 1 |
| 3 | -2 | 4 |
| 6 | 1 | 1 |
| 4 | -1 | 1 |
| 6 | 1 | 1 |

Σ(d - d̄)² = 4 + 4 + 0 + 1 + 4 + 1 + 1 + 1 = 16

s_d = √[16 / (8-1)]  
s_d = √[16 / 7]  
s_d = √2.286  
**s_d = 1.512**

---

**Step 4: Calculate t-Statistic**

t = 5 / (1.512 / √8)  
t = 5 / (1.512 / 2.828)  
t = 5 / 0.535  
**t = 9.35**

---

**Step 5: Degrees of Freedom**

df = 8 - 1 = **7**

---

**Step 6: Critical Value and Decision**

For df = 7, α = 0.05 (two-tailed):  
t_critical = 2.365

Since |t| = 9.35 > 2.365 → **Reject null hypothesis**

**p-value < 0.001** (highly significant)

---

### Interpretation

**Conclusion:** The training program significantly improved productivity scores. On average, employees improved by 5 points, and this improvement is statistically significant (t = 9.35, p < 0.001).

**Business meaning:** The training program works. The company should continue and potentially expand the program.

---

## 3.4 Assumptions of Paired t-Test

For the test to be valid, these assumptions must hold:

### 1. **Paired Data**
- Each observation in Group 1 must have a matching observation in Group 2
- Sample sizes must be equal

### 2. **Independence of Pairs**
- Each pair should be independent of other pairs
- One employee's improvement should not affect another's

### 3. **Normality of Differences**
- The differences (d_i) should be approximately normally distributed
- **Note:** This is tested on the differences, not the original data
- With n > 30, this assumption is less critical (Central Limit Theorem)

### 4. **Continuous Data**
- The measurements should be continuous (or at least interval scale)
- Examples: time, money, scores, weights

### 5. **No Extreme Outliers in Differences**
- Outliers can distort the mean and standard deviation
- Check difference distribution before testing

---

## 3.5 Checking Assumptions — Visual and Statistical Tests

### Visual Check: Histogram of Differences

Plot a histogram of the differences. It should look roughly bell-shaped (normal).

### Statistical Check: Shapiro-Wilk Test

Tests if differences are normally distributed.
- Null hypothesis: Differences are normally distributed
- If p > 0.05 → Assumption met
- If p < 0.05 → Consider non-parametric alternative (Wilcoxon signed-rank test)

---

## 3.6 When Assumptions Fail — Alternatives

If assumptions are violated:

| Violation | Alternative Approach |
|---|---|
| Differences not normal & n < 30 | **Wilcoxon Signed-Rank Test** (non-parametric) |
| Extreme outliers present | Remove outliers or use **robust methods** |
| Data is ordinal (ranks, ratings) | **Wilcoxon Signed-Rank Test** |
| Pairing is unclear or weak | Reconsider if data should be **independent t-test** |

---

## 3.7 Effect Size — Measuring Practical Significance

Statistical significance (p-value) tells you if the difference is real.  
**Effect size** tells you if the difference matters.

### Cohen's d for Paired Data

**d = d̄ / s_d**

Where:
- d̄ = Mean difference
- s_d = Standard deviation of differences

**Interpretation:**
- d = 0.2 → Small effect
- d = 0.5 → Medium effect
- d = 0.8 → Large effect

**Example from our training data:**

d = 5 / 1.512 = **3.31** → **Very large effect**

**Conclusion:** Not only is the training significant statistically, but the effect size is large — meaning it has real-world impact.

---

## 3.8 Summary — The Mathematics in Plain Language

| Step | What We Do | Why It Matters |
|---|---|---|
| 1. Calculate differences | Find d_i for each pair | Reduces two measurements to one value |
| 2. Find mean difference | Average of all d_i | Shows overall direction and magnitude |
| 3. Find std dev of differences | Measures variability | Tells us if differences are consistent |
| 4. Calculate t-statistic | t = d̄ / SE | Standardizes the difference |
| 5. Compare to critical value | Check if t is extreme | Determines statistical significance |
| 6. Calculate effect size | d = d̄ / s_d | Measures practical importance |

**The core insight:** Paired t-test converts a two-group comparison into a one-sample test of differences. This is why it's more powerful — we eliminate between-subject variation.

---

# Section 4: Python Implementation — Paired t-Test with Code Examples

## 4.1 Setup and Libraries

```python
import numpy as np
import pandas as pd
from scipy import stats
import matplotlib.pyplot as plt
import seaborn as sns

# Set random seed for reproducibility
np.random.seed(42)
```

---

## 4.2 Example 1: Employee Training Program (Manual Calculation)

```python
# Data: Employee productivity scores before and after training
data = {
    'Employee_ID': [1, 2, 3, 4, 5, 6, 7, 8],
    'Before': [75, 68, 80, 72, 65, 78, 70, 82],
    'After': [82, 71, 85, 78, 68, 84, 74, 88]
}

df = pd.DataFrame(data)

# Calculate differences
df['Difference'] = df['After'] - df['Before']

print("Employee Training Data:")
print(df)
print("\n" + "="*50 + "\n")

# Manual calculation
differences = df['Difference']
n = len(differences)
mean_diff = differences.mean()
std_diff = differences.std(ddof=1)  # ddof=1 for sample std dev
se_diff = std_diff / np.sqrt(n)

# t-statistic
t_stat = mean_diff / se_diff

# Degrees of freedom
df_value = n - 1

# p-value (two-tailed)
p_value = 2 * (1 - stats.t.cdf(abs(t_stat), df_value))

# Effect size (Cohen's d)
cohens_d = mean_diff / std_diff

print("Manual Calculation Results:")
print(f"Mean Difference (d̄): {mean_diff:.2f}")
print(f"Std Dev of Differences (s_d): {std_diff:.3f}")
print(f"Standard Error (SE): {se_diff:.3f}")
print(f"t-statistic: {t_stat:.3f}")
print(f"Degrees of Freedom: {df_value}")
print(f"p-value: {p_value:.6f}")
print(f"Cohen's d (Effect Size): {cohens_d:.3f}")

if p_value < 0.05:
    print("\n✅ Result: SIGNIFICANT - Training improved productivity")
else:
    print("\n❌ Result: NOT SIGNIFICANT - No evidence training helped")
```

**Output:**
```
Employee Training Data:
   Employee_ID  Before  After  Difference
0            1      75     82           7
1            2      68     71           3
2            3      80     85           5
3            4      72     78           6
4            5      65     68           3
5            6      78     84           6
6            7      70     74           4
7            8      82     88           6

==================================================

Manual Calculation Results:
Mean Difference (d̄): 5.00
Std Dev of Differences (s_d): 1.512
Standard Error (SE): 0.535
t-statistic: 9.345
Degrees of Freedom: 7
p-value: 0.000044
Cohen's d (Effect Size): 3.307

✅ Result: SIGNIFICANT - Training improved productivity
```

---

## 4.3 Example 2: Using scipy.stats (Automated)

```python
# Using scipy's built-in paired t-test
t_stat_scipy, p_value_scipy = stats.ttest_rel(df['After'], df['Before'])

print("Scipy Automated Results:")
print(f"t-statistic: {t_stat_scipy:.3f}")
print(f"p-value: {p_value_scipy:.6f}")

if p_value_scipy < 0.05:
    print("✅ SIGNIFICANT - Reject null hypothesis")
else:
    print("❌ NOT SIGNIFICANT - Fail to reject null hypothesis")
```

**Output:**
```
Scipy Automated Results:
t-statistic: 9.345
p-value: 0.000044
✅ SIGNIFICANT - Reject null hypothesis
```

---

## 4.4 Example 3: Website Conversion Rate Optimization

```python
# Scenario: Testing new checkout flow
# Same products measured before and after redesign

np.random.seed(123)

# Simulate data for 50 product categories
n_products = 50

# Before redesign: conversion rates
before_conversion = np.random.normal(0.08, 0.02, n_products)  # Mean 8%, SD 2%

# After redesign: conversion rates (assume 1.5% improvement on average)
after_conversion = before_conversion + np.random.normal(0.015, 0.008, n_products)

# Create dataframe
conversion_df = pd.DataFrame({
    'Product_Category': [f'Category_{i+1}' for i in range(n_products)],
    'Before_Redesign': before_conversion,
    'After_Redesign': after_conversion
})

conversion_df['Difference'] = conversion_df['After_Redesign'] - conversion_df['Before_Redesign']

print("Sample of Conversion Rate Data:")
print(conversion_df.head(10))
print("\n" + "="*50 + "\n")

# Perform paired t-test
t_stat, p_value = stats.ttest_rel(
    conversion_df['After_Redesign'], 
    conversion_df['Before_Redesign']
)

mean_before = conversion_df['Before_Redesign'].mean()
mean_after = conversion_df['After_Redesign'].mean()
mean_diff = conversion_df['Difference'].mean()
std_diff = conversion_df['Difference'].std(ddof=1)
cohens_d = mean_diff / std_diff

print("Conversion Rate Test Results:")
print(f"Mean Conversion Before: {mean_before:.4f} ({mean_before*100:.2f}%)")
print(f"Mean Conversion After: {mean_after:.4f} ({mean_after*100:.2f}%)")
print(f"Mean Improvement: {mean_diff:.4f} ({mean_diff*100:.2f} percentage points)")
print(f"t-statistic: {t_stat:.3f}")
print(f"p-value: {p_value:.6f}")
print(f"Cohen's d: {cohens_d:.3f}")

if p_value < 0.05:
    print("\n✅ SIGNIFICANT - New checkout flow improves conversion")
    print(f"   Average improvement: {mean_diff*100:.2f} percentage points")
else:
    print("\n❌ NOT SIGNIFICANT - No evidence of improvement")
```

---

## 4.5 Example 4: Checking Assumptions — Normality Test

```python
# Test normality of differences using Shapiro-Wilk test
from scipy.stats import shapiro

# Use training example differences
differences_train = df['Difference']

# Shapiro-Wilk test
stat, p_shapiro = shapiro(differences_train)

print("Normality Test (Shapiro-Wilk):")
print(f"Test Statistic: {stat:.4f}")
print(f"p-value: {p_shapiro:.4f}")

if p_shapiro > 0.05:
    print("✅ Differences are normally distributed (assumption met)")
else:
    print("⚠️ Differences may not be normally distributed")
    print("   Consider Wilcoxon signed-rank test as alternative")

# Visual check: Histogram + Q-Q plot
fig, axes = plt.subplots(1, 2, figsize=(12, 4))

# Histogram with normal curve overlay
axes[0].hist(differences_train, bins=5, density=True, alpha=0.7, edgecolor='black')
axes[0].set_xlabel('Difference (After - Before)')
axes[0].set_ylabel('Density')
axes[0].set_title('Distribution of Differences')
axes[0].grid(True, alpha=0.3)

# Q-Q plot
stats.probplot(differences_train, dist="norm", plot=axes[1])
axes[1].set_title('Q-Q Plot')
axes[1].grid(True, alpha=0.3)

plt.tight_layout()
plt.savefig('/home/claude/normality_check.png', dpi=150, bbox_inches='tight')
plt.close()

print("\nPlot saved: normality_check.png")
```

---

## 4.6 Example 5: Invalid Case — Independent Groups

```python
# WRONG APPROACH: Treating independent groups as paired

# Scenario: Comparing Team A vs Team B sales (DIFFERENT people)
np.random.seed(99)

team_a_sales = np.random.normal(45000, 8000, 50)  # 50 salespeople
team_b_sales = np.random.normal(52000, 9000, 60)  # 60 DIFFERENT salespeople

# ❌ WRONG: Using paired t-test (this will give error or wrong result)
# The groups have different sizes — cannot be paired!

print("❌ INVALID EXAMPLE: Independent Groups")
print(f"Team A size: {len(team_a_sales)}")
print(f"Team B size: {len(team_b_sales)}")
print("\nCannot use paired t-test — sample sizes are unequal!")
print("Correct approach: Independent t-test\n")

# ✅ CORRECT: Use independent t-test
t_stat_ind, p_value_ind = stats.ttest_ind(team_a_sales, team_b_sales)

print("✅ Correct Test: Independent t-test")
print(f"Team A Mean Sales: ${team_a_sales.mean():,.0f}")
print(f"Team B Mean Sales: ${team_b_sales.mean():,.0f}")
print(f"t-statistic: {t_stat_ind:.3f}")
print(f"p-value: {p_value_ind:.6f}")

if p_value_ind < 0.05:
    print("✅ SIGNIFICANT - Teams have different performance")
else:
    print("❌ NOT SIGNIFICANT - No difference detected")
```

---

## 4.7 Example 6: Wilcoxon Signed-Rank Test (Non-Parametric Alternative)

```python
# When normality assumption fails, use Wilcoxon signed-rank test

# Create non-normal differences (skewed data)
np.random.seed(77)
before_skewed = np.random.exponential(scale=20, size=25)
after_skewed = before_skewed + np.random.normal(5, 3, 25)

# Wilcoxon signed-rank test (non-parametric)
stat_wilcox, p_wilcox = stats.wilcoxon(after_skewed, before_skewed)

print("Wilcoxon Signed-Rank Test (Non-Parametric):")
print(f"Test Statistic: {stat_wilcox:.3f}")
print(f"p-value: {p_wilcox:.6f}")

if p_wilcox < 0.05:
    print("✅ SIGNIFICANT - Difference detected (non-parametric)")
else:
    print("❌ NOT SIGNIFICANT")

# Compare with paired t-test on same data
t_stat_skew, p_t_skew = stats.ttest_rel(after_skewed, before_skewed)
print(f"\nPaired t-test p-value: {p_t_skew:.6f}")
print("Note: Wilcoxon is more robust when data is non-normal")
```

---

## 4.8 Complete Analysis Function — Reusable Template

```python
def paired_t_test_analysis(before, after, data_name="", alpha=0.05):
    """
    Performs complete paired t-test analysis with assumption checks
    
    Parameters:
    -----------
    before : array-like
        Measurements before treatment
    after : array-like
        Measurements after treatment
    data_name : str
        Description of the data (for reporting)
    alpha : float
        Significance level (default 0.05)
    
    Returns:
    --------
    dict : Results dictionary
    """
    
    # Convert to numpy arrays
    before = np.array(before)
    after = np.array(after)
    
    # Check sample sizes
    if len(before) != len(after):
        return {"error": "Sample sizes must be equal for paired t-test"}
    
    # Calculate differences
    differences = after - before
    n = len(differences)
    
    # Descriptive statistics
    mean_diff = differences.mean()
    std_diff = differences.std(ddof=1)
    se_diff = std_diff / np.sqrt(n)
    
    # Paired t-test
    t_stat, p_value = stats.ttest_rel(after, before)
    
    # Effect size
    cohens_d = mean_diff / std_diff if std_diff > 0 else 0
    
    # Normality test
    if n >= 3:
        _, p_shapiro = shapiro(differences)
        normality_ok = p_shapiro > 0.05
    else:
        p_shapiro = None
        normality_ok = None
    
    # Confidence interval for mean difference
    ci = stats.t.interval(1-alpha, n-1, loc=mean_diff, scale=se_diff)
    
    # Results
    results = {
        'n': n,
        'mean_before': before.mean(),
        'mean_after': after.mean(),
        'mean_difference': mean_diff,
        'std_difference': std_diff,
        'se_difference': se_diff,
        't_statistic': t_stat,
        'p_value': p_value,
        'cohens_d': cohens_d,
        'confidence_interval': ci,
        'significant': p_value < alpha,
        'normality_p': p_shapiro,
        'normality_ok': normality_ok
    }
    
    # Print report
    print(f"\n{'='*60}")
    print(f"PAIRED T-TEST ANALYSIS: {data_name}")
    print(f"{'='*60}\n")
    
    print(f"Sample Size: {n} pairs")
    print(f"Mean Before: {before.mean():.3f}")
    print(f"Mean After: {after.mean():.3f}")
    print(f"Mean Difference: {mean_diff:.3f}")
    print(f"Std Dev of Differences: {std_diff:.3f}")
    print(f"\nt-statistic: {t_stat:.3f}")
    print(f"p-value: {p_value:.6f}")
    print(f"95% Confidence Interval: [{ci[0]:.3f}, {ci[1]:.3f}]")
    print(f"Cohen's d (Effect Size): {cohens_d:.3f}")
    
    if cohens_d < 0.2:
        effect_interp = "negligible"
    elif cohens_d < 0.5:
        effect_interp = "small"
    elif cohens_d < 0.8:
        effect_interp = "medium"
    else:
        effect_interp = "large"
    print(f"Effect Size Interpretation: {effect_interp}")
    
    if normality_ok is not None:
        print(f"\nNormality Test (Shapiro-Wilk): p = {p_shapiro:.4f}")
        if normality_ok:
            print("✅ Normality assumption satisfied")
        else:
            print("⚠️ Normality assumption violated - consider Wilcoxon test")
    
    print(f"\n{'='*60}")
    if p_value < alpha:
        print("✅ RESULT: SIGNIFICANT")
        print(f"   The difference is statistically significant (p < {alpha})")
    else:
        print("❌ RESULT: NOT SIGNIFICANT")
        print(f"   No significant difference detected (p ≥ {alpha})")
    print(f"{'='*60}\n")
    
    return results

# Example usage
results = paired_t_test_analysis(
    before=df['Before'], 
    after=df['After'],
    data_name="Employee Training Program"
)
```

---

## 4.9 Summary — Key Python Functions

| Task | Function | Library |
|---|---|---|
| Paired t-test | `stats.ttest_rel(after, before)` | scipy.stats |
| Independent t-test | `stats.ttest_ind(group1, group2)` | scipy.stats |
| Normality test | `stats.shapiro(differences)` | scipy.stats |
| Wilcoxon test | `stats.wilcoxon(after, before)` | scipy.stats |
| Effect size | `mean_diff / std_diff` | Manual calculation |
| Confidence interval | `stats.t.interval(confidence, df, loc, scale)` | scipy.stats |

---


# Section 5: Business Case Study — Netflix Content Performance Testing

## 5.1 Setting the Scene

*"Hi everyone. I am a data analyst at Netflix. Today I want to walk you through a critical business decision we faced — and show you how we used paired t-testing to validate a major change to our recommendation algorithm."*

**Where we stand right now — the context:**

- Netflix serves 230+ million subscribers globally
- Our recommendation algorithm drives 80% of watch time
- We constantly test new features to improve engagement
- A new algorithm version (V2) was developed — promising better personalization
- **The question:** Should we roll it out globally?

---

## 5.2 The Business Problem

*"Here's the challenge we faced — and why this matters to our bottom line."*

### The Situation

**Current State (Algorithm V1):**
- Recommends content based on watch history and ratings
- Average viewing time: 2.1 hours per user per day
- Completion rate: 68% (users finish what they start)
- Works well, but we suspect we can do better

**Proposed State (Algorithm V2):**
- Enhanced with additional signals: time-of-day viewing patterns, social trends, mood inference
- Hypothesis: Will increase engagement by recommending more contextually relevant content
- **Risk:** If it performs worse, we damage user experience at scale
- **Opportunity:** If it works, increased engagement = higher retention = more revenue

### Why This Matters Financially

**The math:**
- 230 million subscribers × $15/month average = $3.45 billion monthly revenue
- 1% increase in engagement correlates with 0.5% reduction in churn
- 0.5% churn reduction = ~1.15 million subscribers retained
- **Value at stake:** ~$17 million monthly revenue ($204 million annually)

**The question:** How do we know if Algorithm V2 is actually better — not just different?

---

## 5.3 The Wrong Approach — Independent Testing

*"Let me show you what we could have done — and why it would have been wrong."*

### Approach 1: Independent Groups (❌ INVALID)

**Method:**
- Group A (50,000 random users) → Algorithm V1
- Group B (50,000 different users) → Algorithm V2
- Compare average engagement between groups

**Why this fails:**
- Different users have different viewing habits
- User A might watch 4 hours/day naturally (binge-watcher)
- User B might watch 1 hour/day naturally (casual viewer)
- If Group A happens to have more binge-watchers, it looks like V1 is better — but it's just random group composition
- **The problem:** User variation overwhelms algorithm effect

**Statistical consequence:**
- High variance between groups
- Low statistical power
- Need massive sample sizes to detect real differences
- Expensive, slow, and inconclusive

---

## 5.4 The Right Approach — Paired Testing

*"Here's how we actually did it — and why it worked."*

### Approach 2: Within-Subject Design (✅ VALID)

**Method:**
- **Week 1:** 10,000 users experience Algorithm V1 — measure engagement
- **Week 2:** The SAME 10,000 users experience Algorithm V2 — measure engagement
- Compare each user's engagement before and after

**Why this works:**
- Each user serves as their own control
- User A's baseline (V1) is compared to User A's treatment (V2)
- Binge-watchers stay binge-watchers, casual viewers stay casual
- **We measure the algorithm's effect, not user differences**

**Statistical advantage:**
- Lower variance (individual differences removed)
- Higher statistical power
- Smaller sample size needed
- Faster, cheaper, more conclusive

---

## 5.5 The Experimental Design — Details Matter

### Design Choices

**1. Sample Selection:**
- Random sample of 10,000 active users
- Stratified by: viewing tier (light/medium/heavy), region, device type
- Ensures representative sample of the user base

**2. Time Period:**
- Week 1 (V1): Monday to Sunday
- Week 2 (V2): Monday to Sunday
- Same days of week controls for day-of-week effects (weekends vs weekdays)

**3. Metrics Tracked:**
- **Primary:** Average daily viewing time (hours)
- **Secondary:** Completion rate (% of started content finished)
- **Secondary:** Content diversity score (# of unique genres watched)

**4. Confounding Controls:**
- No major content releases during test period
- No marketing campaigns that could bias engagement
- Same recommendation UI/UX — only algorithm logic changed

---

## 5.6 The Data — What We Measured

**Sample Data Structure:**

| User_ID | Week1_V1_Hours | Week2_V2_Hours | Difference |
|---|---|---|---|
| U0001 | 2.3 | 2.8 | +0.5 |
| U0002 | 1.5 | 1.7 | +0.2 |
| U0003 | 4.1 | 4.5 | +0.4 |
| U0004 | 0.8 | 0.7 | -0.1 |
| U0005 | 3.2 | 3.9 | +0.7 |
| ... | ... | ... | ... |

**Summary Stats:**

| Metric | Week 1 (V1) | Week 2 (V2) | Difference |
|---|---|---|---|
| Mean viewing time | 2.08 hours | 2.25 hours | +0.17 hours (+8.2%) |
| Median viewing time | 1.92 hours | 2.07 hours | +0.15 hours |
| Std Dev | 1.18 hours | 1.32 hours | 0.45 hours |

---


## 5.7 The Statistical Test — Paired t-Test with Python

```python
import numpy as np
import pandas as pd
from scipy import stats
import matplotlib.pyplot as plt

# Simulated data based on Netflix-scale patterns
np.random.seed(42)

# Week 1 (Algorithm V1): baseline viewing hours
week1_hours = np.random.gamma(shape=3, scale=0.7, size=10000)

# Week 2 (Algorithm V2): improved engagement
# Hypothesis: 8% average improvement + individual variation
improvement_factor = np.random.normal(1.08, 0.15, size=10000)
week2_hours = week1_hours * improvement_factor

# Create dataframe
netflix_df = pd.DataFrame({
    'User_ID': [f'U{i:05d}' for i in range(10000)],
    'Week1_V1': week1_hours,
    'Week2_V2': week2_hours
})

netflix_df['Difference'] = netflix_df['Week2_V2'] - netflix_df['Week1_V1']

# Display sample
print("Sample Data:")
print(netflix_df.head(10))
print("\n" + "="*60 + "\n")

# Perform paired t-test
t_statistic, p_value = stats.ttest_rel(
    netflix_df['Week2_V2'], 
    netflix_df['Week1_V1']
)

# Calculate metrics
mean_diff = netflix_df['Difference'].mean()
std_diff = netflix_df['Difference'].std(ddof=1)
se_diff = std_diff / np.sqrt(len(netflix_df))
cohens_d = mean_diff / std_diff

# Confidence interval
ci = stats.t.interval(
    0.95, 
    len(netflix_df) - 1, 
    loc=mean_diff, 
    scale=se_diff
)

print("Netflix Algorithm Test Results:")
print(f"Sample Size: {len(netflix_df):,} users")
print(f"Mean V1 viewing: {netflix_df['Week1_V1'].mean():.3f} hours")
print(f"Mean V2 viewing: {netflix_df['Week2_V2'].mean():.3f} hours")
print(f"Mean Difference: {mean_diff:.3f} hours ({(mean_diff/2.08)*100:.1f}% improvement)")
print(f"95% CI: [{ci[0]:.3f}, {ci[1]:.3f}]")
print(f"t-statistic: {t_statistic:.3f}")
print(f"p-value: {p_value:.2e}")
print(f"Cohen's d: {cohens_d:.3f}")

if p_value < 0.05:
    print("\n✅ RESULT: SIGNIFICANT")
    print("   Algorithm V2 significantly increases engagement")
else:
    print("\n❌ RESULT: NOT SIGNIFICANT")
```

**Results:**

| Statistic | Value | Interpretation |
|---|---|---|
| Mean difference | +0.17 hours | Users watched 10.2 more minutes per day on average |
| 95% Confidence Interval | [0.162, 0.179] | True effect is between 9.7 and 10.7 minutes/day |
| t-statistic | 40.21 | Extremely high signal-to-noise ratio |
| p-value | < 0.0001 | Probability this happened by chance: < 0.01% |
| Cohen's d | 0.38 | Small-to-medium effect size |
| Statistical Power | > 99.9% | Near certainty we'd detect this effect if real |

---

## 5.8 The Business Interpretation

*"Okay, so we have a p-value < 0.0001. What does that actually mean for Netflix?"*

### Statistical Conclusion

✅ **Algorithm V2 significantly increases engagement compared to V1**
- The improvement is real, not random noise
- We can reject the null hypothesis with 99.99% confidence
- The effect is consistent across users

### Business Translation

**What this means in practice:**

**1. Engagement Lift:**
- Average increase: 10.2 minutes per user per day
- At Netflix scale (230M users): **39 million additional viewing hours per day**
- Annual: **14.2 billion additional viewing hours**

**2. Retention Impact:**
- Higher engagement → lower churn
- Estimated churn reduction: 0.8 percentage points
- Users retained: ~1.84 million annually
- Revenue protected: ~$330 million annually

**3. Content ROI:**
- More viewing hours → better content utilization
- Higher completion rates → better signal for future recommendations
- Improved content discovery → more value from content library

**4. Competitive Advantage:**
- Users spend more time on Netflix, less on competitors
- Stronger network effects (more data → better recommendations → more engagement)

---

## 5.9 The Decision — Go or No-Go?

### The Stakeholder Meeting

| Who | Question | Answer |
|---|---|---|
| **Chief Product Officer** | "Is the improvement statistically significant?" | "Yes. p < 0.0001. This didn't happen by chance." |
| **CFO** | "What's the financial impact?" | "~$330M annual revenue protection from churn reduction." |
| **VP Engineering** | "What's the risk of rollout?" | "Low. The test controlled for confounders. Effect is consistent." |
| **Data Science Lead** | "How confident are we?" | "99.99% confidence. Cohen's d = 0.38. Robust effect." |
| **CEO** | "Do we deploy?" | "✅ YES. Deploy globally over 4 weeks with monitoring." |

---

## 5.10 The Rollout — Validation at Scale

**Phase 1: Gradual Rollout**
- Week 1: 10% of users (23M)
- Week 2: 30% of users (69M)
- Week 3: 60% of users (138M)
- Week 4: 100% of users (230M)

**Continuous Monitoring:**
- Daily paired t-tests comparing rollout cohorts to control groups
- Track engagement, churn, customer support tickets
- Early warning system for unexpected issues

**Final Validation (90 days post-rollout):**
- Global engagement up 8.1% (aligned with test prediction)
- Churn down 0.76 percentage points (aligned with projection)
- No increase in user complaints
- **Outcome:** Success confirmed at scale

---

## 5.11 Why Paired t-Test Was Critical

*"Let me be clear about something: without paired t-testing, we would not have made this decision."*

### What We Gained from Paired Design

**1. Statistical Power**
- Detected an 8% effect with only 10,000 users
- Independent design would have required 50,000+ users
- **Time saved:** 4 weeks faster to decision
- **Cost saved:** $2M in engineering and infrastructure

**2. Confidence in Causation**
- Within-subject design controls for user heterogeneity
- Temporal design controls for seasonality
- Randomization controls for unknown confounders
- **Result:** We can claim Algorithm V2 *caused* the improvement

**3. Business Credibility**
- Leadership team trusts p < 0.0001
- Finance team trusts the revenue projections
- Engineering team trusts the rollout plan
- **Result:** Unanimous go-ahead decision in one meeting

---

## 5.12 Summary — The Complete Picture

| Component | Detail |
|---|---|
| **Business Problem** | Should we deploy Algorithm V2 globally? |
| **Financial Stakes** | $330M annual revenue at risk |
| **Experimental Design** | Within-subject paired testing (same users, two algorithms) |
| **Sample Size** | 10,000 users |
| **Primary Metric** | Average daily viewing time |
| **Result** | +0.17 hours/day (+8.2% improvement) |
| **Statistical Significance** | p < 0.0001 (99.99% confidence) |
| **Effect Size** | Cohen's d = 0.38 (small-to-medium) |
| **Business Decision** | ✅ Deploy globally |
| **Outcome** | Success confirmed at scale |
| **Key Insight** | Paired design provided high power with small sample |

**The final line:** Paired t-testing didn't just validate a technical improvement — it enabled a confident business decision worth hundreds of millions of dollars.

---

# Section 6: Common Mistakes and How to Avoid Them

## 6.1 Mistake #1: Using Paired t-Test on Independent Data

### The Error

Treating two separate groups as if they were paired.

### Example Scenario

**Wrong Approach:**
```python
# ❌ INVALID: Different people in each group
team_a_performance = [85, 90, 78, 92, 88]  # 5 people from Team A
team_b_performance = [88, 93, 82, 95, 90]  # 5 DIFFERENT people from Team B

# This is WRONG — no pairing exists
t_stat, p_val = stats.ttest_rel(team_a_performance, team_b_performance)
```

**Why it's wrong:**
- Person 1 in Team A has no connection to Person 1 in Team B
- The pairing is artificial and meaningless
- Results are statistically invalid

**Correct Approach:**
```python
# ✅ CORRECT: Use independent t-test
t_stat, p_val = stats.ttest_ind(team_a_performance, team_b_performance)
```

---

## 6.2 Mistake #2: Ignoring the Normality Assumption

### The Error

Running paired t-test without checking if differences are normally distributed.

### Example

```python
# Generate heavily skewed differences
np.random.seed(123)
before = np.random.exponential(scale=10, size=30)
after = before * np.random.uniform(1.5, 3.0, size=30)
differences = after - before

# Check normality
stat, p_norm = stats.shapiro(differences)
print(f"Shapiro-Wilk p-value: {p_norm:.4f}")

if p_norm < 0.05:
    print("⚠️ Differences are NOT normally distributed")
    print("   Paired t-test may give incorrect p-values")
    print("   Use Wilcoxon signed-rank test instead")
    
    # Correct approach
    stat_wilcox, p_wilcox = stats.wilcoxon(after, before)
    print(f"\n✅ Wilcoxon test p-value: {p_wilcox:.6f}")
```

---

## 6.3 Mistake #3: Sample Size Too Small Without Power Analysis

### The Error

Running a test with n=10 pairs and expecting to detect small effects.

### Example

```python
from statsmodels.stats.power import ttest_power

# Small effect size (d=0.3), small sample (n=10)
power_small = ttest_power(effect_size=0.3, nobs=10, alpha=0.05, alternative='two-sided')
print(f"Power with n=10 for small effect: {power_small:.2%}")
print("   → Only 18% chance of detecting the effect!")

# Calculate required sample size for 80% power
from statsmodels.stats.power import tt_solve_power
n_required = tt_solve_power(effect_size=0.3, alpha=0.05, power=0.80, alternative='two-sided')
print(f"\nRequired sample size for 80% power: {np.ceil(n_required):.0f} pairs")
```

**Lesson:** Always calculate required sample size BEFORE collecting data.

---

## 6.4 Mistake #4: Cherry-Picking Significant Results

### The Error

Testing 20 different metrics, finding 2 significant ones, and reporting only those.

### Example

```python
# Simulate testing many metrics (most have no real effect)
np.random.seed(999)
n_tests = 20
p_values = []

for i in range(n_tests):
    # Simulate data with NO real effect (null is true)
    before = np.random.normal(50, 10, 50)
    after = before + np.random.normal(0, 5, 50)  # No systematic change
    _, p = stats.ttest_rel(after, before)
    p_values.append(p)

# Count false positives
false_positives = sum(p < 0.05 for p in p_values)
print(f"Number of 'significant' results: {false_positives} out of {n_tests}")
print(f"Expected false positives with α=0.05: {n_tests * 0.05:.1f}")
print("\n⚠️ Problem: Reporting only significant results creates false narrative")

# Correct approach: Adjust for multiple testing
from statsmodels.stats.multitest import multipletests
reject, p_adj, _, _ = multipletests(p_values, alpha=0.05, method='bonferroni')

print(f"\n✅ After Bonferroni correction:")
print(f"   Significant results: {sum(reject)} (correctly controlled)")
```

---

## 6.5 Mistake #5: Confusing Statistical and Practical Significance

### The Error

Reporting p < 0.001 but ignoring tiny effect size.

### Example

```python
# Very large sample, tiny effect
np.random.seed(777)
before_large = np.random.normal(100, 15, 100000)
after_large = before_large + 0.1  # Only 0.1 unit improvement!

t_stat, p_val = stats.ttest_rel(after_large, before_large)
cohens_d = 0.1 / 15  # Effect size = 0.0067 (negligible)

print(f"p-value: {p_val:.2e}")
print(f"Cohen's d: {cohens_d:.4f}")
print("\n⚠️ Statistically significant (p < 0.05) but effect is tiny!")
print("   With huge sample, even trivial differences become 'significant'")
print("   Always report effect size alongside p-value")
```

**Lesson:** Statistical significance ≠ practical importance. Always report effect sizes.

---

## 6.6 Mistake #6: Using Paired Test When Order Effects Exist

### The Error

Testing two conditions in sequence without controlling for learning/fatigue.

### Example Scenario

**Problem:**
- Week 1: Test new website design A
- Week 2: Test design B on same users
- Users learn the interface in Week 1 → perform better in Week 2 regardless of design

**Solution:**
```python
# Counterbalancing design
half_users_A_then_B = 500  # Group 1: A → B
half_users_B_then_A = 500  # Group 2: B → A

# This controls for order effects
# Any improvement is due to design, not learning
```

---

## 6.7 Checklist: Avoiding Common Errors

| Check | Question | Action if NO |
|---|---|---|
| ✅ Pairing | Are observations truly paired? | Use independent t-test instead |
| ✅ Normality | Are differences normally distributed (Shapiro-Wilk)? | Use Wilcoxon signed-rank test |
| ✅ Sample size | Did you run power analysis beforehand? | Calculate required n, collect more data |
| ✅ Outliers | Are there extreme values distorting results? | Investigate and consider robust methods |
| ✅ Independence | Are pairs independent of each other? | Use mixed models if clustered |
| ✅ Multiple tests | Are you testing many metrics? | Adjust for multiple comparisons |
| ✅ Effect size | Did you calculate and report Cohen's d? | Always report alongside p-value |
| ✅ Pre-registration | Did you specify hypotheses before analysis? | Report all results, not just significant ones |

---

# Section 7: Final Summary and Key Takeaways

## 7.1 When to Use Paired t-Test

✅ **Use Paired t-Test When:**
- Same subjects measured twice (before/after)
- Same units tested under two conditions (A/B within-subject)
- Matched pairs (twins, similar stores, geographic regions)
- Sample sizes are equal
- You want higher statistical power with smaller samples

❌ **Do NOT Use Paired t-Test When:**
- Comparing two independent groups (different subjects)
- Sample sizes are unequal
- No clear one-to-one pairing exists
- Order/carryover effects cannot be controlled

---

## 7.2 The Power of Paired Design

**Statistical Advantages:**
- Removes individual variation → lower variance → higher power
- Detects smaller effects with fewer observations
- More efficient use of data

**Business Advantages:**
- Faster decision-making (smaller samples needed)
- Lower cost (fewer subjects to recruit)
- Clearer causal inference (within-subject control)
- Higher confidence in results (tighter confidence intervals)

---

## 7.3 Critical Assumptions

| Assumption | Test | What to Do if Violated |
|---|---|---|
| **Paired data** | Check sample sizes equal | Use independent t-test |
| **Normality of differences** | Shapiro-Wilk test | Use Wilcoxon signed-rank |
| **No extreme outliers** | Boxplot, z-scores | Investigate and remove/transform |
| **Independence of pairs** | Domain knowledge | Use mixed models for clusters |

---

## 7.4 Key Formulas

**Test Statistic:**
```
t = d̄ / (s_d / √n)
```

Where:
- d̄ = mean of differences
- s_d = standard deviation of differences
- n = number of pairs

**Effect Size (Cohen's d):**
```
d = d̄ / s_d
```

**Required Sample Size:**
```
n ≈ 2 × [(Z_α/2 + Z_β) / d]²
```

Where d = effect size (μ_d / σ_d)

---

## 7.5 Python Quick Reference

```python
from scipy import stats
import numpy as np

# Paired t-test
t_stat, p_value = stats.ttest_rel(after, before)

# Normality test
stat, p_norm = stats.shapiro(differences)

# Non-parametric alternative
stat_w, p_w = stats.wilcoxon(after, before)

# Effect size
cohens_d = np.mean(differences) / np.std(differences, ddof=1)

# Confidence interval
from scipy.stats import t as t_dist
ci = t_dist.interval(0.95, df=len(differences)-1,
                      loc=np.mean(differences),
                      scale=stats.sem(differences))
```

---

## 7.6 Reporting Template

```
We conducted a paired t-test to compare [condition 1] and [condition 2] 
using [n] [units]. Mean [outcome] was [M1] (SD = [SD1]) for [condition 1] 
and [M2] (SD = [SD2]) for [condition 2]. The mean difference was [M_diff] 
(95% CI [[CI_low], [CI_high]]), t([df]) = [t_stat], p [= or <] [p_value], 
Cohen's d = [effect_size]. [Conclusion statement].
```

---

## 7.7 The Bottom Line

**Paired t-test is the right tool when:**
1. You have natural pairs (same subject, matched units)
2. You want maximum statistical power
3. You need to control for individual differences
4. Sample size is limited but pairing is possible

**But remember:**
- Check assumptions (especially normality)
- Report effect sizes, not just p-values
- Consider practical significance, not just statistical
- Be transparent about all analyses performed

**Final thought:** 
> "Paired t-testing is not about proving something is significant. It's about making better decisions with limited data by eliminating unnecessary noise."

---

# END OF PRESENTATION

Thank you for your attention. Questions?

---