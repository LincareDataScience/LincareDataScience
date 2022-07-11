\name{Query_Linked_Server}
\alias{Query_Linked_Server}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
Query_Linked_Server(DSN, query, linked_server_name)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{DSN}{
%%     ~~Describe \code{DSN} here~~
}
  \item{query}{
%%     ~~Describe \code{query} here~~
}
  \item{linked_server_name}{
%%     ~~Describe \code{linked_server_name} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (DSN, query, linked_server_name) 
{
    query <- gsub("'", "''", query)
    query <- paste0("Exec ('", query, "') at [", linked_server_name, 
        "]")
    con <- RODBC::odbcConnect(DSN)
    data <- RODBC::sqlQuery(con, query)
    colnames(data) <- gsub(pattern = "\\\"", "", colnames(data))
    data
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
