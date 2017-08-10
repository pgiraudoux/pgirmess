\name{dirProj}
\alias{dirProj}

\title{ Computes new coordinates given bearings and distances. }
\description{
  Computes new coordinates from bearings (North = 0) and distances
}
\usage{
dirProj(df,deg=TRUE)
}

\arguments{
  \item{df}{ a matrix or data frame of 4 columns giving x, y coordinates, bearings and distances }
  \item{deg}{ if TRUE (default) bearings are in degree, otherwise in radian }

}
\details{
Computings are based on euclidian distance. Therefore, the coordinates should be given in a projected (plan) system (e.g. UTM, Lambert, etc.) and the distance in the same units as the projection system (e.g. meters).
  }
\value{
  a matrix of two columns with the projected coordinates
}

\seealso{ \code{\link[pgirmess]{distSeg}}, \code{\link[maptools]{gcDestination}} }

\examples{

df<-data.frame(x1=0,y1=0,alpha=runif(3,0,360),d=runif(3,0,1))
df
plot(-1:1,-1:1,type="n")
points(0,0,pch=19)
points(dirProj(df))
text(dirProj(df)[,1],dirProj(df)[,2],1:3,pos=4)
}

\keyword{ spatial }
