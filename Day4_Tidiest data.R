# Chapter 12
# Day 4
# 1 Feb 2019
# Fianl chapter 

# Load libraries
library(tidyverse)
library(lubridate)

load("data/SACTNmonthly_v4.0.RData")

SACTN <- SACTNmonthly_v4.0
rm(SACTNmonthly_v4.0)



SACTN_depth <- SACTN %>%
  group_by(depth)

SACTN_depth_mean <- SACTN_depth %>%
  summarise(mean_temp = mean(temp, na.rm = TRUE),
            count = n())
SACTN_depth_mean


SACTN_depth_mean <- SACTN_depth %>%
  group_by(depth) %>% 
  summarise(mean_temp = mean(temp, na.rm = TRUE),
            count = n())
SACTN_depth_mean

ggplot(data = SACTN_depth_mean, mapping = aes(x = depth, y = mean_temp)) +
  geom_point(aes(size = count), alpha = 1/3) +
  geom_smooth(se = FALSE)

SACTN_30_years <- SACTN %>%
  group_by(site, src) %>%
  filter(n() > 360)



selected_sites <- c("Paternoster", "Oudekraal", "Muizenberg", "Humewood")
SACTN %>%
  filter(site %in% selected_sites) %>%
  group_by(site, src) %>%
  summarise(mean_temp = mean(temp, na.rm = TRUE),
            sd_temp = sd(temp, na.rm = TRUE))



