
<!-- README.md is generated from README.Rmd. Please edit that file -->

# nlist

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.com/lifecycle/#experimental)
[![Travis build
status](https://travis-ci.com/poissonconsulting/nlist.svg?branch=master)](https://travis-ci.com/poissonconsulting/nlist)
[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/poissonconsulting/nlist?branch=master&svg=true)](https://ci.appveyor.com/project/poissonconsulting/nlist)
[![Codecov test
coverage](https://codecov.io/gh/poissonconsulting/nlist/branch/master/graph/badge.svg)](https://codecov.io/gh/poissonconsulting/nlist?branch=master)
[![License:
MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
<!-- badges: end -->

nlist is an R package to create and manipulate numeric list objects. A
numeric list object is a list of uniquely named numeric atomic objects,
ie, integer or double vectors, matrices and arrays. A numeric lists is
the data input for analytic engines such as JAGS, STAN and TMB.

## Demonstration

``` r
library(nlist)

nlist <- nlist(x = 1, y = matrix(1:9, 3))

print(nlist)
#> $x
#> [1] 1
#> 
#> $y
#>      [,1] [,2] [,3]
#> [1,]    1    4    7
#> [2,]    2    5    8
#> [3,]    3    6    9
#> 
#> attr(,"class")
#> [1] "nlist"
dims(nlist)
#> $x
#> [1] 1
#> 
#> $y
#> [1] 3 3
aggregate(nlist)
#> $x
#> [1] 1
#> 
#> $y
#> [1] 5

data <- data.frame(lgl = c(TRUE, NA),
                    int = 1:2, 
                    dbl = c(2.5,1.5),
                    dte = as.Date("2001-01-02", "2001-01-01"),
                    fac = factor("b", "a"))
numericise(data)
#>   lgl int dbl dte fac
#> 1   1   1 2.5  NA  NA
#> 2  NA   2 1.5  NA  NA
```

## Installation

To install the latest development version from
[GitHub](https://github.com/poissonconsulting/nlist)

    remotes::install_github("poissonconsulting/nlist")

To install the latest development version from the Poisson drat
[repository](https://github.com/poissonconsulting/drat)

    drat::addRepo("poissonconsulting")
    install.packages("nlist")

## Contribution

Please note that the ‘nlist’ project is released with a [Contributor
Code of Conduct](CODE_OF_CONDUCT.md). Please note that this project is
released with a [Contributor Code of
Conduct](https://poissonconsulting.github.io/mcmcr/CONDUCT.html). By
participating in this project you agree to abide by its terms.
