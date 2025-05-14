# ----------------------------
# Section: Importing and Exploring Heart Disease Dataset
# ----------------------------

# Load necessary libraries (optional but good practice for data handling)
library(tidyverse)  # Provides readr, dplyr, ggplot2, etc.

# Define the file path in a variable for easy reuse and maintenance
file_path <- "data/heart_disease.csv"

# Check if the file exists before attempting to read
if (file.exists(file_path)) {

  # ----------------------------
  # Read the CSV file using read.csv()
  # ----------------------------
  df <- read.csv(file_path, stringsAsFactors = FALSE)  # Avoid automatic factor conversion
  cat("File successfully loaded using read.csv()\n")

  # View the structure and the first few rows of the data
  str(df)         # Understand the structure (column types and names)
  head(df)        # View the first 6 rows
  head(df, 15)    # View the first 15 rows
  tail(df)        # View the last 6 rows

  # ----------------------------
  # Basic Exploratory Checks
  # ----------------------------

  # Check column names
  print(colnames(df))

  # Summary statistics to understand numeric columns
  summary(df)

  # Check for missing values in the entire dataset
  cat("Any missing values in dataset:", anyNA(df), "\n")
  colSums(is.na(df))  # Show count of NA values per column

  # View unique values in the 'sex' column (e.g., Male=1, Female=0)
  unique(df$sex)

  # Count the frequency of each category in the 'sex' column
  sex_distribution <- table(df$sex)
  print(sex_distribution)

  # Create a proportion table (optional insight)
  print(prop.table(sex_distribution))

  # ----------------------------
  # Read the same file using read.table() for comparison
  # ----------------------------
  df_table <- read.table(file_path, sep = ",", header = TRUE, stringsAsFactors = FALSE)
  cat("File successfully loaded using read.table()\n")

  # Preview the data imported via read.table()
  head(df_table)

  # Compare the two data frames to ensure they are identical
  cat("Are df and df_table identical? ", identical(df, df_table), "\n")

} else {
  cat("Error: File not found at path:", file_path, "\n")
}
