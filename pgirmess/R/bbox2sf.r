bbox2sf<-function(n,s,w,e,bbox=NA,crs=4326){
  
  if(all(!is.na(bbox),is.matrix(bbox),dim(bbox)==c(2,2))) {
      n<-bbox[2,2]
      s<-bbox[2,1]
      w<-bbox[1,1]
      e<-bbox[1,2]
  }
  
  if(inherits(bbox,"bbox")) {
    n<-bbox[4]
    s<-bbox[2]
    w<-bbox[1]
    e<-bbox[3]
  }
  
  box1<-matrix(c(w,s,w,n,e,n,e,s,w,s),ncol=2,byrow=TRUE)
  box1<-st_sfc(st_polygon(list(box1)),crs=crs)
  box1
}


