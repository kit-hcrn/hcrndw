#' Title: Table Mapping Function
#'
#' @param table_name
#'
#' @return data_warehouse the base name of the data warehouse to pull from pins
#' @export
#' @import dplyr
#' @examples
table_mapping <- function(table_name) {
  map <- dplyr::filter(map, !is.na(Oncore_Cloud))
  tab <- match(table_name, map$Oracle)
  ifelse(is.na(tab), table_name, map$Oncore_Cloud[tab])
}
