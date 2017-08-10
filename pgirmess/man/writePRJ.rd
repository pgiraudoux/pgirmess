\name{writePRJ}
\alias{writePRJ}

\title{Write the projection file of a shapefile from a spatial object}
\description{
 Write the projection file of a shapefile from a spatial object
}
\usage{
writePRJ(spobj, filename)
}

\arguments{
  \item{spobj}{ any spatial object having a CRS extractible with \code{\link[sp]{proj4string} }}
  \item{filename}{a character string naming the file to print to.  If '""' (the default), prints to the standard output connection, the console (unless redirected by 'sink')}
}

\details{
  A suffix '.prj' is added to the file name if not user provided.
}


\examples{

library(sp)
mypoints<-data.frame(long=runif(10,-90,+90),lat=runif(10,-90,+90))
coordinates(mypoints)<-~long+lat # SpatialPoints object
proj4string(mypoints)<-CRS("+proj=longlat +ellps=WGS84 +datum=WGS84") # WGS84 coordinates
writePRJ(mypoints,"")

}

\keyword{IO}
\keyword{connection}
