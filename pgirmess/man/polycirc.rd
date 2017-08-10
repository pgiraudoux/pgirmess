\name{polycirc}
\alias{polycirc}

\title{ Computes the polygon coordinates of a circle }
\description{
  Computes the polygon coordinates of a circle
}
\usage{
polycirc(radius, pts = c(0, 0), nbr = 50)
}

\arguments{
  \item{radius}{ the length of the radius. }
  \item{pts}{ the coordinates of the center. }
  \item{nbr}{ the number of segments required to draw the perimeter  }
}
\details{
  The matrix of coordinates  can then be used with the function polygon
}
\value{
  A matrix of coordinates.
}


\seealso{ \code{\link{polygon}},\code{\link[pgirmess]{findR}}}
\examples{
plot(1:10,1:10,type="n",asp=1)
polygon(polycirc(5),col="blue")
polygon(polycirc(2,c(5,5)), col="red")

}
\keyword{ manip }
