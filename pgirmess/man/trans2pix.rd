\name{trans2pix}
\alias{trans2pix}

\title{ Convert a transect coordinate file with some waypoints separated by NA into a matrix with intermediate coordinates replacing NA. }
\description{
  Convert a transect coordinate file with some waypoints separated by NA into a matrix with intermediate coordinates replacing NA.
}
\usage{
trans2pix(vect)
}

\arguments{
  \item{vect}{ A two column matrix or data.frame }
}
\details{
  If vect has more than two column the two first column only are read. This function computes the intermediate coordinates between two waypoints replacing NA values.
}
\value{
  A matrix with the intermediate coordinates computed.
}

\seealso{ \code{\link{trans2seg}} }
\examples{

x<-c(10,NA, NA, NA,56,NA,NA,100)
y<-c(23,NA, NA, NA,32,NA,NA,150)
cols=c("red","blue","blue","blue","red","blue","blue","red")
plot(x,y,col=cols,pch=19)
plot(trans2pix(cbind(x,y)),col=cols,pch=19)

}
\keyword{spatial}
