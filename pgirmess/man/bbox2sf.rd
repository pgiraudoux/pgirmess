\name{bbox2sf}
\alias{bbox2sf}
\title{Convert a bounding box into a sf object.}
\description{Convert a bounding box into a sf object.}

\usage{bbox2sf(n,s,w,e,bbox=NA,crs=4326)}

\arguments{
  \item{n}{the top north latitude}
  \item{s}{the bottom south latitude}
  \item{w}{the most western longitude}
  \item{e}{the most eastern longitude}
  \item{bbox}{a bounding box 2 x 2 matrix as produced e.g. by  \code{\link[sp]{bbox}}, with first row = w, e and second row = s, n, or a numeric vector with xmin, ymin, xmax, ymax in this order as produced by \code{\link[sf]{st_bbox}}}
  \item{crs}{the ID number of a coordinate reference system as defined in the EPSG system \url{https://epsg.io/} (default 4326, WGS84)}
}

\details{

This function converts a set of coordinates limiting a bounding box into a an object of class "sfc_POLYGON"  (see \code{\link[sf]{st_sfc}}). It can be used for instance to clip a subset of a larger spatial object (e.g. using \code{\link[sf]{st_intersection}})
}

\value{ 
A simple feature geometry of class "sfc_POLYGON" with a coordinate reference system, see \code{\link[sf]{st_sfc}}.
}


\examples{

n<-79
s<--54
w<--166
e<-178


myPoly1<-bbox2sf(n,s,e,w)
plot(myPoly1)

# bbox as a 2 x 2 matrix as produced by sp:bbox
mybbox<-matrix(c(w,e,s,n),nrow=2,byrow=TRUE)
myPoly2<-bbox2sf(bbox=mybbox)
plot(myPoly2,border="red")

# bbox as produced by sf:st_bbox
if (require(sf)) {
myPoly3<-bbox2sf(bbox=st_bbox(myPoly2))
plot(myPoly3,border="blue")
}

}


\keyword{utilities}

