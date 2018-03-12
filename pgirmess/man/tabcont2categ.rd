\name{tabcont2categ}
\alias{tabcont2categ}

\title{ Convert a contingency table (data.frame) into a presence/absence table of categories
 }
\description{
  Convert a contingency table (data frame) into a data.frame of factors
}
\usage{
tabcont2categ(tab)
}

\arguments{
  \item{tab}{ A data.frame (contingency table) }
}
\details{
  Convert a contingency table (data frame) into a data.frame of factors
}
\value{
 A data frame
}

\examples{
mydata<-as.data.frame(matrix(rpois(9,5),nr=3,nc=3))
names(mydata)<-LETTERS[1:3]
row.names(mydata)<-letters[1:3]

tabcont2categ(mydata)
}
\keyword{ array }
