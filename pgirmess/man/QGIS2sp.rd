\name{QGIS2sp}
\alias{QGIS2sp}

\title{
Changes a copied-to-clipboard QGIS attribute table into a sp Spatial object or a data.frame
}

\description{
Reads from the clipboard a copy of the QGIS attribute table of a spatial object (points, linestrings, polygons) and convert it into a sp \code{\link[sp]{Spatial-class}} or a \code{\link[base]{data.frame}}.
}

\usage{
QGIS2sp(df=FALSE)
}

\arguments{

  \item{df}{ If TRUE a data.frame is generated with the coordinates of each shape centroid }

}

\value{
A \code{\link[sp]{SpatialPointsDataFrame}}, \code{\link[sp]{SpatialLinesDataFrame}} or \code{\link[sp]{SpatialPolygonsDataFrame}} (df=FALSE) or a \code{\link[base]{data.frame}} (df=TRUE) with the two first columns corresponding to the centroid coordinates.
}

\note{

 Here, \code{\link[sp]{Spatial-class}} are generated without projection attributes (Coordinate Reference System). CRS, if requested, should be added 'manually' (see \code{\link[sp]{proj4string}} and  \code{\link[sp]{CRS}}). 

}


\seealso{ \code{\link[rgeos]{readWKT}},  \code{\link[utils]{read.delim}} with the argument "clipboard", \code{\link[sp]{proj4string}}, \code{\link[sp]{CRS}}}


\examples{

  if((.Platform$OS.type == "windows") & (interactive())) {
  db <-c("wkt_geom\tname", "POINT(104.55 34.60)\tDENG_LING", "POINT(104.45 34.49)\tDIAO_GOU")
  writeLines(db, "clipboard")
  QGIS2sp() # to write in the console by hand (if copied and paste, one overwrites the clipboard)
  }


}

\keyword{ misc }
