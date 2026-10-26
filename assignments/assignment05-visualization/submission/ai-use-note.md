# AI Use Note

AI was used throughout the visualization exercise to help with correcting the R code, understanding the changes between the original and corrected graph, and setting up the Quarto report. The prompts mainly focused on applying the changes and resolving issues that came up while running the code.

### 1. Developing the corrected visualization

**Prompt summary:** How can the ggplot code be changed to show mean BMI across all NHANES cycles instead of just connecting the first and last? Keep the graph descriptive and make sure the labels match what's being measured.

**Verified:** The `Cycle %in% endpoint_cycles` filter was removed, the age restriction was added, and the fixed y-axis limits were removed. The corrected graph was run in R and displayed the available NHANES cycles.

### 2. Understanding the code changes

**Prompt used:** "Clarify which code changed."

**Verified:** Compared the original and corrected R code to confirm the changes to `filter()`, `summarise()`, `scale_y_continuous()`, and `labs()`.

### 3. Creating the Quarto report

**Prompt summary:** How can the existing corrected R script be included in a Quarto report without rewriting the code?

**Verified:** The `source()` function was added to `visualization-audit.qmd` to run `corrected-plot.R`. The report successfully displayed the corrected visualization.

### 4. Resolving the rendering error

**Prompt summary:** The Quarto report couldn't find `corrected-plot.R` even though the file was in the submission folder. How should the file path be corrected?

**Verified:** The submission folder contents were checked, the `source()` path was adjusted, and `visualization-audit.qmd` rendered successfully into HTML.

### AI Code Comments

The following comment pairs are included in the corresponding assignment files.

**corrected-plot.R**

**# AI prompt:** Help correct the BMI visualization to include all NHANES cycles, apply the age filter, and update the labels.

**# Verified:** Compared the original and corrected code and ran the updated plot in R.

**visualization-audit.qmd**

**# AI prompt:** Help include the corrected BMI visualization in a Quarto report using the existing R script.

**# Verified:** The corrected plot displayed in R and the HTML report rendered successfully in Codespaces.

### Final Result

The corrected BMI visualization was generated in R and included in the rendered Quarto report. The graph includes the available NHANES cycles, applies the age restriction, and explains the missing-data exclusions. The results remain unweighted and descriptive, without making claims about causation or nationally representative estimates.