#' Load Data Warehouse
#'
#' @param data_warehouse
#'
#' @return a dataframe
#' @export
#' @import pins
#' @import glue
#' @examples
loaddw <- function(data_warehouse) {
  # Connect to Pins
  pins_connect()

  # Load Data
  dw_name <- glue::glue("data/orc_{data_warehouse}")
  board |>  pins::pin_read(dw_name, version = NULL)
}

