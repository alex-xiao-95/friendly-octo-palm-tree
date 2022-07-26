#' ---
#' output: github_document
#' ---

library(tidyverse)
library(here)

ipt <- installed.packages() %>%
  as_tibble() %>%
  select(Package) %>%
  write_csv(here("data.csv"))

ipt


# add insightful comment
# add another comment
