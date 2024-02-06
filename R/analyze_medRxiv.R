#' Analyze medRxiv data
#'
#' This function imports data from the medRxiv API for a specific time period
#' and creates a bar plot showing the number of preprints in each category.
#'
#' @name analyze_medrxivr
#' @param from_date Start date in "YYYY-MM-DD" format.
#' @param to_date End date in "YYYY-MM-DD" format.
#'
#' @return A ggplot object displaying the number of preprints in each category.
#'
#' @import medrxivr
#' @import dplyr
#' @import ggplot2
#'
#' @examples
#' \dontrun{
#' analyze_medrxivr("2024-01-01", "2024-01-30")
#' }
#'
#' @export

library(dplyr)

analyze_medrxivr <- function(from_date, to_date) {
  # Import the data from medRxiv API endpoint
  mx_data <- medrxivr::mx_api_content(from_date = from_date, to_date = to_date)

  # Create the graph
  plot <- mx_data %>%
    group_by(category) %>%
    summarise(N = n(), .groups = "keep") %>%
    arrange(desc(N)) %>%
    ggplot2::ggplot(ggplot2::aes(y = reorder(category, N), x = N)) +
    ggplot2::geom_col(colour = "black") +
    ggplot2::ylab("Category") +
    ggplot2::xlab("Number of preprints") +
    ggplot2::scale_x_continuous(expand = c(0, 0), limits = c(0, 10)) +
    ggplot2::theme_classic()

  return(plot)
}
