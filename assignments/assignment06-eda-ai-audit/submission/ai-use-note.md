
# AI Use Note

## How AI Was Used

AI was used during the classroom exercise to help generate the cohort, missingness, and Table 1 code. It was also used to review the planted errors and help organize the audit note.

The generated code and results were checked separately to make sure the calculations were correct.

## AI Prompts and Verification

### Cohort

# AI prompt: Filter the NHANES dataset to adults aged 20–80, create analysis_df, and show the row counts before and after filtering.

# Verified: The filter uses Age >= 20 and Age <= 80, so both ages are included. The cohort_counts table shows the original and filtered row counts.

### Missingness

# AI prompt: Count missing values and calculate the percentage missing for six variables in the adult cohort without dropping rows.

# Verified: Missing counts matched a separate colSums(is.na()) check for all six variables.

### Table 1

# AI prompt: Create a Table 1 showing N, BMI mean (SD), and age mean (SD) by income group.

# Verified: Income group counts matched count(IncomeGroup). BMI and age means and SDs matched separate summarise() calculations for all three groups.

## Additional Checks

The original Table 1 used variance instead of standard deviation, so this was corrected using sd(). Missing values were also checked before summarizing the data.

The interpretation was revised to avoid claiming statistical significance or causation because the analysis is descriptive and unweighted.
