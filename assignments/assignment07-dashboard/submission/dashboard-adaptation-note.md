# Dashboard Adaptation Note

## Audience

The intended audience is a public health analyst reviewing BMI patterns across income groups. The dashboard would help them understand how average BMI varies across different NHANES survey cycles.

## Dashboard Question

How does average BMI vary across NHANES cycles among adults aged 20–80 within a selected income group?

## Control

The dashboard uses `selected_income` to select a low, middle, or high income group. Changing this value and rendering the file again updates the table and graph.

## Visualization

The line graph shows average BMI across NHANES cycles for the selected income group. The table also shows the number of records and mean BMI for each cycle.

## Adaptation

The x-axis label was changed from "NHANES cycle" to "Survey period (NHANES cycle)" to make it easier to understand.

## KT Rationale

This change helps readers who may not be familiar with NHANES understand what the x-axis represents without changing the actual analysis.