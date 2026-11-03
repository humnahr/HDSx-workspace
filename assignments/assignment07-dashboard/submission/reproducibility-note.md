# Reproducibility Note

The dashboard was rendered in GitHub Codespaces using the following command:

`quarto render assignments/assignment07-dashboard/submission/dashboard.qmd`

The analysis uses the prepared NHANES Health Equity classroom CSV at `examples/nhanes-equity/data/nhanes_equity_v6.csv`, accessed through a relative file path.

The dashboard rendered successfully in the current Codespace. Changing `selected_income` from Low Income to Middle Income updated the graph, while the revised x-axis label remained visible. The analysis does not require any private credentials or local-only files. Rendering in a separate fresh Codespace has not yet been tested.