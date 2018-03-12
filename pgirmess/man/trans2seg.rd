\name{trans2seg}
\alias{trans2seg}

\title{ Convert a transect coordinate file into a matrix with segment coordinates. }
\description{
  Convert a transect coordinate file (e.g.: waypoints) into a matrix with segment coordinates.
}
\usage{
trans2seg(vect)
}

\arguments{
   \item{vect}{ A two column matrix or data.frame }
}
\details{
  The argument passed is a matrix or data.frame of two columns each row is a transect interval; each column must start (first row) and end (last row) with a landmark ; intermediate waypoints must have coordinates in the two columns of the row. Other rows must be NA values.
}
\value{
  A matrix of 4 columns to be passed e.g. to functions as "segments".
}


\seealso{ trans2pix }
\examples{

x<-c(10,NA, NA, NA,56,NA,NA,100)
y<-c(23,NA, NA, NA,32,NA,NA,150)
cols=c("red","blue","blue","blue","red","blue","blue","red")
plot(x,y,col=cols,pch=19)
mysegs<-trans2seg(cbind(x,y))
segments(mysegs[,1],mysegs[,2],mysegs[,3],mysegs[,4])
}

\keyword{ utilities }
