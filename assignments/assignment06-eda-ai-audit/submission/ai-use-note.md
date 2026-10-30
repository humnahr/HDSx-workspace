# AI Use Note

## How AI Was Used

AI was used to help generate the cohort, missingness, and Table 1 code during the classroom exercise. It was also used to help identify the planted errors and organize the audit note.

The code and results were checked separately to make sure the calculations were correct rather than relying only on the AI-generated output.

## AI Prompts and Verification

### Cohort

```r
# AI prompt: Filter adults aged 20-80 and show row counts
# before and after the age restriction.
# Verified: The filter includes both ages 20 and 80,
# and cohort_counts shows the row counts at each step.
```

### Missingness

```r
# AI prompt: Count missing values and calculate the percentage
# missing for six variables in the adult cohort without dropping rows.
# Verified: Missing counts matched a separate colSums(is.na())
# check for all six variables.
```

### Table 1

```r
# AI prompt: Create a Table 1 showing N, BMI mean (SD),
# and age mean (SD) by income group.
# Verified: Income group counts matched count(IncomeGroup).
# BMI and age means and SDs matched separate
# summarise() calculations for all three groups.
```

## Additional Checks

The income group counts were checked using count(IncomeGroup), and the BMI and age means and standard deviations were checked using separate summarise() calculations. All three income groups matched the values in Table 1.

Missing values were also checked using colSums(is.na()), which matched the original missingness table for all six variables.

The planted errors were reviewed and corrected, including the incorrect age restriction, using variance instead of standard deviation, and the unsupported claims about statistical significance and causation.
