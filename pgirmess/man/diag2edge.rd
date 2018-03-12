\name{diag2edge}
\alias{diag2edge}

\title{ Computes the edge of a square from its diagonal}
\description{
  Computes the edge of a square from its diagonal. 
}
\usage{
diag2edge(cordseg)
}

\arguments{
  \item{cordseg}{ The diagonal coordinates. This can be a vector c(x1,y1,x2,y2), a 2 x 2 matrix or a data.frame (each line a coordinate) }
}
\details{
  The first point coordinates are the left top of the diagonal. The other coordinates computed are the  other
  top of the square edge. Can be used e.g. to pass a square edge to \code{\link[pgirmess]{pave}} in order
  to compute a sampling grid.
}
\value{
  A 2x2 matrix of points coordinates
}


\seealso{ \code{\link[pgirmess]{pave}} }
\examples{

# diagonal sloping up
coord<-matrix(c(20,20,90,90),nr=2,byrow=TRUE)
plot(coord,type="n",xlim=c(0,100),ylim=c(0,110),asp=1)
lines(coord,lty=2)
# square edge
lines(diag2edge(coord),col="red")

# diagonal sloping down
coord<-matrix(c(20,90,90,20),nr=2,byrow=TRUE)
plot(coord,type="n",xlim=c(0,100),ylim=c(0,110),asp=1)
lines(coord,lty=2)
# square edge
lines(diag2edge(coord),col="red")

# diagonal vertical
coord<-matrix(c(20,90,20,20),nr=2,byrow=TRUE)
plot(coord,type="n",xlim=c(0,100),ylim=c(0,110),asp=1)
lines(coord,lty=2)
# square edge
lines(diag2edge(coord),col="red")

}
\keyword{ dplot }
\keyword{ spatial }
