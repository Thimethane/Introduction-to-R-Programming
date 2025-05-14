# ----------------------------
# Section: Conditional Statements and Loops in R
# ----------------------------

# Assign a value to variable x
x <- 12

# Check if x is greater than 0
if(x > 0) {
  print("x is a positive number")  # Output will be printed since 12 > 0
}

# ----------------------------
# Nested if Statement for User Authentication
# ----------------------------

# Assign credentials
username = "Samantha"
password = "sams_pass"

# Check if username and password are correct
if(username == "Samantha") {
  if(password == "sams_pass") {
    cat("Welcome back, ", username, "!\n")  # Concatenate and display welcome message
  }
}

# ----------------------------
# if...else if...else Control Flow
# ----------------------------

# Conditional chain to classify age group
age <- 9

if(age < 10) {
  print("Just a kid.")  # True for age 9
} else if (age < 16) {
  print("Can't drive yet!")
} else if (age < 21) {
  print("No drinking for you!")
}

# Reuse with a different age
age <- 25

if (age < 10) {
  print("Just a kid.")
} else if (age < 16) {
  print("Can't drive yet!")
} else if (age < 21) {
  print("No drinking for you!")
} else {
  print("You're good to go!")  # Executes this block
}

# ----------------------------
# for Loops in R
# ----------------------------

# Loop through a numeric vector and print each value
for(number in c(2, 4, 6, 8)) {
  print(number)  # Prints 2, 4, 6, 8 sequentially
}

# Repeating the same action a set number of times
for(number in c(2, 4, 6, 8)) {
  print("Hello!")  # Prints "Hello!" four times
}

# ----------------------------
# Indexed for Loop Using Length
# ----------------------------

# Vector with numeric values
vec <- c(5, 10, 15, 20)

# Iterate through the vector using index
for(i in 1:length(vec)) {
  cat("Item at index", i, "is", vec[i], "\n")  # \n for new line
}

# ----------------------------
# Using seq_along() for Safer Indexing
# ----------------------------

# Repeat the previous loop using seq_along (avoids issues with NULL)
vec <- c(5, 10, 15, 20)

for(i in seq_along(vec)) {
  cat("Item at index", i, "is", vec[i], "\n")
}

# ----------------------------
# Simple for Loop with Constant Output
# ----------------------------

# Loop through numbers 1 to 10
for(choice in 1:10) {
  print("Yes!")  # Prints "Yes!" ten times
}

# ----------------------------
# Conditional Logic Inside a Loop
# ----------------------------

# Sample vector of scores
samp_vec <- c(63, 81, 72, 56, 92, 75)

# Evaluate each number and categorize as "Pass" or "Fail"
for(num in samp_vec) {
  if(num < 75) {
    print("Fail")  # If less than 75
  } else {
    print("Pass")  # If 75 or more
  }
}
