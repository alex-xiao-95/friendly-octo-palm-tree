## remember to restart R here!
library(ggplot2)

## make a barchart from the frequency table in data/add-on-packages-freqtable.csv

## read that csv into a data frame
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path
data_path <- here::here("data", "add-on-packages-freqtable.csv")
apt_freqtable <- readr::read_csv(data_path)

## if you use ggplot2, code like this will work:
ggplot(apt_freqtable, aes(x = Built, y = n)) +
  geom_col()

## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help
## idea: try using here::here() to create the file path
out_path <- here::here("figs", "built-barchart.png")
ggsave(out_path)

## YES overwrite the file that is there now
## that's old output from me (Jenny)

# here's a new line to test the push error
