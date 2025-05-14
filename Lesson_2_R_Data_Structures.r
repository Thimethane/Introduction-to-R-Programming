# -----------------------------
# Section 1: Basic Vector Creation and Printing
# -----------------------------

# Create a numeric vector and print it
v1 <- c(1, 2, 3, 4)
print(v1)  # Output: 1 2 3 4

# Create a character vector and print it
v2 <- c("This", "is", "absolutely", "fantastic")
print(v2)  # Output: "This" "is" "absolutely" "fantastic"

# Create a logical vector and print it
v3 <- c(TRUE, FALSE, TRUE, FALSE)
print(v3)  # Output: TRUE FALSE TRUE FALSE

# Mixing logical and character values forces coercion to character
v4 <- c(TRUE, FALSE, TRUE, "FALSE")
print(v4)  # Output: "TRUE" "FALSE" "TRUE" "FALSE"

# -----------------------------
# Section 2: Sequences and Sampling
# -----------------------------

# Create a sequence from 1 to 10
seq1 <- 1:10
print(seq1)  # Output: 1 2 3 4 5 6 7 8 9 10

# Create a reverse sequence from 5 to -5
seq1 <- 5:-5
print(seq1)  # Output: 5 4 3 2 1 0 -1 -2 -3 -4 -5

# Default sequence from 1 to 10 with step of 1
print(seq(10))  # Output: 1 2 3 4 5 6 7 8 9 10

# Sequence from 1 to 10 skipping every second number
print(seq(1, 10, 2))  # Output: 1 3 5 7 9

# 20 evenly spaced numbers between 1 and 10
print(seq(1, 10, length = 20))  # Output: Sequence of 20 evenly spaced numbers

# Sequence with step of 0.1
print(seq(from = 1, to = 10, by = 0.1))  # Output: 1.0 1.1 ... 9.9 10.0

# Random sample from 1 to 10 without replacement
print(sample(1:10))  # Output: Random permutation of 1 to 10

# -----------------------------
# Section 3: Type Coercion and NA Handling
# -----------------------------

# Coerced to character because of mixed data types
v4 <- c(TRUE, FALSE, TRUE, "FALSE")
print(typeof(v4))  # Output: "character"
print(length(v4))  # Output: 4

# Create a vector with missing values
x <- c(0.5, 0.7, NA)
print(x)  # Output: 0.5 0.7 NA

# Another example with missing value
x <- c("a", NA, "c", "d", "e")
print(is.na(x))  # Output: FALSE TRUE FALSE FALSE FALSE
print(anyNA(x))  # Output: TRUE

# -----------------------------
# Section 4: Vector Arithmetic and Logical Operations
# -----------------------------

# Create a numeric vector
v <- c(25, 9, 16, 4)

# Compute and print mean
print(mean(v))  # Output: Mean value

# Compute and print square root of each element
print(sqrt(v))  # Output: Element-wise square roots

# Maximum and minimum of the vector
print(max(v))  # Output: 25
print(min(v))  # Output: 4

# Sum of elements
print(sum(v))  # Output: Total sum

# Sort vector ascending and descending
print(sort(v))  # Output: 4 9 16 25
print(sort(v, decreasing = TRUE))  # Output: 25 16 9 4

# Frequency table
print(table(c(20, 30, 50, 20, 40, 10, 40, 20)))  # Output: frequencies of unique values

# Logical comparisons
print(v > 10)  # Output: TRUE FALSE TRUE FALSE
print(any(v > 10))  # Output: TRUE
print(all(v > 10))  # Output: FALSE
print(which(v > 10))  # Output: Indices where condition is TRUE
print(sum(v > 10))  # Output: Count of TRUE

# -----------------------------
# Section 5: Indexing and Subsetting
# -----------------------------

# Create a vector of items
items <- c(5, 10, 15, 20, 25, 30, 35, 40)
print(items[1])  # First element
print(items[3])  # Third element
print(items[-3])  # All except third
print(items[1:2])  # First and second elements
print(items[c(1, 4)])  # First and fourth elements
print(items[c(1, 3, 1)])  # First, third, first again
print(items[-1:-2])  # All except first and second

# Modify items vector
items[2] <- 100  # Set second item to 100
print(items)
items[-2] <- 0  # Set all except second to 0
print(items)

# Reset and divide each item by 5
items <- c(5, 10, 15, 20, 25, 30, 35, 40)
print(items / 5)  # Element-wise division

# Element-wise multiplication
print(c(1, 2, 3) * c(2, 4, 6))  # Output: 2 8 18

# -----------------------------
# Section 6: Logical Operations Between Vectors
# -----------------------------

# Square of a sequence
my_vec <- 1:12
sqr_vec <- my_vec^2
print(sqr_vec)

# AND operation
print(c(FALSE, TRUE, FALSE) & c(TRUE, TRUE, TRUE))  # Output: FALSE TRUE FALSE

# OR operation
print(c(FALSE, TRUE, FALSE) | c(TRUE, TRUE, TRUE))  # Output: TRUE TRUE TRUE

# Complex condition
v <- c(25, 9, 16, 4)
print((v < 5) | (v > 20))  # Output: TRUE FALSE TRUE TRUE
print(v[(v < 5) | (v > 20)])  # Filtered values

nums <- 1:10
print(nums[(nums < 4) | (nums > 8)])  # Output: 1 2 3 9 10

# -----------------------------
# Section 7: Named Vectors and Lists
# -----------------------------

groceries <- c("milk" = 3.56, "bread" = 4.29, "rice" = 5.98)
print(groceries["rice"])
print(groceries[c("rice", "bread")])

L <- list("a", 1, 2.5, TRUE)
print(L[4])  # Access fourth item
print(L[2:3])  # Access second and third items

a_list <- list("San Francisco" = 1, "Santa Clara" = 2, "San Jose" = 3)
print(a_list["San Jose"])

# -----------------------------
# Section 8: Matrices
# -----------------------------

print(matrix(1:12, nrow = 3, ncol = 4))
print(matrix(1:12, nrow = 3))
print(matrix(1:12, ncol = 2))

print(rbind(c(1, 2, 3), c(4, 5, 6)))  # Row bind
print(cbind(c(1, 2, 3), c(4, 5, 6)))  # Column bind

nums <- matrix(1:12, 3, 4)
print(dim(nums))  # Dimensions
print(nrow(nums))  # Row count
print(ncol(nums))  # Column count

# Accessing matrix elements
nums <- matrix(1:12, 3, 4)
print(nums[2, 3])  # Element in 2nd row, 3rd col
print(nums[1:2, 3:4])  # Sub-matrix
print(nums[-3, -1:-2])  # Remove row 3 and cols 1-2
print(nums[2, ])  # All cols of row 2
print(nums[, 4])  # All rows of column 4

# Add names to matrix
colnames(nums) <- c("col1", "col2", "col3", "col4")
rownames(nums) <- c("row1", "row2", "row3")
print(nums["row1", ])
print(nums[, c("col2", "col4")])
print(nums[c("row2", "row3"), c("col1", "col4")])

# Named matrix example
states <- matrix(21:40, 4, 5)
colnames(states) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
rownames(states) <- c("California", "Texas", "Florida", "New York")
print(states)

# -----------------------------
# Section 9: Data Frames
# -----------------------------

df <- data.frame(
  name = c("Carl", "Diane", "Sally", "Ben", "Kimmy"),
  age = c(42, 40, 17, 14, 12),
  sex = c("Male", "Female", "Female", "Male", "Female")
)

print(df)
print(dim(df))  # Dimensions
print(nrow(df))  # Rows
print(ncol(df))  # Columns
print(colnames(df))  # Column names

print(df[1:2, ])  # First two rows
print(df[c(1, 3), ])  # First and third rows
print(df[c(1, 3)])  # First and third columns
print(df["name"])  # Column "name" as dataframe
print(df$name)  # Column "name" as vector
print(df[c("sex", "age", "name")])  # Custom column order
print(df[1:2, 1:2])  # Subset by indices
print(df[1:2, c("name", "age")])  # Subset by names
print(df[-3:-5, -3])  # Remove specific rows and column

# Filter rows based on condition
print(df$age < 18)  # Logical vector
print(df[df$age < 18, c("age", "name")])  # Filtered rows and columns

# Combined conditions
print((df$age < 18) & (df$sex == "Female"))
print(df[(df$age < 18) & (df$sex == "Female"), ])  # Apply filter
print(df[(df$age > 30) & (df$sex == "Male"), -1])  # Filter and exclude column
