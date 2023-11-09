
<!-- README.md is generated from README.Rmd. Please edit that file -->

# snapcrackleprop

<!-- badges: start -->
<!-- badges: end -->

The goal of `snapcrackleprop` is to summarize the count and proportion
of observations that meet one or more conditions within given group(s)
of a data frame.

## Installation

You can install the latest version of `snapcrackleprop` from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("stat545ubc-2023/snapcrackleprop")
```

The current version of `snapcrackleprop` is 0.1.0.

## Example

This is a basic example using the `base R` data set `mtcars`. The
following application of `group_count_and_prop` shows you how to
summarize the count and proportion of observations where `mpg > 20` in
each group by `cyl`.

``` r
library(snapcrackleprop) 
group_count_and_prop(mtcars, # Input dataset
                     cyl, # Input variable(s) to group by
                     cond = mpg > 20) # Input condition(s) observations must meet 
#> # A tibble: 3 × 4
#>     cyl     n count  prop
#>   <dbl> <int> <int> <dbl>
#> 1     4    11    11 100  
#> 2     6     7     3  42.9
#> 3     8    14     0   0
```
