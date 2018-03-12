\name{pclig}
\alias{pclig}
\title{ Compute the percentage of each cell of a matrix or data.frame by row }
\description{
  Compute the percentage of each cells of a matrix or data.frame by row
}
\usage{
pclig(matr)
}

\arguments{
  \item{matr}{ a matrix or a data.frame}
}
\details{
  Compute the percentage of each cells of a matrix by row. NA are removed.
}
\value{
  Return a matrix with percentages in each cell
}

\seealso{ \code{\link[base]{prop.table}}}

\examples{
x<-c(2,10,7,8,7) 
y<-c(56,22,7,20,5)
pclig(cbind(x,y))
}
\keyword{ array }
