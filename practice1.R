# Create sample dataframes
df1 <- data.frame(ID = 1:3, 
                  Name = c("Alice", "Bob", "Charlie"))
df2 <- data.frame(ID = 4:6, 
                  Name = c("David", "Eve", "Frank"))

# Merge dataframes row-wise (combine rows)
df <- rbind(df1, df2)
df



# create two dataframes
df1 <- data.frame(
  id = c(1, 2, 3, 4, 5),
  name = c("A", "B", "C", "D", "E")
)
df2 <- data.frame(
  id = c(1, 2, 3, 4, 5),
  name = c("A", "B", "C", "D", "E")
)
df3 <- data.frame(
  id = c(1, 2, 3, 4, 5),
  name = c("A", "B", "C", "D", "E")
)

# merge them into a single dataframe
df <- rbind(df1, df2, df3)
df
