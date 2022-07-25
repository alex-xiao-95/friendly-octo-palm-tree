library(tidyverse)
library(here)

ipt <- installed.packages() %>%
  as_tibble() %>%
  select(Package) %>%
  write_csv(here("data.csv"))

ipt
