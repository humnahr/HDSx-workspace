
# Table 1 Audit Note

## Cohort

The analysis includes adults aged 20–80 (inclusive) from the prepared NHANES Health Equity classroom dataset. The original age filter was corrected to include both ages 20 and 80.

## Missingness

Missing values were checked for BMI, Age, IncomeGroup, Gender, Race, and Cycle before creating Table 1.

There were 1,009 missing BMI values and 5,395 missing income group values. The other four variables had no missing values in the adult cohort.

Records with missing income groups were excluded from Table 1. Missing BMI and age values were handled separately when calculating the means and standard deviations.

## Planted Issues

| Issue | Category | Why it matters | Corrected approach |
|---|---|---|---|
| The age filter used `Age > 20` and `Age < 80`. | Correctness | This leaves out people aged exactly 20 and 80, even though they should be included. | Changed the filter to `Age >= 20` and `Age <= 80`. |
| The original code used `na.omit()` on the entire dataset. | Correctness | This removes rows with missing values in any column, including variables not needed for Table 1. | Checked missingness first, excluded missing income groups, and used `na.rm = TRUE` when calculating means and SDs. |
| The BMI and age columns were labelled mean (SD), but the code used `var()`. | Correctness | Variance and standard deviation are different measurements, so the labels did not match the results. | Replaced `var()` with `sd()` and used the `mean_sd()` function. |
| The data-loading code included a Windows-specific file path. | Reproducibility | A file path from one computer may not work in another environment or may point to a different copy of the data. | Used the relative path to the classroom CSV in the repository. |
| Missing values were not reported before the original summary. | Correctness | Without checking missingness, it is difficult to tell how much data was unavailable. | Created a missingness table showing counts and percentages before Table 1. |
| The starter stated that the data was downloaded directly from NHANES the previous week. | Stewardship | This is misleading because we're using a prepared classroom dataset, not a newly downloaded file. | Identified the data as a prepared classroom CSV derived from public-use NHANES data. |
| The interpretation claimed that BMI differences were statistically significant. | Interpretation | No statistical test was performed to support that claim. | Described the differences without claiming statistical significance. |
| The interpretation stated that income determines BMI. | Interpretation | Differences between income groups do not prove that income causes changes in BMI. | Removed the causal claim and explained that the analysis only describes the observed data. |
| The original interpretation called the results complete and publication-ready. | Interpretation | The analysis is unweighted and uses a prepared classroom dataset, so it cannot be treated as a population estimate. | Clarified that the results are descriptive, unweighted, and limited to the classroom dataset. |

## AI-Use Check

AI was used during the classroom exercise to help generate the cohort, missingness, and Table 1 code and to identify errors in the original starter.

The results were checked separately rather than relying only on the AI-generated output. Income group counts were compared using `count(IncomeGroup)`, BMI and age means and SDs were checked using separate `summarise()` calculations, and missing-value counts were checked using `colSums(is.na())`.

The results matched the generated tables. The original interpretation was also revised to remove unsupported claims about statistical significance and causation.
