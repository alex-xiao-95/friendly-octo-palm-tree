01_write-installed-packages.R
================
xiaolongbao
2022-07-25

``` r
library(tidyverse)
```

    ## ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.2 ──
    ## ✔ ggplot2 3.3.6     ✔ purrr   0.3.4
    ## ✔ tibble  3.1.8     ✔ dplyr   1.0.9
    ## ✔ tidyr   1.2.0     ✔ stringr 1.4.0
    ## ✔ readr   2.1.2     ✔ forcats 0.5.1
    ## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()

``` r
library(here)
```

    ## here() starts at /Users/xiaolongbao/Documents/Repos/2022_r_workshop/friendly-octo-palm-tree

``` r
ipt <- installed.packages() %>%
  as_tibble() %>%
  select(Package) %>%
  write_csv(here("data.csv"))

ipt
```

    ## # A tibble: 172 × 1
    ##    Package   
    ##    <chr>     
    ##  1 askpass   
    ##  2 assertthat
    ##  3 backports 
    ##  4 base      
    ##  5 base64enc 
    ##  6 bit       
    ##  7 bit64     
    ##  8 blob      
    ##  9 boot      
    ## 10 brew      
    ## # … with 162 more rows
    ## # ℹ Use `print(n = ...)` to see more rows
