# AI Use Note

AI was used throughout the visualization exercise to help with R code, understanding the changes between the original and corrected graph, and setting up the Quarto report. The prompts mainly focused on how to apply the changes in R and resolve issues that came up while running the code.

### 1. Developing the corrected visualization

**Prompt:** "How can the ggplot code be changed to show mean BMI across all NHANES cycles instead of just connecting the first and last? Keep the graph descriptive and make sure the labels match what's actually being measured."

**AI response:** Suggested removing `Cycle %in% endpoint_cycles`, adding the age restriction, calculating group sizes, and removing the fixed y-axis limits. The title and caption were also updated to describe mean BMI without suggesting causation.

### 2. Understanding the code changes

**Prompt used:** "Clarify which code changed."

**AI response:** Explained the changes made to `filter()`, `summarise()`, `scale_y_continuous()`, and `labs()`, including how each affected the graph.

### 3. Creating the Quarto report

**Prompt:** "How can the corrected R script be included in a Quarto report without rewriting the code?"

**AI response:** Suggested using `source()` in `visualization-audit.qmd` to run the existing `corrected-plot.R` script and display the graph.

### 4. Resolving the rendering error

**Prompt:** "The Quarto report can't find corrected-plot.R even though the file is in the submission folder. How should the source path be written?"

**AI response:** Explained how Quarto handles relative file paths and suggested adjusting the `source()` path. The report rendered successfully after the path was corrected.

### Final result

The corrected BMI graph was generated in R, and `visualization-audit.qmd` rendered successfully into HTML. The results were described as unweighted and descriptive, without making causal claims.