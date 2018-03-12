\name{rwhatbufNum}
\alias{rwhatbufNum}
\title{Extract the contents of a SpatialPixelsDataFrame or a SpatialGridDataFrame of numerical values within various buffer sizes centred on spatial points }
\description{Extract the contents of a SpatialPixelsDataFrame or a SpatialGridDataFrame of numerical values within various buffer sizes centred on spatial points }

\usage{rwhatbufNum(rast, sites, bufsizes, att=1)}

\arguments{
  \item{rast}{object of class \code{\link[sp]{SpatialPixelsDataFrame}} or \code{\link[sp]{SpatialGridDataFrame}} to analyse}
  \item{sites}{ object of class \code{\link[sp]{SpatialPointsDataFrame}} containing spatial points on which buffers must be centred}
  \item{bufsizes}{a vector of buffer radii, e.g. c(500, 1000, 1500)}
  \item{att}{column number of the attribute variable}
}

\details{
 This function generates a list of lists giving for each buffer size (top level in the list of lists) the values of the raster map for each point site within the buffer.
}

\value{ A list of lists: top level, the buffer size; second level, the values of the raster map for each spatial point site within the buffer}

\seealso{ \code{\link[sp]{over}}, \code{\link[pgirmess]{rwhatbufCat}}, \code{\link[pgirmess]{rwhatbufCat2}}}

\examples{

library(pgirmess)
# raster creation
library(sp)
data(meuse.grid)
coordinates(meuse.grid) = ~x+y
gridded(meuse.grid) = TRUE

# random selection of points within the raster area
mypoints<-spsample(meuse.grid,n=10,type="random") # random points are appx 10, see spsample doc
mypoints<-SpatialPointsDataFrame(coordinates(mypoints),data.frame(id=1:nrow(mypoints@coords)))

image(meuse.grid,att=3) # distance to the river
plot(mypoints,add=TRUE,pch=20,cex=0.1) # points
for (i in 1:nrow(mypoints@coords)){ 
polygon(polycirc(50, mypoints@coords[i,]),border="blue") # buffer 50 place
}
for (i in 1:nrow(mypoints@coords)) {
polygon(polycirc(100, mypoints@coords[i,]),border="green") # buffer 100 place
}
mybuffers<-rwhatbufNum(meuse.grid,mypoints,c(50,100),att=3) # get the values in each buffer

names(mybuffers) # two list given

mybuffers[[1]] # list of values for each point (buffer 50)
mybuffers[[1]][[1]] # list of values for the first buffer 50 (point #1)

}

\keyword{spatial}

