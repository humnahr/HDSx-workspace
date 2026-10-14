def summarise_mean_sd(data, value, group1, group2):
    summary = (
        data
        .dropna(subset=[value, group1, group2])
        .groupby([group1, group2], as_index=False)
        .agg(
            n=(value, "size"),
            mean_value=(value, "mean"),
            sd_value=(value, "std")
        )
        .sort_values([group1, group2])
    )

    summary[["mean_value", "sd_value"]] = (
        summary[["mean_value", "sd_value"]].round(2)
    )

    return summary
