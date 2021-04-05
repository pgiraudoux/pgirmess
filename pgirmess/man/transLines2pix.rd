\name{transLines2pix}
\alias{transLines2pix}

\title{ Convert a SpatialLines or a SpatialLinesDataFrame object into SpatialPointsDataFrame with spatial points at regular distance along the lines }
\description{
  Convert a SpatialLines or a SpatialLinesDataFrame object into SptaialPointsDataFrame with spatial points at regular distance along the lines
}
\usage{
transLines2pix(spldf,mindist=100)
}

\arguments{
  \item{spldf}{ A \code{\link[sp]{SpatialLines}} or a \code{\link[sp]{SpatialLinesDataFrame}} }
  \item{mindist}{the distance between two points (default to 100)  }
}
\details{
  This function can be used e.g to discretize track lines (roads, paths, transects, etc.) into series of regular points. Each point is the centre of one interval. Beware that if mindist is larger than the distance between nodes, the output file will keep the nodes. Furthermore, mindist might not be fully respected in some spatial configurations. In such cases to filter points using \code{\link[pgirmess]{thintrack}} complementarily is advised.
}
\value{
  A \code{\link[sp]{SpatialPointsDataFrame}}
}

\seealso{ \code{\link{trans2pix}}, \code{\link{thintrack}},  \code{\link{mergeTrackObs}}}

\examples{

# from the sp vignette:
     library(sp)
     l1 = cbind(c(1,2,3),c(3,2,2))
     l1a = cbind(l1[,1]+.05,l1[,2]+.05)
     l2 = cbind(c(1,2,3),c(1,1.5,1))
     Sl1 = Line(l1)
     Sl1a = Line(l1a)
     Sl2 = Line(l2)
     S1 = Lines(list(Sl1, Sl1a), ID="a")
     S2 = Lines(list(Sl2), ID="b")
     Sl = SpatialLines(list(S1,S2))
     plot(Sl, col = c("red", "blue"))
     
     trpt<-transLines2pix(Sl,mindist=0.1)
     plot(trpt,add=TRUE)
}

\keyword{spatial}
