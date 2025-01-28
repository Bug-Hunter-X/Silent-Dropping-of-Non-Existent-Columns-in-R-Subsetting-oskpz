```r
# This code attempts to subset a data frame using a character vector
# containing column names that don't exist.
data <- data.frame(A = 1:3, B = 4:6)
cols_to_select <- c("A", "C", "D")
subset_data <- data[, cols_to_select]
```