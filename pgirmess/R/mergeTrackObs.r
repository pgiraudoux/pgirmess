mergeTrackObs<-function (sppdfInt, sppdfObs, obscol=NULL) {
  if (st_crs(sppdfInt) != st_crs(sppdfObs)) stop("coordinate reference system must be identical")
  trc <- st_coordinates(sppdfInt)
  obs <- st_coordinates(sppdfObs)
  trckObs <- data.frame(trc, nObs = 0)
  for (i in 1:nrow(obs)) {
    distCal<-data.frame(matrix(rep(obs[i,],nrow(trc)),ncol=2,byrow=T),trc)
    distCal$dist<- sqrt((distCal[,1]-distCal[,3])^2+(distCal[,2]-distCal[,4])^2)
    idxtrc<-which(distCal$dist==min(distCal$dist))[1]
    if (is.null(obscol)){
      trckObs$nObs[idxtrc]<-trckObs$nObs[idxtrc]+1
    } else trckObs$nObs[idxtrc]<-trckObs$nObs[idxtrc]+st_drop_geometry(sppdfObs)[i,obscol]
  }
  trckObs <- data.frame(ID = 1:nrow(trckObs), trckObs)
  st_as_sf(trckObs,coords=c("X","Y"),crs=st_crs(sppdfObs))
}


