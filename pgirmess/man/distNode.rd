\name{distNode}
\alias{distNode}

\title{ Computes the distances between each nodes of a polyline. }
\description{
  Computes the distances between each nodes of a polyline.
}
\usage{
distNode(pts,decdeg=FALSE)
}

\arguments{
  \item{pts}{ A matrix or data.frame of the node coordinates column 1 = x,column 2 = y. }
  \item{decdeg}{ TRUE if point coordinates are longitude-latitude decimal degrees, in which case distances are measured in meters  }
}
\details{
  If degdec is FALSE (default), distance computed is Euclidian. Units depends on the coordinate systems.
  If decdeg = TRUE, D = 1852 * 60 * (180/pi) * acos ( sin(la1) * sin(la2) + cos(la1) * cos(la2) * cos(abs(lg1 - lg2)).
  This method calculates the great circle distance, is based on spherical trigonometry, and assumes that:
    \itemize{
        \item 1 minute of arc is 1 nautical mile 
        \item 1 nautical mile is 1.852 km
    }
}
\value{
  A vector of distances
}

\seealso{ \code{\link{distTot}}, \code{\link{distSeg}} }
\examples{
x<-c(10,56,100)
y<-c(23,32,150)
distNode(cbind(x,y))
}
\keyword{ spatial }
