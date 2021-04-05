\name{mergeTrackObs}
\alias{mergeTrackObs}

\title{ Merge two SpatialPoints or SpatialPointsDataFrame objects, one modelling a track, the other observations  }
\description{
  Merge two SpatialPoints or SpatialPointsDataFrame objects, one modelling a track, the other observations.
}
\usage{
mergeTrackObs(sppdfInt,sppdfObs,obscol=NULL)
}

\arguments{
  \item{sppdfInt}{ A \code{\link[sp]{SpatialPoints}} object (the track)}
  \item{sppdfObs}{A \code{\link[sp]{SpatialPoints}} or \code{\link[sp]{SpatialPointsDataFrame}} object (the observations) }
  \item{obscol}{ The column number in which the number of observations at this point can be found in sppdfObs}
}
\details{
  Road site counts or faeces collections are often carried out along tracks (paths, roads, transects, etc.). Tracks can be discretized in regular intervals e.g. with \code{\link[pgirmess]{transLines2pix}} or \code{\link{thintrack}}, each point being an interval centre. mergeTrackObs uses such a discretized track and sums observations to their nearest track interval. The output is a SpatialPointsDataFrame where each point corresponds to the centre of one track interval. The number of observations in each interval is given in the attribute file. If the number of observations at an observation point can be 0 or any positive number, use obscol to identify the column of sppdfObs where this number is stored.
}

\value{
  A SpatialPointsDataframe, with the following attributes:
   \itemize{ 
  \item{ID}{ ID number } 
  \item{nObs}{ The number of observations in the interval}
  }
}

\seealso{ \code{\link{transLines2pix}}, \code{\link{thintrack}}}

\examples{

    # track
    library(sp)
     l2 = cbind(c(1,2,3),c(1,1.5,1))
     Sl2 = Line(l2)
     S2 = Lines(list(Sl2), ID="b")
     Sl = SpatialLines(list(S2))
     plot(Sl, col = "blue")
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
    coordinates(obs)<-~long+lat
obs@data$n<-c(3,4,0,1,1,5,6,4,3,4,4,7,2,2,1) # possibly a count on each location


# examples

# one observation on each location
track<-transLines2pix(Sl,0.1)
trackObs<-mergeTrackObs(track,obs)

par(mfrow=c(1,2))
plot(Sl)
plot(track,add=TRUE,col="blue")
plot(obs,add=TRUE,col="red",pch=1)

plot(Sl)
plot(track,add=TRUE,col="blue")
plot(trackObs,cex=trackObs@data$nObs,pch=19, col="red",add=TRUE)


# 0 or more observations on each location
obs@data$n<-c(3,4,0,1,1,5,6,4,3,4,4,7,2,2,1) # possibly a count on each location
obs@data
trackObs<-mergeTrackObs(track,obs,obscol=2)

par(mfrow=c(1,2))
plot(Sl)
plot(track,add=TRUE,col="blue")
plot(obs,add=TRUE,col="red",pch=1)

plot(Sl)
plot(track,add=TRUE,col="blue")
plot(trackObs,cex=trackObs@data$nObs/3,pch=19, col="red",add=TRUE)

     
}

\keyword{spatial}
