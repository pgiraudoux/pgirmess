\name{mergeTrackObs}
\alias{mergeTrackObs}

\title{Count the nearest observations to points corresponding to track intervals }
\description{
 Count the nearest observations to points corresponding to track intervals (e.g. observation counts along a road discretized into points).
}
\usage{
mergeTrackObs(sppdfInt,sppdfObs,obscol=NULL)
}

\arguments{
  \item{sppdfInt}{ \code{\link[sf]{sfc}} object containing points (POINT) (the track)}
  \item{sppdfObs}{\code{\link[sf]{sfc}} object containing points (POINT) (the observations) }
  \item{obscol}{The column number in which the number of observations at this point can be found in sppdfObs, if any (default=NULL, no such data)}
}
\details{
Road side counts and faeces collections are often carried out along tracks (paths, roads, transects, trails, etc.). Tracks can be discretized in regular intervals e.g. with \code{\link[pgirmess]{transLines2pix}} or \code{\link{st_thintrack}}, each point being the center of a track interval. mergeTrackobs computes the number of observations that are the closest to each interval (compare to the other intervals) and give it in the column 'nObs'. if the argument 'obscol' is NULL, observations are considered presence/absence. If the number of observations is a true count (0 or any positive number) the argument 'obscol' can be used to identify the column of 'sppdfObs' where those counts must be found. Coordinate reference systems must be the identical.
}

\value{
  A \code{\link[sf]{sfc}} object, of POINT geometry, with the following columns:
   \itemize{ 
  \item{ID}{ ID number} 
  \item{nObs}{ The number of observations in the interval}
  \item{geometry} {POINT geometry}
  }
}

\seealso{ \code{\link{transLines2pix}}, \code{\link{st_thintrack}}}

\examples{


if(require(sf)){
# track

sl<-st_sfc(st_linestring(cbind(c(1,2,3),c(1,1.5,1))))
plot(sl, col = "blue")

    #observations
     obs <- structure(list(ID = 1:15, long = c(1.04609377280342, 1.0890625305741, 
1.08125002916125, 1.24921880953755, 1.34687507719818, 1.50312510545521, 
1.88984392539134, 2.37812526369453, 2.39375026652023, 2.36640651157525, 
2.38593776510738, 2.62031280749291, 2.69843782162142, 2.85078159917202, 
2.90546910906198), lat = c(1.04062476682306, 1.05624976964876, 
1.03671851611663, 1.13828103448369, 1.16562478942867, 1.26718730779574, 
1.43124983746561, 1.32968731909855, 1.32187481768569, 1.30624981485999, 
1.28281231062144, 1.20468729649293, 1.13828103448369, 1.08749977530016, 
1.03671851611663)), .Names = c("ID", "long", "lat"), row.names = c(NA, 
-15L), class = "data.frame")
points(obs[,2:3],col="red")

obs<-st_as_sf(obs,coords=c(2:3))
# possibly a count (number of individuals observed) on each location
obs$n<-c(3,4,0,1,1,5,6,4,3,4,4,7,2,2,1) 

# examples

# Presence/absence on each observation
track<-transLines2pix(sl,0.1)
trackObs<-mergeTrackObs(track,obs)

par(mfrow=c(1,2))
plot(sl,reset=FALSE)
plot(track,add=TRUE,col="blue")
plot(st_geometry(obs),add=TRUE,col="red",pch=1)

plot(sl,reset=FALSE)
plot(track,add=TRUE,col="blue")
plot(trackObs,cex=trackObs$nObs,pch=19, col="red",add=TRUE)


# 0 or more observations on each location
head(obs)
st_drop_geometry(obs) # the counts are in column "n" (column 2 in the data.frame)

trackObs<-mergeTrackObs(track,obs,obscol="n")

par(mfrow=c(1,2))
plot(sl,reset=TRUE)
plot(track,add=TRUE,col="blue")
plot(st_geometry(obs),add=TRUE,col="red",pch=1)

plot(sl)
plot(track,add=TRUE,col="blue")
plot(st_geometry(trackObs),cex=trackObs$nObs/3,pch=19, col="red",add=TRUE)


}
     
}

\keyword{spatial}
