\name{readVista}
\alias{readVista}

\title{Download waypoints and tracks from a GPS}
\description{
 Download GPS waypoints and tracks using gpsbabel
 }

\usage{
readVista(i = "garmin", f = "usb:", type="w", SPDF=NULL, invisible=TRUE)
}

\arguments{
  \item{i}{INTYPE: a supported file type, default "garmin"}
  \item{f}{INFILE: the appropriate device interface, default "usb:"}
  \item{type}{"w" waypoints, or "t" track}
  \item{SPDF}{if not NULL (the default), characters: the path and filename where to download data as gpx file}
  \item{invisible}{Under Windows, do not open an extra window}
}
\details{
 The function calls gpsbabel via the system. The gpsbabel program must be present and on the user's PATH for the function to work see \url{http://www.gpsbabel.org}. The function has been tested on the following Garmin GPS devices: Etrex Summit, Etrex Vista Cx and GPSmap 60CSx. On Ubuntu Linux, USB-to-RS232 converter cables were connected succesfully with "/dev/ttyUSB0"; on Windows commonly "com4:" or similar.
}

\value{
If SPDF = NULL (the default) a data frame of four columns:

    \item{ident}{waypoint names or track IDs}
    \item{long}{longitude}
    \item{lat}{latitude}
    \item{altitude}{elevation}

Information about the data type (waypoints or tracks) and the date of download are stored as attributes.

If a path and filename is specified with the argument SPDF (e.g. SPDF="./mydata.gpx"), GPS data are downloaded as gpx file.

}

\references{\url{http://www.gpsbabel.org}}

\seealso{ \code{\link[maptools]{readGPS}}}

\examples{

\dontrun{
   # a GPS device must be connected
mywaypoints<-readVista() # download waypoints
mytracks<-readVista(type="t") # download tracks
}

}

\keyword{IO}
\keyword{connection}
