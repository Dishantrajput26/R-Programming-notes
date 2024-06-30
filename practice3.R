# Load necessary libraries (if not already loaded)
library(ggplot2)

# Create sample dataframes (replace with your actual data)
df1 <- data.frame(x = 1:10, y = rnorm(10))
df2 <- data.frame(x = 11:20, y = rnorm(10))

# List of dataframes
df_list <- list(df1, df2)

# Plot columns from each dataframe
graph <- lapply(df_list, function(df) {
  ggplot(df, aes(x = x, y = y)) +
    geom_point(color = "steelblue", size = 3) +
    labs(x = "X-axis", y = "Y-axis", title = "Scatterplot")
})

# Print the plots
print(graph)
