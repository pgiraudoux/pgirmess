\name{distSeg}
\alias{distSeg}


\title{ Computes distances between the top coordinates of segments. }
\description{
  Computes the distances between the top coordinates of segments.  
}
\usage{
distSeg(mydata,decdeg=FALSE)
}

\arguments{
  \item{mydata}{ A matrix or data frame of 4 columns giving the coordinates of each segment tops x1, y1, x2, y2 }
  \item{decdeg}{ TRUE if point coordinates are longitude-latitude decimal degrees, in which case distances are measured in meters  }

}
\details{
  If degdec is FALSE (default), distance computed is Euclidian. Units depends on the coordinate systems.
  If decdeg = TRUE, D = 1852 * 60 * (180/pi) * acos ( sin(la1) * sin(la2) + cos(la1) * cos(la2) * cos(abs(lg1 - lg2)).
  This method calculates the great circle distance, is based on spherical trigonometry, and assumes that:
    \itemize{
        \item 1 minute of arc is 1 nautical mile 
        \item 1 nautical mile is 1.852 km
    }
  When computing with decdeg=TRUE duplicated coordinates strictly identical can lead to produce NaN. The corresponding distance is coerced to zero with warnings and if so, an attribute 'NaNcoerced2zero' with the row numbers of the distances that have been coerced to zero is created
}
\value{
  A vector of distances, possibly with the attribute 'NaNcoerced2zero' with the row numbers of the distances that have been coerced to zero if any.
}

\seealso{\code{\link[pgirmess]{distNode}}, \code{\link[pgirmess]{distTot}}}

\examples{
x1<-rnorm(20)
y1<-rnorm(20)
x2<-rnorm(20)
y2<-rnorm(20)
mydata<-cbind(x1,y1,x2,y2)
distSeg(mydata)
}

\keyword{ spatial }
