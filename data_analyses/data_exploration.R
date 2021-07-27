# Libraries

library("readr")
library("readxl")
library("gdata")
library("tidyverse")

# Reading Data

## Path to Data

path <- file.path("bitcoin", "source_data", fsep = "/")
setwd(path)

## Loading Data

blocks <- read_csv("bitcoin_blocks-bytetree_api-07.25.21.csv")
daily <- read_csv("bitcoin_daily-bytetree_api-07.25.21.csv")


