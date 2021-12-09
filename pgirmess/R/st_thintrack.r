
st_thintrack<-function(spdf,mindist=100){
  st<-FALSE
  cds<-st_coordinates(spdf)[1,]
  cds2<-NULL
  i<-0
  while(!st){
    mycirc<-polycirc(mindist,cds)
    mycirc<-st_polygon(list(mycirc))
    options(warn=-1)
    spdf<-st_difference(spdf,mycirc)
    options(warn=0)
    cds2<-rbind(cds2,cds)
    if (nrow(spdf)>=1) {
      cds<-st_coordinates(spdf)[1,]
    } else st<-TRUE
  }
  cds2<-data.frame(cds2)
  st_as_sf(cds2,coords=c("X","Y"),crs=st_crs(spdf))
}
