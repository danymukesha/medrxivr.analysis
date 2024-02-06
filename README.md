medrxivr_analysis
================

# Overview

`medrxivr_analysis` is an R package designed to facilitate the analysis
of preprint data from the medRxiv API. It provides functions to import
data from the medRxiv API, process it, and create visualizations to
explore trends in preprint publications.

## Installation

You can install `medrxivr_analysis` from GitHub using the `devtools`
package:

``` r
devtools::install_github("danymukesha/medrxivr.analysis", upgrade = c("never"),)
```

    ## Downloading GitHub repo danymukesha/medrxivr.analysis@HEAD

    ## ── R CMD build ─────────────────────────────────────────────────────────────────
    ##          checking for file 'C:\Users\dany.mukesha\AppData\Local\Temp\Rtmpe6QYTK\remotes1c785749bd\danymukesha-medrxivr.analysis-6e7a522/DESCRIPTION' ...  ✔  checking for file 'C:\Users\dany.mukesha\AppData\Local\Temp\Rtmpe6QYTK\remotes1c785749bd\danymukesha-medrxivr.analysis-6e7a522/DESCRIPTION' (355ms)
    ##       ─  preparing 'medrxivr.analysis':
    ##    checking DESCRIPTION meta-information ...     checking DESCRIPTION meta-information ...   ✔  checking DESCRIPTION meta-information
    ##       ─  checking for LF line-endings in source and make files and shell scripts
    ##   ─  checking for empty or unneeded directories
    ##      Omitted 'LazyData' from DESCRIPTION
    ##       ─  building 'medrxivr.analysis_0.1.0.tar.gz'
    ##      
    ## 

    ## Installing package into 'C:/Users/dany.mukesha/AppData/Local/Temp/RtmpcnzuEp/temp_libpath8c2c581320e8'
    ## (as 'lib' is unspecified)

## Usage

To get started, you can use the `analyze_medrxivr()` function to import
data from the medRxiv API and create a bar plot showing the number of
preprints in each category.

``` r
library(medrxivr.analysis)

# Analyze preprint data for January 2024
medrxivr.analysis::analyze_medrxivr(from_date = "2024-01-01", to_date = "2024-01-31")
```

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

    ## Estimated total number of records as per API metadata: 1135

    ## Downloading... [=>------------------] 100/1135 (  9%) Est. time remaining: 38sDownloading... [===>----------------] 200/1135 ( 18%) Est. time remaining: 30sDownloading... [====>---------------] 300/1135 ( 26%) Est. time remaining: 25sDownloading... [======>-------------] 400/1135 ( 35%) Est. time remaining: 23sDownloading... [========>-----------] 500/1135 ( 44%) Est. time remaining: 19sDownloading... [==========>---------] 600/1135 ( 53%) Est. time remaining: 16sDownloading... [===========>--------] 700/1135 ( 62%) Est. time remaining: 13sDownloading... [=============>------] 800/1135 ( 70%) Est. time remaining: 10sDownloading... [===============>----] 900/1135 ( 79%) Est. time remaining:  7sDownloading... [================>--] 1000/1135 ( 88%) Est. time remaining:  4sDownloading... [=================>-] 1100/1135 ( 97%) Est. time remaining:  1sDownloading... [===================] 1200/1135 (100%) Est. time remaining:  0s                                                                              Number of records retrieved from API: 1125
    ## The estimated "total number" as per the metadata can sometimes be artifically inflated.

    ## Warning: Removed 20 rows containing missing values (`position_stack()`).

![](README_files/figure-gfm/Analyzing%20preprint%20publications-1.png)<!-- -->

## Contributing

Contributions to `medrxivr_analysis` are welcome! If you find any issues
or have suggestions for improvement, please open an issue on GitHub or
submit a pull request.

## License

This package is open source and available under the [MIT
License](https://opensource.org/licenses/MIT).
