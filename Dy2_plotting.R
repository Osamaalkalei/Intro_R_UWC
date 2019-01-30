# Day2 
# Plotting in R using ggplot2
# Osama Alkalei
# 30th Jan 2019

# load libraries 
library(tidyverse)

chicks <- datasets::ChickWeight
??ChickWeight

ggplot(data = chicks, aes(x = Time, y = weight)) +
  geom_point() +
  geom_line(aes(group = Chick))

ggplot(chicks, aes( x = Time, y = weight, colour = Diet)) + 
  geom_point() + 
  geom_line(aes(group = Chick))


ggplot(chicks, aes( x = Time, y = weight, colour = Diet)) + 
  geom_point() + 
  geom_smooth(method = "lm")

ggplot(chicks, aes( x = Time, y = weight, colour = Diet)) + 
  geom_point(color = "blue") + 
  geom_line(aes(group = Chick))

ggplot(chicks, aes( x = Time, y = weight, colour = Diet)) + 
  geom_point(aes(size = weight)) + 
  geom_smooth(method = "lm") +
  labs(x = "Days", y = "Weith (kg)") +
  theme_bw() +
  ggtitle("A") +
  theme_bw()

# Facetting in ggplot
library(ggpubr)

ggplot(chicks, aes(x = Time, y = weight, colour = Diet)) +
  geom_point() +
  geom_smooth(method = "lm") +
  facet_wrap(~Diet, ncol = 4)

chicks_2 <- chicks %>% 
  filter(Time == 21)

plot_1 <- ggplot(chicks, aes( x = Time, y = weight, colour = Diet)) + 
  geom_point() + 
  geom_line(aes(group = Chick)) +
  labs(x = "Days", y = "weight") +
  ggtitle("A")


plot_2 <- ggplot(chicks, aes( x = Time, y = weight, colour = Diet)) + 
  geom_point() + 
  geom_smooth(method = "lm") +
  ggtitle("B")
plot_2

plot3<- ggplot(data = chicks_2, aes(x = weight)) +
  geom_histogram(aes(fill = Diet), position = "dodge", binwidth = 100) +
  labs(x = "Final Mass (g)", y = "Count")
plot3

plot4<- ggplot(data = chicks_2, aes(x = Diet, y = weight)) +
  geom_boxplot(aes(fill = Diet)) +
  labs(x = "Diet", y = "Final Mass (g)")
plot4

library(ggpubr)
plot_combined <- ggarrange(plot_1, plot_2, plot3, plot4)

## 3rd library
library(boot)

urine <- boot::urine











