\name{rwhatbufCat}
\alias{rwhatbufCat}
\title{Extract the contents of a SpatialPixelsDataFrame or a SpatialGridDataFrame of categorical values within various buffer sizes centred on spatial points}
\description{Extract the contents of a SpatialPixelsDataFrame or a SpatialGridDataFrame of categorical values within various buffer sizes centred on points}

\usage{rwhatbufCat(rast, sites, bufsizes, att=1)}

\arguments{
  \item{rast}{object of class \code{\link[sp]{SpatialPixelsDataFrame}} or \code{\link[sp]{SpatialGridDataFrame}} to analyse}
  \item{sites}{object of class inheriting from \code{\link[sp]{SpatialPoints}} containing the points on which buffers must be centred}
  \item{bufsizes}{a vector of buffer radii, e.g. c(500, 1000, 1500)}
  \item{att}{column number of the attribute variable}
}

\details{
 This function generates a data.frame with the frequency of each category of a raster map within various radius buffers centred on spatial points.
}

\value{ A dataframe, with the buffer size as first column, the site ID as second column. The other colums are the pixel frequency of each category}

\seealso{\code{\link[sp]{over}}, \code{\link[pgirmess]{rwhatbufNum}}, \code{\link[pgirmess]{rwhatbufCat2}}}

\examples{

# raster creation
library(sp)
data(meuse.grid)
coordinates(meuse.grid) = ~x+y
gridded(meuse.grid) = TRUE

# random selection of points within the raster area
mypoints<-spsample(meuse.grid,n=10,type="random") # random points are appx 10, see spsample doc
mypoints<-SpatialPointsDataFrame(coordinates(mypoints),data.frame(id=1:nrow(mypoints@coords)))

image(meuse.grid,att=4,col=c("red","green","blue")) # soil map
plot(mypoints,add=TRUE) # points
  # get the number of pixels of each category in each buffer
rwhatbufCat(meuse.grid,mypoints,c(500,1000),att=4) 

}

\keyword{spatial}

