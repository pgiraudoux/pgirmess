findR<-function(coords) {
  if (!(is.matrix(coords) | is.data.frame(coords))) stop("coords must be a 2 column matrix or data.frame") 
      else if (ncol(coords)!=2) stop("coords must have strictly two columns")
  center<-colMeans(coords)
  mydist<-as.matrix(dist(rbind(center,coords)))
  myc<-coords[which(mydist[,1]==max(mydist[,1]))-1,,drop=F]
  sqrt((myc[1,1]-center[1])^2+(myc[1,2]-center[2])^2)
}
