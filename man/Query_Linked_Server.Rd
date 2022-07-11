\name{Query_Linked_Server}
\alias{Query_Linked_Server}
\title{Did this work?}
\usage{
  Query_Linked_Server()
}
\description{
  Queries Linked Servers from SQL Server
}
\examples{
  Query_Linked_Server(DSN = "ETL", query = "Select * from batlib.loc_hier", linked_server_name = "AS400")
}



