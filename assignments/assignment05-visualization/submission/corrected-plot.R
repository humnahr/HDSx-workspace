library(tidyverse)

# AI prompt: Help correct the BMI visualization to include all NHANES cycles, apply the age filter, and update the labels.
# Verified: Compared the original and corrected code and ran the updated plot in R.

nhanes <- read_csv(
  "examples/nhanes-equity/data/nhanes_equity_v6.csv",
  show_col_types = FALSE
)

bmi_by_income_cycle <- nhanes |>
  filter(
    !is.na(BMI),
    !is.na(IncomeGroup),
    !is.na(Cycle),
    Age >= 20,
    Age <= 80
  ) |>
  group_by(Cycle, IncomeGroup) |>
  summarise(
    n = n(),
    mean_bmi = mean(BMI),
    .groups = "drop"
  ) |>
    filter(n >= 30)

# Corrected visualization: descriptive BMI by income group
bmi_plot <- ggplot(
  bmi_by_income_cycle,
  aes(
    x = Cycle,
    y = mean_bmi,
    color = IncomeGroup,
    group = IncomeGroup
  )
) +
  geom_line(linewidth = 1.1) +
  geom_point(size = 2.5) +
  scale_color_brewer(palette = "Dark2") +
  labs(
    title = "Mean BMI by income group across NHANES cycles",
    subtitle = "Adults aged 20–80; unweighted descriptive averages",
    x = "NHANES cycle",
    y = "Mean BMI (kg/m²)",
    color = "Income group",
    caption = paste(
      "Missing BMI, income group, or cycle values excluded;",
      "groups with n < 30 omitted.",
      "\nUnweighted descriptive analysis; not a nationally",
      "representative estimate or evidence of causation."
    )
  ) +
  theme_minimal(base_size = 12) +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1),
    legend.position = "bottom"
  )

print(bmi_plot)