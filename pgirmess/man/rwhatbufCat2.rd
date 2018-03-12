\name{rwhatbufCat2}
\alias{rwhatbufCat2}
\title{Extract the contents of a raster file of categorical values within various buffer sizes centred on spatial points }
\description{Extract the contents of a raster file of categorical values within various buffer sizes centred on spatial points}

\usage{rwhatbufCat2(rast, sites, bufsizes, att=1, asList=FALSE)}

\arguments{
  \item{rast}{name of the raster file readable with rgdal to analyse}
  \item{sites}{object of class inheriting from \code{\link[sp]{SpatialPoints}} containing spatial points on which buffers must be centered}
  \item{bufsizes}{a vector of buffer radii, e.g. c(500, 1000, 1500)}
  \item{att}{column number of the attribute variable}
  \item{asList}{if TRUE the output is a list else a data.frame (default)}
}

\details{
This function does not load the full raster file into the memory but loads sequentially subsets corresponding to the size of each buffer. This allows proceeding massive rasters that cannot be loaded into RAM  in full. It generates either a data.frame or a list of lists giving for each buffer size (top level of the list of lists) the number of pixels of each category value within the buffer at each point site.

The function reads the raster file on the hard disk as many times as buffers to compute. Thus, computation time is about 5 times longer than \code{\link[pgirmess]{rwhatbufCat}}. Empty buffer (no pixel inside) gives (so far) anavoidable topology and dimension errors at reading and stop computation. User must ensure size and location so that every buffer includes at least one pixel.
}

\value{ A data.frame or a list of lists giving for each buffer size (top level of the list of lists) pixel frequency for each category within the buffer at each spatial point}

\seealso{\code{\link[sp]{over}}, \code{\link[pgirmess]{rwhatbufNum}}, \code{\link[pgirmess]{rwhatbufCat}} }

\examples{

library(sp)

myrastername<-system.file("pictures/SP27GTIF.TIF", package = "rgdal")[1]

mylocations<-structure(list(x = c(694728, 684662, 702339, 691819, 700091), 
y = c(1906654, 1886491, 1884426, 1884373, 1886872)),
.Names = c("x", "y"), row.names = c(NA, -5L), class = "data.frame")

coordinates(mylocations)<-~x+y

result<-rwhatbufCat2(myrastername,mylocations,c(500,1000))
result

result<-rwhatbufCat2(myrastername,mylocations,c(500,1000),asList=TRUE)
result[[1]] # results for buffer 500 (5 buffer centers)
result[[2]] # results for buffer 1000 (5 buffer centers)

}

\keyword{spatial}

