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
devtools::install_github("danymukeseha/medrxivr_analysis")
```

## Usage

To get started, you can use the `analyze_medrxivr()` function to import
data from the medRxiv API and create a bar plot showing the number of
preprints in each category.

``` r
library(medrxivr_analysis)

# Analyze preprint data for January 2024
analyze_medrxivr(from_date = "2024-01-01", to_date = "2024-01-31")
```

## Contributing

Contributions to `medrxivr_analysis` are welcome! If you find any issues
or have suggestions for improvement, please open an issue on GitHub or
submit a pull request.

## License

This package is open source and available under the [MIT
License](https://opensource.org/licenses/MIT).