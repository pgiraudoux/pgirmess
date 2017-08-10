\name{distNNeigh}
\alias{distNNeigh}

\title{ Computes distances to the nearest neighbour }
\description{
  Computes distances to the nearest neighbour
}
\usage{
distNNeigh(db)
}

\arguments{
  \item{db}{ A matrix or data.frame of points coordinates column 1 = x,column 2 = y. }
}
 
 \details{
   Computes distances to the nearest neighbour for each line of a matrix of points coordinates
}
 
 
\value{
  A vector of distances
}

\seealso{ \code{\link[spdep]{knearneigh}}, \code{\link[spdep]{knn2nb}}, \code{\link[spdep]{nbdists}} }

\examples{
distNNeigh(cbind(rnorm(30),rnorm(30)))
}
\keyword{ spatial }
