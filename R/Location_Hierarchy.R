#' Location Hierarchy
#'
#' Returns Lincare's Location Hierarchy
#'
#' @import DBI
#'
#' @return A Dataframe
#'
#' @references DBI
#'
#' @examples Query <- "Select * from table"
#' Data <- Query_Linked_Server(DSN = "EDWtoIBMi",
#'                             query = Query,
#'                             linked_server_name = "EDWtoIBMi")
#'
#' @export
Location_Hierarchy <- function(){
  library(DBI)
  con <- DBI::dbConnect(odbc::odbc(), "RStudio")
  DBI::dbReadTable(conn = con, name = "Location_Hierarchy")
}

