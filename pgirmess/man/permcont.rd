\name{permcont}
\alias{permcont}
\title{ Random permutation of a contingency table n row x 2 columns}
\description{
  Return a random permutation of a contingency table n rows x 2 columns keeping the marginal totals
}
\usage{
permcont(Table)
}

\arguments{
  \item{Table}{ a contingency table }
}
\details{
  The contingency table is split in a two colums table of 0/1 categories, sampled and re-organised with the function table()
}
\value{ 
A matrix with the permuted values
}


\examples{
tab<-cbind(n1=c(10,12,8,7,5),n2=c(4,5,8,10,12))
tab
permcont(tab)
}
\keyword{ distribution }
