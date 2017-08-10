\name{Segments}
\alias{Segments}
\title{ Draw line segments between pairs of points. }
\description{
   Draw line segments between pairs of points from a vector, matrix or data frame of 4 points coordinates x0, y0, x1, y1
}
\usage{
Segments(mydata, ...)
}
\arguments{
  \item{mydata}{ a vector, matrix or data frame }
  \item{\dots}{ further graphical parameters (from 'par') }
}
\details{
  a wrapper to 'segments' to handle coordinates passed as vector, matrix or data frame. Any vector is turned into a matrix of four columns.

}


\seealso{ \code{\link{segments}} }
\examples{
 mydata<-cbind(rnorm(20),rnorm(20),rnorm(20),rnorm(20))
 plot(range(rbind(mydata[,1],mydata[,3])),range(rbind(mydata[,2],mydata[,4])),
 type="n",xlab="",ylab="")
 Segments(mydata,col=rainbow(20))
 
 myvec<-rnorm(4)
 plot(myvec[c(1,3)],myvec[c(2,4)],type="n",xlab="",ylab="")
 Segments(myvec)
 
 myvec<-rnorm(16)
 plot(myvec,myvec,type="n",xlab="",ylab="")
 Segments(myvec)
  }

\keyword{ hplot }
