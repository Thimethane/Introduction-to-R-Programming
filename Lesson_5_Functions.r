# -----------------------------
# Section: Function Definitions and Applications in R
# -----------------------------

# Define a basic function without arguments
# This function simply prints "Hello!"
greeting <- function() {
  print("Hello!")
}

# Call the function with no arguments
greeting()  # Output: "Hello!"

# Redefine the function to accept one parameter (word)
# This version prints the word passed as an argument
greeting <- function(word) {
  print(word)
}

# Call the function with one argument
greeting("Howdy!")  # Output: "Howdy!"

# Redefine the function to accept two parameters
# Repeats the word 'num_times' using a for loop
greeting <- function(word, num_times) {
  for(i in 1:num_times) {
    print(word)
  }
}

# Call the function to print "Howdy!" five times
greeting("Howdy!", 5)

# Define the function again with default argument values
# 'word' defaults to "Hi!", 'num_times' defaults to 2
greeting <- function(word = "Hi!", num_times = 2) {
  for(i in 1:num_times) {
    print(word)
  }
}

# Call the function with no arguments (uses defaults)
greeting()  # Output: "Hi!" printed twice

# Call the function with both arguments provided
greeting("Hey There!", 3)  # Output: "Hey There!" printed three times

# Call with only one argument; uses default for 'num_times'
greeting("Hola!")  # Output: "Hola!" printed twice

# -----------------------------
# Section: Conditional Function - Odd or Even
# -----------------------------

# This function checks whether to return odd or even numbers based on 'bin'
# bin = 0 returns even numbers; bin = 1 returns odd numbers
# Any other value for bin prints an error message
odd_or_even <- function(vec, bin) {
  if (bin == 0) {
    cat("Even numbers:", vec[vec %% 2 == 0], "\n")
  } else if (bin == 1) {
    cat("Odd numbers:", vec[vec %% 2 != 0], "\n")
  } else {
    cat("Error: The second parameter must be 0 or 1.\n")
  }
}

# Example vector of integers
numbers <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# Call function to print even numbers
odd_or_even(numbers, 0)

# Call function to print odd numbers
odd_or_even(numbers, 1)

# -----------------------------
# Section: Early Exit from Function using return()
# -----------------------------

# This function prints each word in the vector until it encounters "Bye"
# When "Bye" is found, the function returns immediately with "Bye"
greetings <- function(words) {
  for (word in words) {
    if(word == "Bye") {
      return("Bye")  # Early termination
    } else {
      print(word)
    }
  }
}

# Call the function with no "Bye" included
greetings(c("Hello", "Howdy", "Hi", "Hola"))

# Call the function where "Bye" is included; it exits on "Bye"
greetings(c("Hello", "Bye", "Howdy", "Hi", "Hola"))

# -----------------------------
# Section: Applying Functions to Vectors and Matrices
# -----------------------------

# Define a simple function to return the square of a number
square_num <- function(x) {
  return(x^2)
}

# Use sapply to apply 'square_num' to each element of a vector
sapply(c(2, 4, 6, 8), FUN = square_num)  # Output: 4 16 36 64

# Create a 6x2 matrix with values from 1 to 12
mat <- matrix(1:12, 6, 2)
print(mat)

# Use apply() to compute the mean of each column (MARGIN = 2)
apply(mat, MARGIN = 2, FUN = mean)  # Output: column means

# -----------------------------
# Section: Accessing Documentation
# -----------------------------

# Access documentation/help page for sapply
?sapply()

# Access documentation/help page for read.table
help(read.table)
