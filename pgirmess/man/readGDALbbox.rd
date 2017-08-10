\name{readGDALbbox}
\alias{readGDALbbox}

\title{Read a raster using rgdal within a user specified bounding box}
\description{Read a raster using rgdal within a user specified bounding box}
\usage{readGDALbbox(gdal, spo, mar,...)}

\arguments{
  \item{gdal}{ any raster that can be read by \code{\link[rgdal]{readGDAL}} }
  \item{spo}{ spatial object whose bounding box can be retrieved using \code{\link[sp]{bbox}} }
  \item{mar}{user defined margin around the bounding box (default = 2 pixels)}
  \item{\dots}{ further parameters to pass to \code{\link[rgdal]{readGDAL}}  }
}
\details{
 This function read a raster file using GDAL within the bounding box of a spatial objet. This permits to extract required subset areas from very large raster data sets that cannot be loaded into the workspace.
}

\value{
 returns the required data subset from the raster file as a Spatial object
}


\seealso{  \code{\link[rgdal]{readGDAL}}, \code{\link[sp]{bbox}}}


\keyword{IO}
\keyword{connection}
