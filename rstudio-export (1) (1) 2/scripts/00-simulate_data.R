#### Preamble ####
# Purpose: Simulates... [...UPDATE THIS...]
# Author: Bingxu Li [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
set.seed(1009397314)
start_data <- as.Date("2018-01-01")
end_data <- as.Date("2023-12-31")
number_of_dates <- 100

data <-
  tibble(
    dates = as.Date(
      runif(
        n = number_of_dates,
        min = as.numeric(start_date),
        max = as.numeric(end_date)
      ),
      origin = "1970-01-01"
    ),
    number_of_marriage = rpois(n = number_of_dates, lambda = 10)
  )

write_csv(data, file = "data/raw_data/simulated.csv")

