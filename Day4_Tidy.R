# Day_4
# Chapter 10
# Tidy data
# 1Feb 2019

# Load labraries
library(tidyverse)

load("data/SACTN_mangled.RData")

ggplot(SCANT1, aes(x + data, y = tem)) + 
  gemo_line(aes(colour = site, group = paste0(site, src))) +
  labs(x = "Date", y = "Temperatre (C)") + 
  ggtitle("Coastal Temprature")
  theme()

SACTN2_tidy <- SACTN2 %>% 
  gather(DEA, KZNSB,SAWS, key = "src", value = "temp")


SACTN4a_tidy <- SACTN4a %>%
  separate(col = index, into = c("site", "src"), sep = "/ ")


SACTN4b_tidy <- SACTN4b %>%
  unite(year, month, day, col = "date", sep = "-")

SACTN4_tidy <- left_join(SACTN4a_tidy, SACTN4b_tidy)
