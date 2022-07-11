#' Query Linked SQLServer
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
Query_Linked_Server <- function(DSN, query, linked_server_name){
  library(RODBC)
  query <- gsub("'", "''", query)
  query <- paste0("Exec ('", query, "') at [", linked_server_name, "]")
  con <- RODBC::odbcConnect(DSN)
  data <- RODBC::sqlQuery(con, query)
  colnames(data) <- gsub(pattern = '\\"', "", colnames(data))
  data
}

