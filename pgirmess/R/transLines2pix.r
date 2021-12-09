transLines2pix<-function(spldf,mindist=100){
  # extraction of the node coordinates, row by row
  spldf0.lst<-rep(list(NA),length(spldf))
  for(i in 1:length(spldf)) spldf0.lst[[i]]<-data.frame(st_coordinates(spldf[[i]]))
  spldf0.lst<-lapply( spldf0.lst,function(x) split(x,x[,3]))
  
  spldf.lst<-NULL
  for(i in 1:length(spldf0.lst)){
    for(ii in 1:length(spldf0.lst[[i]])){
      spldf.lst<-c(spldf.lst,list(spldf0.lst[[i]][[ii]][,1:2]))
    }
  }
  
  # segmentation
  spldf2.lst<-rep(list(NULL),length(spldf.lst))
  mindist<-mindist
  for (i in 1:length(spldf.lst)) {
    for (j in 1:(nrow(spldf.lst[[i]])-1)) {
    # cat("j = ",j,"\n")
    d1<-sqrt((spldf.lst[[i]][j,1]-spldf.lst[[i]][j+1,1])^2+(spldf.lst[[i]][j,2]-spldf.lst[[i]][j+1,2])^2)
    if (d1>mindist) {  
      npts<-floor(d1/mindist)+2
      seg<-cbind(seq(spldf.lst[[i]][j,1],spldf.lst[[i]][j+1,1],l=npts),seq(spldf.lst[[i]][j,2],spldf.lst[[i]][j+1,2],l=npts))
      spldf2.lst[[i]]<-rbind(spldf2.lst[[i]],seg)        
    }
    else {
    seg<-spldf.lst[[i]][c(j,j+1),1:2]
    spldf2.lst[[i]]<-rbind(spldf2.lst[[i]],seg)
    }
    }
}

intervalles<-NULL
for(i in 1:length(spldf2.lst)) intervalles<-rbind(intervalles,spldf2.lst[[i]])
intervalles<-data.frame(ID=1:nrow(intervalles),intervalles)

st_as_sf(intervalles,coords=c("X1","X2"),crs=st_crs(spldf))

}