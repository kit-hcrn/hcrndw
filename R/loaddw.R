loaddw <- function(data_warehouse) {
  # Load credentials from environment variables
  api_key <- Sys.getenv("POSIT_CONNECT_API_KEY")
  server_url <- Sys.getenv("POSIT_CONNECT_SERVER")

  # Check if credentials are available
  if (api_key == "" || server_url == "") {
    stop("Please set POSIT_CONNECT_API_KEY and POSIT_CONNECT_SERVER in your .Renviron file.")
  }

  # Connect to the Posit Connect board
  board <- pins::board_connect(
    server = server_url,
    auth = api_key
  )

  # Load Data
  dw_name <- glue::glue()
  my_data <- board %>% pin_read("example-data")
  print(my_data)

}

