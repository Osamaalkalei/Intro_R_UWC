# Day_1.R
# Calculate a monthly climatology per site 
# Auther: Osama Alkalei
# Date: 29 Jan 2019

library(tidyverse)
library(lubridata)

temp <- read_csv("C:/Users/Osama/Desktop/R course/data/data/SACTN_data.csv")

temp2 <- temp %>% 
  dplyr:: mutate(month = month(date)) %>% 
  dplyr:: group_by(site, month) %>% 
  dplyr:: summarise(temp = mean(temp, nr.rm = TRUE)) %>% 
  ungroup()

ggplot(data = temp2, aes(x = month, y = temp)) + 
  geom_line() +
  facet_wrap(~ site, nrow = 3) +
  labs(x = "month", y = "Temperature ()")



# mass <- 48              # mass?
 # mass <- mass * 2.0      # mass?
 # age  <- 126             # age?
 # age  <- age - 17        # age?
 # mass_index <- mass/age  # mass_index?
  
   
  
 # Assign the value of 40 to x
 # Assign the value of 23 to y
 # Make z the value of x-y
 # Display z in the console



a + b # here i am adding a to b 
