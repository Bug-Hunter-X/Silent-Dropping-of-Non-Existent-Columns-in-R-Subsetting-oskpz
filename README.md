# Silent Dropping of Non-Existent Columns in R Subsetting

This repository demonstrates a subtle but common error in R when subsetting data frames using character vectors that contain column names which do not exist.  R silently drops these non-existent columns, leading to potential errors that can be hard to debug.

## The Bug
The `bug.R` file contains R code that attempts to subset a data frame using a character vector of column names.  However, some of the column names specified do not actually exist in the data frame.  Instead of throwing an error, R quietly ignores these names, and only returns columns that exist. This may be unexpected for users who assume that an error should occur when trying to access a non-existent column.

## The Solution
The `bugSolution.R` file provides a solution using `dplyr` to improve error handling.  This solution verifies that all specified columns exist before subsetting. If any columns do not exist, it will produce an informative error message.

## How to Reproduce
1. Clone this repository.
2. Run `bug.R` to see the unexpected behavior.
3. Run `bugSolution.R` to see the improved error handling with the provided solution.