# Visual Audit Note

### 1. Missing NHANES cycles
**Category:** Bias and aggregation

**Issue:** The original code used `Cycle %in% endpoint_cycles`, which only included the first and last NHANES cycles.

**Why it matters:** The cycles in between weren't shown, making it seem like BMI increased steadily without showing the actual fluctuations.

**Correction:** Removed the endpoint filter to include all available cycles.

### 2. Incorrect age restriction
**Category:** Correctness

**Issue:** The subtitle stated adults aged 20–80, but the code didn't include an age filter.

**Why it matters:** People outside this age range could have been included, meaning the graph didn't necessarily represent the population it claimed to show.

**Correction:** Added `Age >= 20, Age <= 80` inside `filter()`.

### 3. Causal title
**Category:** Interpretation

**Issue:** The title claimed that low income drives rising obesity.

**Why it matters:** The graph only shows mean BMI across income groups, which doesn't establish causation or measure obesity prevalence.

**Correction:** Changed the title to "Mean BMI by income group across NHANES cycles."

### 4. Y-axis limits
**Category:** Design

**Issue:** The original code used `scale_y_continuous(limits = c(24, 28))`.

**Why it matters:** Mean BMI values outside this range weren't displayed, so the graph didn't show the full comparison.

**Correction:** Removed the fixed limits to display all calculated averages.

### 5. Missing limitations
**Category:** Interpretation

**Issue:** The original graph didn't include a caption explaining missing data, survey weighting, or limitations.

**Why it matters:** Without this information, the results could be mistaken for nationally representative estimates.

**Correction:** Added a caption explaining the exclusions and that the results are unweighted and descriptive.