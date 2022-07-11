#' test
#'
#' This function queries a Linked Server within SQL Server
#'
#' @importFrom RODBC odbcConnect
#' @importFrom RODBC sqlQuery
#'
#' @param DSN The Data Source Name (EDW_IBMi, EDW_External)
#' @param query The Query Text
#' @param linked_server_name The Name of the Linked Server (EDWtoIBMi)
#'
#' @return A Dataframe containing the Query Results
#'
#' @examples Query <- "Select * from table"
#' Data <- Query_Linked_Server(DSN = "EDWtoIBMi",
#'                             query = Query,
#'                             linked_server_name = "EDWtoIBMi")
#'
#' @export
test <- function(){
  LincareDataScience::Location_Hierarchy()
}
