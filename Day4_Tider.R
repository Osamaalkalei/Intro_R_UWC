# Day4
# Tidy data 2.0
# 1 Feb 2019
# Osama Alkalei

library(tidyverse)
library(lubridate)

# Load the data from a .RData file
load("data/SACTNmonthly_v4.0.RData")
SACTN <- SACTNmonthly_v4.0
rm(SACTNmonthly_v4.0)

SACTN %>%
  filter(site == "Amanzimtoti")

SACTN %>%
  filter(site == "Pollock Beach", month(date) == 12 | month(date) == 1)

SACTN %>%
  arrange(desc(temp))

SACTN %>%
  filter(site == "Humewood", year(date) == 1990)

SACTN %>%
  filter(site == "Humewood", year(date) == 1993)

# Select variables (columns) withselect()

try1 <- SACTN %>%
  select(site, src, date, temp)

try2 <- SACTN %>%
  select(site : temp)

try3 <- SACTN %>%
  select(-date, -depth)

try4 <- SACTN %>%
  select(-(date:depth))

try5 <- SACTN %>%
  mutate(kelvin = temp + 273.15)

SACTN %>%
  summarise(mean_temp = mean(temp, na.rm = TRUE),
            sd_temp = sd(temp, na.rm = TRUE),
            min_temp = min(temp, na.rm = TRUE),
            max_temp = max(temp, na.rm = TRUE))




