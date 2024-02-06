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
    ##          checking for file 'C:\Users\dany.mukesha\AppData\Local\Temp\Rtmpwv14FB\remotes50d05ae385e\danymukesha-medrxivr.analysis-c0978bd/DESCRIPTION' ...  ✔  checking for file 'C:\Users\dany.mukesha\AppData\Local\Temp\Rtmpwv14FB\remotes50d05ae385e\danymukesha-medrxivr.analysis-c0978bd/DESCRIPTION' (358ms)
    ##       ─  preparing 'medrxivr.analysis':
    ##    checking DESCRIPTION meta-information ...     checking DESCRIPTION meta-information ...   ✔  checking DESCRIPTION meta-information
    ##       ─  checking for LF line-endings in source and make files and shell scripts
    ##   ─  checking for empty or unneeded directories
    ##      Omitted 'LazyData' from DESCRIPTION
    ##       ─  building 'medrxivr.analysis_0.1.0.tar.gz'
    ##      
    ## 

    ## Installing package into 'C:/Users/dany.mukesha/AppData/Local/Temp/RtmpcnzuEp/temp_libpath8c2c75255489'
    ## (as 'lib' is unspecified)

## Usage

To get started, you can use the `analyze_medrxivr()` function to import
data from the medRxiv API and create a bar plot showing the number of
preprints in each category.

``` r
library(medrxivr.analysis)

# Analyze preprint data for last 10 days of January 2024
medrxivr.analysis::analyze_medrxivr(from_date = "2024-01-21", to_date = "2024-01-31")
```

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

    ## Estimated total number of records as per API metadata: 434

    ## Downloading... [====>----------------] 100/434 ( 23%) Est. time remaining: 18sDownloading... [=========>-----------] 200/434 ( 46%) Est. time remaining: 10sDownloading... [==============>------] 300/434 ( 69%) Est. time remaining:  5sDownloading... [==================>--] 400/434 ( 92%) Est. time remaining:  1sDownloading... [=====================] 500/434 (100%) Est. time remaining:  0s                                                                              Number of records retrieved from API: 434

    ## Warning: Removed 9 rows containing missing values (`position_stack()`).

![](README_files/figure-gfm/Analyzing%20preprint%20publications-1.png)<!-- -->

## Contributing

Contributions to `medrxivr_analysis` are welcome! If you find any issues
or have suggestions for improvement, please open an issue on GitHub or
submit a pull request.

## License

This package is open source and available under the [MIT
License](https://opensource.org/licenses/MIT).
