
thintrack<-function(spdf,mindist=100){
  st<-FALSE
  cds<-coordinates(spdf)[1,]
  cds2<-NULL
  i<-0
  while(!st){
    mycirc<-polycirc(mindist,cds)
    mycirc<-SpatialPolygons(list(Polygons(list(Polygon(mycirc)),ID=1)),proj4string=CRS(proj4string(spdf)))
    idx<-over(spdf,mycirc)    
    spdf<-spdf[is.na(idx),]
    cds2<-rbind(cds2,cds)
    if (nrow(spdf)>=1) {
      cds<-coordinates(spdf)[1,]
    } else st<-TRUE
  }
  rownames(cds2)<-1:nrow(cds2)
  cds2<-data.frame(cds2)
  names(cds2)<-c("x","y")
  coordinates(cds2)<-~x+y
  proj4string(cds2)<-proj4string(spdf)
  cds2
}
