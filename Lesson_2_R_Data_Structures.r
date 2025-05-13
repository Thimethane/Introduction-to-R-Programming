v1  <-  c(1,2,3,4)
v1

v2 <- c("This", "is", "absolutely", "fantastic")
v2

v3  <-  c(TRUE, FALSE, TRUE, FALSE)
print(v3)

v4  <-  c(TRUE, FALSE, TRUE, "FALSE")
print(v4)

# Create a vector from the sequence of numbers 1 through 10 (inclusive):

seq1 <- 1:10
print(seq1)

# Create a vector of numbers beginning from 5 and counting down through (and including) -5:

seq1 <- 5:-5
print(seq1)

# Create a vector of 10 numbers beginning from 1:

seq(10)

# Create a vector of numbers from 1 through 10, but skipping every second number:

seq(1, 10, 2)

# Create a vector of 20 numbers, evenly spaced between the numbers 1 through 10:

seq(1, 10, length=20)

# Create a vector of numbers from 1 through 10, stepping every 0.1:

seq(from = 1, to = 10, by = 0.1)

# Create a vector by drawing from a sample of numbers from 1 through 10, without replacement:

sample(1:10)

# Mixed data types coerced to a single data type:

v4  <-  c(TRUE, FALSE, TRUE, "FALSE")

typeof(v4)

length(v4)

x <- c(0.5, 0.7, NA)

# Variable containing a vector with a misssing value
x

# Try this.

x <- c("a", NA, "c", "d", "e")

# Variable containing a vector with a misssing value
x

# Test each value in a vector as to whether it is missing or not:

x <- c("a", NA, "c", "d", "e")

# x is the variable containing a vector with a missing value
is.na(x)

x <- c("a", NA, "c", "d", "e")

# x is the variable containing a vector with a misssing value
anyNA(x)

# Create a vector "v":

v = c(25, 9, 16, 4)
v

# Return the mean value of the vector

mean(v)

# Return the square root of each value in the vector

sqrt(v)

# Return the maximum value in the vector

max(v)

# Return the smallest value in the vector

min(v)

# Return the sum of the values in the vector

sum(v)

# Sort the values in a vector in ascending order

sort(v)

# Sort the values in a vector in descending order

sort(v, decreasing=TRUE)

# Count the frequency of occurrence for each element in a vector:

table(c(20,30,50,20,40,10,40,20))

# Test each value in the vector v as to whether it is greater than 10 or not (returns TRUE or FALSE):

v = c(25, 9, 16, 4)

v > 10

# any() returns TRUE if any of the logicals are TRUE:

any(v > 10)

# all() returns TRUE if all of the logicals are TRUE:

all(v > 10)

# which() returns the indices/locations of the TRUE values (interpreted as as "Which index positions are TRUE?"):

which(v > 10)

# sum() returns the number of logicals that are TRUE:

sum(v > 10)

# Create a vector named "items":

items <- c(5,10,15,20,25,30,35,40)
items

# Return the first element in the vector; the element at index position 1:

items[1]

# Return a vector containing the third element:

items[3]

# A negative value means to exclude the index position.
# Return a vector with everything except the third element:

items[-3]

# Return a vector with the first through second elements (inclusive):

items[1:2]

# You can use a vector to do the subsetting (particularly when the indices are non-consecutive).
# Return a vector with the first and fourth elements:
                                                         
items[c(1,4)]                                                     

# Return a vector with the first, third, and first element again:

items[c(1,3,1)]

# Return a vector without the first through second elements:

items[-1:-2]

# Create a vector named "items":

items <- c(5,10,15,20,25,30,35,40)
items

# Assign 100 to the item at index position 2:

items[2] <- 100
items

# Assign 0 to every index position except 2:

items[-2] <- 0
items

# Create a vector named "items":

items <- c(5,10,15,20,25,30,35,40)
items

# Divide each item in a vector by 5, and return a new vector containing the result

items/5

# Multiply two vectors together (element-wise).  Return a new vector with the results:

c(1,2,3) * c(2,4,6)

my_vec <- c(1:12)
sqr_vec  <- my_vec^2
sqr_vec

# & is the "AND" operation in R.
# Return TRUE where each item at a given index position between the vectors is TRUE:

c(FALSE, TRUE, FALSE) & c(TRUE, TRUE, TRUE)

# | is the "OR" operation in R.
# Return TRUE where either item at a given index position between the vectors is TRUE:

c(FALSE, TRUE, FALSE) | c(TRUE, TRUE, TRUE)

# Create the vector "v":

v = c(25, 9, 16, 4)

# Test whether a value in the vector v is either less than 5 or (|) greater than 20:
(v < 5) | (v > 20)

# Place the logical operation from above between the square brackets of "v" to return the actual values.
# In otherwords, v will return any value whose index position is TRUE:

v[(v < 5) | (v > 20)]

nums <- c(1:10)
nums[(nums < 4) | (nums > 8)]

# Create a vector giving names to each element:

groceries <- c("milk"=3.56, "bread"=4.29, "rice"=5.98)
groceries

# Place the element's name within the square brackets of the vector to return its value:

groceries["rice"]

# Use a vector of names to return more than one element's value:

groceries[c("rice", "bread")]

L <- list("a", 1, 2.5, TRUE)
L

L[4]

L[2:3]

a_list <- list("San Francisco"= 1, "Santa Clara" = 2, "San Jose" = 3)
a_list

a_list["San Jose"]

matrix(1:12, nrow=3, ncol=4)

matrix(c(1:12), nrow = 3)

matrix(c(1:12), ncol = 2)

rbind(c(1,2,3), c(4,5,6))

cbind(c(1,2,3), c(4,5,6))

nums <- matrix(1:12, 3, 4)

dim(nums)

nums <- matrix(1:12, 3, 4)

nrow(nums)

nums <- matrix(1:12, 3, 4)

ncol(nums)

# Create a matrix named "nums":

nums <- matrix(1:12, 3, 4)
nums

# Return the element located in the second row of the third column:

nums[2,3]

# Return rows 1 and 2 of columns 3 and 4:

nums[1:2, 3:4]

# An alternative way to get the same results as above...
# Return all rows except the third, and all columns except the first and second:

nums[-3, -1:-2]

# Return just row two (must be followed by a comma) and all of the columns:

nums[2, ]

# Return just column four (must be preceded by a comma) and all of the rows:

nums[, 4]

colnames(nums) <- c("col1", "col2", "col3", "col4")
nums

rownames(nums) <- c("row1", "row2", "row3")
nums

states <- matrix(21:40, 4, 5)
colnames(states) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
rownames(states) <- c("California", "Texas", "Florida", "New York")
states

# Create a matrix with named rows and columns:

nums <- matrix(1:12, 3, 4)
colnames(nums) <- c("col1", "col2", "col3", "col4")
rownames(nums) <- c("row1", "row2", "row3")

nums

# Return "row1" and every column:

print(nums["row1",])

# Return all rows and just "col2" and "col4":

nums[, c("col2","col4")]

# Return "row2" and "row3" of "col1" and "col4":

nums[c("row2", "row3"), c("col1","col4")]

df <- data.frame(name=c("Carl","Diane","Sally","Ben","Kimmy"),
                 age=c(42,40,17,14,12),
                 sex=c("Male","Female","Female","Male","Female"))

df

dim(df)

nrow(df)

ncol(df)

colnames(df)

# Create a data frame:

df <- data.frame(name=c("Carl","Diane","Sally","Ben","Kimmy"),
                 age=c(42,40,17,14,12),
                 sex=c("Male","Female","Female","Male","Female"))

df

# Return the first two rows with all of the columns:

df[1:2, ]

# Return the first and third row (with all of the columns); a comma follows the vector so it indicates rows):

df[c(1,3), ]

# Return the first and third columns (with all of the rows); no comma follows the vector so it indicates columns:

df[c(1, 3)] 

# Return the column named "name" with all of the rows (returns a data frame):

df["name"]

# Return the column named "name" with all of the rows (using "$" returns the vector):

df$name

# Using a vector for the names of the columns returns those columns in the selected order (with all of the rows):

df[c("sex", "age", "name")] 

# Return the first two rows of the first two columns:

df[1:2, 1:2]

# Return the first two rows of the columns named "name" and "age":

df[1:2, c("name", "age")]

# Another way to return the same values as above.
# Return all rows except the third through the fifth, and all columns except the third one:

df[-3:-5, -3]

# Here, you are asking each value in the column "age" if it is less than 18:

df$age < 18

# By placing the logical expression from above within the square brackets of the data frame, 
# only the TRUE rows will be returned.


# Return the rows where the column "age" is less than 18, and return the columns "age" and "name": 

df[df$age < 18, c("age", "name")]

# Here, you are asking the data frame which rows have an "age" less than 18 AND a "sex" equivalent to "Female":
(df$age<18) & (df$sex=="Female")

# By placing the logical expression from above between the square brackets of the data frame,
# you will return the rows where "age" is less than 18 AND "sex" is "Female", and all of the columns: 

df <- data.frame(name=c("Carl","Diane","Sally","Ben","Kimmy"),
                 age=c(42,40,17,14,12),
                 sex=c("Male","Female","Female","Male","Female"))

df[(df$age<18) & (df$sex=="Female"), ]

df[(df$age>30) & (df$sex=="Male"), -1]
