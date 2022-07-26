## remember to restart R here!

## create a data frame by reading from data/installed-packages.csv
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path
data_path <- here::here("data", "installed-packages.csv")
data <- readr::read_csv(data_path)

## filter out the base and recommended packages
## keep the variables Package and Built
## if you use dplyr, code like this will work:
rm_bp_packages <- data %>%
  filter(is.na(Priority)) %>%
  select(Package, Built)

## write this new, smaller data frame to data/add-on-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path
out_path <- here::here("data", "add-on-packages.csv")
readr::write_csv(rm_bp_packages, out_path)

## make a frequency table of package by the version in Built
## if you use dplyr, code like this will work:
apt_freqtable <- rm_bp_packages %>%
  count(Built) %>%
  mutate(prop = n / sum(n))

## write this data frame to data/add-on-packages-freqtable.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path
out_path <- here::here("data", "add-on-packages-freqtable.csv")
readr::write_csv(apt_freqtable, out_path)


## YES overwrite the files that are there now
## they are old output from me (Jenny)
## they are just examples
