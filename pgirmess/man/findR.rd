\name{findR}
\alias{findR}


\title{ Computes the distance between the centroid and the most distant coordinate of a geographical coordinate set}
\description{
  Computes the distance between the centroid and the most distant coordinate of a geographical coordinate set.
}
\usage{
findR(coords)
}

\arguments{
  \item{coords}{ A matrix or data frame of 2 columns of geographical coordinates }

}

\value{
  The distance
}

\seealso{\code{\link[pgirmess]{polycirc}}}

\examples{

mydata<-cbind(x=rnorm(20),y=rnorm(20))
radius<-findR(mydata)
centroid<-matrix(colMeans(mydata),ncol=2)
plot(mydata,asp=1)
points(centroid,pch=19,col="red",cex=2)
polygon(polycirc(radius,centroid),border="red")
}

\keyword{ spatial }
