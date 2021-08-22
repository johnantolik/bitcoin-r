# Libraries

library("readr")
library("readxl")
library("gdata")
library("tidyverse")

# Reading Data

## Path to Data

path <- file.path("C:", "Users", "John Antolik", "bitcoin_data", "source_data", fsep = "/")

setwd(path)

## Loading Data

blocks <- read_csv("bitcoin_blocks-bytetree_api-07.25.21.csv")

daily <- read_csv("bitcoin_daily-bytetree_api-07.25.21.csv")

data_daily <- read_csv("data_daily-bitcoin_visuals-08.20.21.csv")

summary(blocks)
summary(daily)
summary(data_daily)

str(blocks)
str(daily)
str(data_daily)

glimpse(blocks)
glimpse(daily)
glimpse(data_daily)

blocks
daily
data_daily

# Examine weekday bias (VS weekend) in blocks db

## date range of blocks dataframe is for only a part of 2021, and no other years.

blocks %>%
  select(date, txv) %>% 
  mutate(year = as.numeric(format(date, "%Y")), day_of_week = weekdays(date)) %>% 
  group_by(year, day_of_week) %>%
  mutate(sum_txv = sum(txv)) 

## Above result suggests only Sunday has significantly lower total transaction value (txv)
  
  
