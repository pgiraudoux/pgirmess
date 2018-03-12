\name{pave}
\alias{pave}

\title{Provide square polygons or their node coordinates along a segment}
\description{
  Provide a user-defined cell grid of polygon squares (or square node points) along a segment. This can be used to define a sampling grid for spatial analysis.
}
\usage{
pave(cordseg, yc, xc, fix.edge=NULL, ydown = TRUE, output = "list")
}

\arguments{
  \item{cordseg}{ the segment coordinates. This can be a vector c(x1,y1,x2,y2), a 2 x 2 matrix or a data.frame (each line a coordinate)}
  \item{yc}{ the number of segment divisions (y cells) }
  \item{xc}{ the number of columns (x cells)}
  \item{fix.edge}{ the edge length of a cell (user specified, default to NULL)}
  \item{ydown}{ if TRUE (default) squares are computed decreasing y }
  \item{output}{ a character string indicating which output is required. One of "list", "points" or "spdf". Partial match allowed }
}
\details{
  The segment must have x1 < x2. If not, it is automatically reordered. When "spdf" is selected the output is an object of class
  \code{\link[sp]{SpatialPolygonsDataFrame}}. The value of the edge length of a cell can passed with the argument fix.edge. In this case, the coordinates of the segment right top are re-computed to adjust the cell edge to an user defined fixed value. 
}
\value{
  According to the output selected, a list of polygon coordinates, a 2 column matrix with the nodes coordinates or a \code{\link[sp]{SpatialPolygonsDataFrame}}.
  
}

\seealso{ \code{\link[sp]{SpatialPolygonsDataFrame-class}}, \code{\link[maptools]{readShapePoly}}, \code{\link[rgdal]{readOGR}},\code{\link[sp]{over}}, \code{\link[pgirmess]{diag2edge}} }

\examples{

# segment sloping up
coord<-matrix(c(20,20,90,90),nr=2,byrow=TRUE)
plot(coord,type="n",xlim=c(0,100),ylim=c(0,110),asp=1)
lines(coord)
# point grids
gr<-pave(coord,20,4,output="points") # y decreasing
points(gr)
gr<-pave(coord,20,4,output="points",ydown=FALSE) # y increasing
points(gr,col="blue")
# square polygon grids
gr<-pave(coord,20,4) # y decreasing
for (i in 1:length(gr)) polygon(gr[[i]])
gr<-pave(coord,20,4,ydown=FALSE) # y increasing
for (i in 1:length(gr)) polygon(gr[[i]],border="blue")

# segment sloping down
coord<-matrix(c(20,90,90,20),nr=2,byrow=TRUE)
plot(coord,type="n",xlim=c(0,100),ylim=c(0,110),asp=1)
lines(coord)

# point grids
gr<-pave(coord,20,4,output="points")  # y decreasing
points(gr)
gr<-pave(coord,20,4,output="points",ydown=FALSE) # y increasing
points(gr,col="blue")

# fixed edge
plot(coord,type="n",xlim=c(0,100),ylim=c(0,110),asp=1)
lines(coord)
gr<-pave(coord,20,4,fix.edge=4,output="points")
points(gr,col="blue")

plot(coord,type="n",xlim=c(0,100),ylim=c(0,110),asp=1)
lines(coord)
gr<-pave(coord,20,4,fix.edge=5.5,output="points")
points(gr,col="red")

# square polygon grids
coord<-matrix(c(20,90,90,20),nr=2,byrow=TRUE)
plot(coord,type="n",xlim=c(0,100),ylim=c(0,110),asp=1)
lines(coord,lwd=2)
gr<-pave(coord,20,4)# y decreasing
for (i in 1:length(gr)) polygon(gr[[i]]) 
gr<-pave(coord,20,4,ydown=FALSE) # y increasing
for (i in 1:length(gr)) polygon(gr[[i]],border="blue")

\dontrun{
# Writing a polygon shapefile
gr<-pave(coord,20,4,output="spdf") # y decreasing
library(maptools)
writePolyShape(gr, "myshapefilename")
}

}

\keyword{ dplot }
\keyword{ spatial }
