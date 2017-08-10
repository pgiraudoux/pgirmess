\name{dirSeg}
\alias{dirSeg}

\title{ Computes segment directions. }
\description{
  Computes the direction of segments from the first top clockwise (North = 0)
}
\usage{
dirSeg(x,deg=TRUE)
}

\arguments{
  \item{x}{ a matrix or data frame of 4 columns giving the coordinates of each segment tops x1, y1, x2, y2 }
  \item{deg}{ if TRUE (default) the output is in degrees, otherwise in radians }

}
\details{

The first two colomns give the first top coordinates, x then y, and the next two the second top coordinates.

  }
\value{
  A vector of directions
}

\seealso{ \code{\link[pgirmess]{dirProj}}, \code{\link[maptools]{gzAzimuth}} }

\examples{

x2<-rnorm(10)
y2<-rnorm(10)
mydata<-cbind(0,0,x2,y2)
dirs<-dirSeg(mydata)
dirs

plot(range(mydata[,c(1,3)]),range(mydata[,c(2,4)]),type="n")
Segments(mydata)
text(mydata[,3],mydata[,4],paste(round(dirs,0),"\u00b0"),cex=0.7)
  }

\keyword{ spatial }
