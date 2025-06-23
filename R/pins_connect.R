#' Pins Connect
#'
#' @return board
#' @export
#'
#' @examples
pins_connect <- function() {
  # Load credentials from environment variables
  readRenviron("/r-users/scheduled_programs/.Renviron")
  api_key <<- Sys.getenv("POSIT_CONNECT_API_KEY")
  server_url <<- Sys.getenv("POSIT_CONNECT_SERVER")

  # Check if credentials are available
  if (api_key == "" || server_url == "") {
    stop("Please set POSIT_CONNECT_API_KEY and POSIT_CONNECT_SERVER in your .Renviron file.")
  }

  # Connect to the Posit Connect board
  board <<- pins::board_connect(auth = "manual",
     server = server_url,
     key = api_key
  )
}
