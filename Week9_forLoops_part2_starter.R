# Quack 2020
# Week 9 - For Loops: Part 2
# Elena Leib & Willa Voorhies

#### Set global options ####
options(stringsAsFactors = FALSE)

##### Import Packages #####
library(tidyverse)
library(tidylog)

#### Continuing with our party example from last week ####
# Goal: 
# For each person on the guest list: send(message)

# Here is the info we need to send the message from last week: 
guest_list <- c("Willa", "Roya", "Gold", "Stephanie", "Sinclaire", "Eliza")
phone_number <- c(1234567889, 4124445555, 8187689999, 1418894511, 4145678343, 4546754221)
message <- "I'm having a Halloween Party on 10/31! The party starts at 9pm. I hope to see you there!"

# This is the code we ended up with last week. Lets see what it prints:

for(i in 1:length(guest_list)) {
  print(paste0("Hey ", guest_list[i], "! ", message))
}

#### 1 - Try to print out the phone number as well as the message.
# Print " To: <phone number> " before printing the message. 
# HINT:  The phone numbers are in the same order as the names. 




# This can get a little messy, what if we change the order of the names, 
# but forget to change the phone numbers? 

#### 2a - convert the vectors "guest_list" and "phone_number" into a data frame ####
# your data frame should have 2 columns: "guest", "number"


#### 2b - send the message from above but reference the cols in your dataframe ####
# what do we need to change? 



#### 3 - Instead of printing the above message, lets save it as a variable ####
## 3a. Save your message as a variable "sent" inside of the loop. ##


# how long do you expect "sent" to be? 
# what happens if we try to access our sent messages?



## 3b - store your sent messages in an empty vector called record ##
# step 1: create the empty vector



# step 2: store each person's message into the record vector. At the end you should have 6 messages stored in "record"



# step 3: check if it worked. 



#### 4 - Practice ####
# Use your knowledge of for loops to do mentor-mentee matching
# match each first year to a third year

third_year <- c("Willa", "Elena", "Stephanie", "JT")
first_year <- c("Alexis", "Evan", "Regina", "Natalie")

# step 1 - create an empty vector "matched" 


# step 2 - create a for loop to match each third year to each first year
# store a record of each pair as  a string : "<third year> matched with <first year>" in your matched variable


# step 3 - check that it worked 


#### 5 - Nested for loops ####
# I am on the interview committee and I need to make sure each interviewee meets with each professor
interviewees <- c("Emma", "Samira", "Nancy", "Nirupika", "Eunice", "Victoria")
professors<- c("Kevin Weiner", "Silvia Bunge", "Steve Piantidosi", "Serena Chen")

# Create an interview schedule by printing out all the interview combinations. 
# eg. 
  # emma meets with kevin
  # emma meets with silvia
  # emma meets with steve
  # emma meets with serena
  # samira meets with kevin ... 








#### challenge: instead of printing, save to a variable "schedule" ####


