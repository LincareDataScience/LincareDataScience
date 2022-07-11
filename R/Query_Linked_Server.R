#' Query Linked SQLServer
#'
#' This function queries a Linked Server within SQL Server
#'
#' @param DSN The Data Source Name (EDW_IBMi, EDW_External)
#'     The Data Source Name (EDW_IBMi, EDW_External)
#' @param query The Query Text
#' @param linked_server_name The Name of the Linked Server (EDWtoIBMi)
#'
#' @return A Dataframe containing the Query Results
#'
#' @references RODBC
#'
#' @usage This can be used to Query the AS400/SYS38A or any other Linked Server
#'
#' @examples Query <- "Select * from table"
#' Data <- Query_Linked_Server(DSN = "EDWtoIBMi",
#'                             query = Query,
#'                             linked_server_name = "EDWtoIBMi")
#'
#' @export
Query_Linked_Server <- function(DSN, query, linked_server_name){
  query <- gsub("'", "''", query)
  query <- paste0("Exec ('", query, "') at [", linked_server_name, "]")
  con <- RODBC::odbcConnect(DSN)
  data <- RODBC::sqlQuery(con, query)
  colnames(data) <- gsub(pattern = '\\"', "", colnames(data))
  data
}

