#' Load Data Warehouse from OnCore Cloud for demo purposes
#'
#' @param data_warehouse
#'
#' @return a dataframe
#' @export
#' @import pins
#' @import glue
#' @examples
loaddwc <- function(data_warehouse) {
  # Connect to Pins
  pins_connect()
  # Map Oracle table to OnCore Cloud table
  data_warehouse <- table_mapping(data_warehouse)
  # Load Data
  dw_name <- glue::glue("data/onc_{data_warehouse}")
  board |>  pins::pin_read(dw_name, version = NULL)
}
