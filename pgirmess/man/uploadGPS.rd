\name{uploadGPS}
\alias{uploadGPS}

\title{Upload waypoints to Garmin GPS }
\description{
 Upload waypoints to Garmin GPS, using gpsbabel
}
\usage{
uploadGPS(gpx, f = "usb:",type="w")
}

\arguments{
  \item{gpx}{name of the .gpx file (can be created from a data frame using \code{\link[pgirmess]{writeGPX}})}
  \item{f}{the appropriate device interface, default "usb:", see details}
  \item{type}{'w' for waypoints (default), 't' for track}
}
\details{
  This function uploads waypoints or a track to a garmin GPS from a '.gpx' file. gpsbabel is called via the system. Therefore gpsbabel must be installed and on the user's path,  see \url{http://www.gpsbabel.org}. If not the default, device interface should be something as "usb:", "usb:1", "com:4" or on linux "/dev/ttyUSB0", etc.
}

\section{Warning }{
Overwrite waypoints having the same name in the GPS
}

\seealso{ \code{\link[pgirmess]{writeGPX}}}

\examples{

\dontrun{
  # a GPS device must be connected
coords<-data.frame(ID=c("C18J01", "C18J02"),Long= c(-46.996602, 47.002745),
Lat=c(-6.148734, 6.14829),Alt=c(250,1230))

writeGPX(coords,"mywaypoints")
uploadGPS("mywaypoint.gpx")
}

}

\keyword{IO}
\keyword{connection}
