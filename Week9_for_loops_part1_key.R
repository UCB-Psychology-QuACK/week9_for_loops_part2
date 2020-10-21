# Quack 2020
# Week 9 - For Loops pt. 2
# Elena Leib & Willa Voorhies



#### Set global options ####
options(stringsAsFactors = FALSE)

##### Import Packages #####
library(tidyverse)
library(tidylog)




#### Practice ####

# 1) Write a for loop to print the numbers 1 through 10
for(i in 1:10) {
  print(i)
}

# Additional class example:
# Print out all the elements in the vector names
names <- c("Elena", "Willa", "Breanna", "Samira", "Natalie")

# There are two ways you can set up the for loop to do this.

# The first way is setting up the for loop similar as in problem 1. 
# We want i to take on the values 1 through the lenght of the vector names so that we can use i to index names, and get out each of the names.
for(i in 1:length(names)){
  print(names[i])
}

# The second way is by using this syntax that is special to R, below.
# We don't need to create a variable i that is an integer to iterate through each index of names,
# we can actually directly "access" the content of names by saying name in names, and the 
# variable name will take on each value in the vector names.
# We could call the variable name anything, even i! We call it names here since it is a 
# common naming convention
for (name in names){
  print(name)
}



# 2) Print the following pattern
# 1 
# 1 2 
# 1 2 3 
# 1 2 3 4 
# 1 2 3 4 5

for(i in 1:5) {
  print(1:i)
}


# 3) Print the multiplication table for a given number (table should be 1 through 10)
# For example, let num = 2 to start

num <- 2
for(i in 1:10) {
  print(num * i)
}


# 4) For a given number, calculate the sum of all the numbers between 1 and the given number. Print out the running total after you add the next number.
# Hint: How will you store the running sum?

num <- 15
running.sum <- 0
for(i in 1:num) {
  running.sum = running.sum + i
  print(running.sum)
}
print(running.sum)

# You could also do sum(1:num) to just get the total (though we can't print out the running total this way)
sum(1:num)


# 5) Find the sum of the vector x.
x <- c(5, 15, 18, 19, 21, 23, 54)

# There are two ways we can do this!
# First with a for loop
sum.x <- 0
for(i in 1:length(x)) {
  sum.x <- sum.x + x[i]
}
print(sum.x)

# Here is another way with a for loop
sum.x <- 0
for(num in x) {
  sum.x <- sum.x + num
}
print(sum.x)


# Second way
sum(x) 
# Ahhh so easy! 
# So great that R has these built-in vectorized functions and that we don't always need to write a for loop every time we need to calculate a sum!



# 6) Print the message "Done" after printing all the numbers 1 to 5
# The print call should be inside of the for loop!

for(i in 1:5) {
  print(i)
  if(i == 5) {
    print("Done!")
  }
}



# 7) Write a program that prints the numbers from 1 to 100. But for multiples of three print "Fizz" instead of the number and for the multiples of five print "Buzz". For numbers which are multiples of both three and five print "FizzBuzz"
# Hint #1: Look up the modulus operator (%% in R, also referred to as mod)
# Hint #2: 4 %% 2 == 0, 5 %% 2 == 1, 6 %% 2 == 0, 7 %% 2 = 1


for(i in 1:100) {
  if(i %% 3 == 0 & i %% 5 == 0){
    print("FizzBuzz")
  } else if (i %% 3 == 0) {
    print("Fizz")
  } else if (i %% 5 == 0) {
    print("Buzz")
  } else {
    print(i)
  }
  
}


# You can also write it like this (you don't need the brackets if it is going to be )

for(i in 1:100) {
  if(i %% 3 == 0 & i %% 5 == 0) print ("FizzBuzz")
  else if(i %% 3 == 0) print("Fizz")
  else if(i %% 5 == 0) print("Buzz")
  else(print(i))
}

# You can also replace the conditional i %% 3 == 0 & i %% 5 == 0 with i %% 15 == 0


# And finally, this also gets you the same expected behavior!
# The if statements here are "nested" (there is an if/else conditional within another if/else conditional!)

for(i in 1:100) {
  if(i %% 3 == 0 | i %% 5 == 0) {
    if(i %% 3 == 0 & i %% 5 == 0) { # Or could use i %% 15 == 0 here
      print("FizzBuzz")
    } else if (i %% 3 == 0) {
      print("Fizz")
    } else {
      print("Buzz")
    }
  } else {
    print(i)
  }
}



# Additional problem from last week:
# Print the lyrics to the song "The Hokey Pokey"!
# Sample lyrics: 
# Put your left foot in
# You take your left foot out
# You put your left foot in
# And you shake it all about
# You do the hokey pokey
# And turn yourself around
# That's what it's all about!

# ... and right foot, and head, and left hand, and right hand, and tongue!

body_parts <- c("right foot", "left foot", "head", "left hand", "right hand", "tongue")

for(bp in body_parts) {
  print(paste0("Put your ", bp, " in"))
  print(paste0("Take your ", bp, " out"))
  print(paste0("Put your ", bp, " in"))
  print("And you shake it all about")
  print("You do the hokey pokey")
  print("And you turn yourself about")
  print("That's what it's all about!")
  print("")
}