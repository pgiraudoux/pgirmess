\name{writeGPX}
\alias{writeGPX}

\title{Convert a data frame into a GPX file of waypoints or track}
\description{
 Convert a data frame of labels, geographical coordinates and optionally altitude into a GPX file of waypoints or track that can be uploaded to Garmin GPS
}
\usage{
writeGPX(x, filename = "",type="w")
}

\arguments{
  \item{x}{ data.frame of three (optionally four) columns (see details)}
  \item{filename}{a character string naming the file to print to.  If '""' (the default), prints to the standard output connection, the console (unless redirected by 'sink')}
  \item{type}{'w' for waypoints (default) or 't' for track}
}

\details{
  The data frame must have three (optionally four) columns:
  \enumerate{
  \item character or integer, waypoint ID for waypoints ; column not read for track
  \item numeric, longitude (decimal degrees), negative for west
  \item numeric, latitude (decimal degrees), negative for south
  \item numeric, elevation (meters) (optional)
    }
  A suffix '.gpx' is added to the file name if not provided by user. The file obtained can be uploaded to Garmin GPS but cannot be read eg from MapSource for some reasons.

}

\note{for more standard GPX file, see \code{\link[rgdal]{writeOGR}} with arguments like layer="waypoints", driver="GPX", dataset_options ="GPX_USE_EXTENSIONS=yes" can alternately be used; \code{\link[rgdal]{readOGR}} with arguments like layer="waypoints", drop_unsupported_fields=TRUE }


\seealso{ \code{\link[rgdal]{writeOGR}}}

\examples{

coords<-data.frame(ID=c("C18J01", "C18J02"),Long= c(-46.996602, 47.002745),
Lat=c(-6.148734, 6.14829),Alt=c(250,1230))

writeGPX(coords) # waypoints
writeGPX(coords,type="t") # track

}

\keyword{IO}
\keyword{connection}
