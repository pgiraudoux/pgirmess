\name{transLines2pix}
\alias{transLines2pix}

\title{Convert MULTILINESTRING and/or LINESTRING into POINT geometry with points at regular distance between nodes }
\description{
  Convert a simple feature geometry made of MULTILINESTRING and/or LINESTRING into a  POINT geometry with points at regular distance between nodes
}
\usage{
transLines2pix(spldf,mindist=100)
}

\arguments{
  \item{spldf}{A \code{\link[sf]{sfc}} object containing MULTILINESTRING or LINESTRING  or both, exclusively}
  \item{mindist}{the distance between two points (default to 100)  }
}
\details{
  This function can be used e.g to discretize track lines (roads, paths, transects, etc.) into series of regular points. Each point is the centre of one interval. Beware that if mindist is larger than the distance between nodes, the output file will keep the nodes. Furthermore, mindist might not be fully respected in some spatial configurations. In such cases to filter points using \code{\link[pgirmess]{st_thintrack}} complementarily is advised.
}
\value{
  A \code{\link[sf]{sf} object} with a POINT geometry type.
}

\seealso{ \code{\link{trans2pix}}, \code{\link{st_thintrack}},  \code{\link{mergeTrackObs}}}

\examples{

if (require(sf)) {
l1 = st_linestring(cbind(c(1,2,3),c(3,2,2)))
S1<-st_multilinestring(list(l1,cbind(l1[,1]+.05,l1[,2]+.05)))
S2<-st_linestring(cbind(c(1,2,3),c(1,1.5,1)))
sl<-st_sfc(list(S1,S2))
plot(sl, col = c("red", "blue"),reset=FALSE)

trpt<-transLines2pix(sl,mindist=0.1)

plot(st_geometry(trpt),add=TRUE)
}

}

\keyword{spatial}
