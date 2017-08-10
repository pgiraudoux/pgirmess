\name{gps2gpx}
\alias{gps2gpx}

\title{Download waypoints or tracks from a GPS to a gpx file}
\description{
 Download waypoints or tracks from a GPS to a gpx file or to the console gpx formatted
}
\usage{
gps2gpx(filename="",i="garmin",f = "usb:", type = "w", invisible = TRUE)
}
\arguments{
  \item{filename}{a character string naming the file to print to. If '""' (the default), prints to the standard output connection}
  \item{i}{INTYPE: a supported file type, default "garmin"}
  \item{f}{INFILE: the appropriate device interface, default "usb:", on Windows for serial interfaces commonly "com4:" or similar}
  \item{type}{"w" waypoints, or "t" track, or others provided in gpsbabel}
  \item{invisible}{Under Windows, do not open an extra window}
}

\details{
The function calls gpsbabel via the system. The gpsbabel program must be present and on the user's PATH for the function to work see \url{http://www.gpsbabel.org}. A .gpx suffix is added if not included in the filename. The gpx file can then be read e.g. using \code{\link[rgdal]{readOGR}} to a sp spatial object. Ex: readOGR("filename.gpx", "waypoints", drop_unsupported_fields=TRUE), or uploaded to a GPS}

\seealso{ \code{\link[rgdal]{readOGR}},\code{\link[pgirmess]{uploadGPS}}}

\examples{

\dontrun{
  # a GPS device must be connected
gps2gpx() # download waypoints and print to the console
gps2gpx(t="t") # download tracks and print to the console
gps2gpx(filename="myfile") # download waypoints and write a gpx file

}


}

\keyword{IO}
\keyword{connection}
