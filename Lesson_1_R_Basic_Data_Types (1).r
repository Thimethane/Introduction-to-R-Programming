3+2

3-2

3*2

3/2

# Modulus: returns the remainder after division

3%%2

# Exponent

3^2

4^2*3

# Single or double quotes are fine...

'This is fun!'

# If an apostrophe is used, then double quotes are required.

"Isn’t this fun?"

paste("Here we go", "again!")

paste("look", "here", sep="_")

print("Let's print some R!")

# Setting the quote parameter to FALSE removes the quotes from the output.

print("Let's print some R!", quote = FALSE)

# Using the noquote() function prevents quotes from being output.

noquote("Let's print some R!")

# Assigning a value to a variable:

introduction <- "R here!"
print(introduction)

introduction <- "Hiya, I'm R!"
print(introduction)

# Try the shortcut here.

# Win: alt + -
# Mac: option + -
 <-

# Format output (spaces are automatically added between items)

men <- 32
women <- 27

# Assigning the sum of the variables men and women to the variable num_participants.
num_participants <- men+women


# Concatenating the variable num_participants with two character strings and returning the output.
cat("There are", num_participants, "individuals currently participating in the study.")

TRUE

T

# Must be in all caps. True or False will return an error.

FALSE

F

5 < 2

5 > 2

5 <= 2

5 >= 2

5 == 2

5 != 2

# Not FALSE

!FALSE

"meme" == "meme"

"meme" == "memo"

# True and True

TRUE & TRUE

# True and False

TRUE & FALSE

# False and False

F & F

# True or False

T | F

# TRUE  &  TRUE

(5 > 2) & (2 < 5)

# FALSE   |    FALSE

(3 > 10)  |  (3 > 20)

# FALSE    |  TRUE

(12 == 8)  |  13

cats <- 2
dogs <- 3
pets <- cats+dogs
print(pets)

cat("We have", pets, "pets: ", cats, "cats and ", dogs, "dogs")

length_of_sides <- 8
area  <-  length_of_sides^2
perimeter <-  length_of_sides*4
cat("The area is:", area, "And the perimeter is:", perimeter)
