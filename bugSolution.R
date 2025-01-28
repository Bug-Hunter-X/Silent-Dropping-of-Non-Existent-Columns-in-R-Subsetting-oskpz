```r
library(dplyr)

# This improved code uses dplyr to handle the case where some columns to select may not exist in the dataframe.
data <- data.frame(A = 1:3, B = 4:6)
cols_to_select <- c("A", "C", "D")

# Check if all columns exist, raise an error if not
if (!all(cols_to_select %in% names(data))) {
  stop("Error: Some columns to select do not exist in the data frame.")
}

#Safely subset the data using dplyr
subset_data <- data %>% select(all_of(cols_to_select))
```