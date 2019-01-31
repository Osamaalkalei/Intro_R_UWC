# Mapping with Google
# Day3
# Osama Alkalei
# 31 Jan 2019

# Load libraries
library(tidyverse)
library(ggmap)

# Load data
load("data/cape_point_sites.RData")

cape_point <- get_map(location = c(lon = 18.36519, lat = -34.2352581),
                      zoom = 10, maptype = 'satellite')
