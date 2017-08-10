\name{polycirc2}
\alias{polycirc2}

\title{ Computes the polygon coordinates of a circle sector }
\description{
  Computes the polygon coordinates of a circle sector
}
\usage{
polycirc2(radius = 1, center = c(0, 0), edges = 50, init = pi/2, angle = pi/2)
}

\arguments{
  \item{radius}{ the circle radius }
  \item{center}{ the centre coordinates (defaut to x=0, y=0) }
  \item{edges}{ the circular outline of the sector is approximated by a polygon with this many edges}
  \item{init}{  number (in radian) specifying the starting angle}
  \item{angle}{ number (in radian) specifying the sector angle }
}
\details{
   The matrix of coordinates obtained is intended to be passed to the function \code{\link{polygon}}
}
\value{ A matrix of coordinates}


\seealso{ \code{\link{polygon}},\code{\link{polycirc}}, \code{\link[plotrix]{floating.pie}} }

\examples{
plot(c(-1,+1),c(-1,+1),type="n",asp=1)
polygon(polycirc2(),col="red")
polygon(polycirc2(init=pi,angle=pi/4),col="green")
polygon(polycirc2(init=1.5*pi,angle=pi/4),col="violet")
polygon(polycirc2(radius=0.5,center=c(0.5,1)),col="blue")

polycirc2(init=pi,angle=pi/4)
}

\keyword{ dplot }
