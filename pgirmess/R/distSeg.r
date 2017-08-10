distSeg<-function(mydata,decdeg=FALSE){
    if(!decdeg)sqrt((mydata[,3]-mydata[,1])^2+(mydata[,4]-mydata[,2])^2)
    else {
    mydeg<-mydata*(pi/180)
    vect<-1853*60*(180/pi)*acos(sin(mydeg[,2])*sin(mydeg[,4])+cos(mydeg[,2])*cos(mydeg[,4])*cos(abs(mydeg[,1]-mydeg[,3])))
    if(any(is.na(vect))) {
      attributes(vect)$NaNcoerced2zero<-which(is.na(vect))
      vect[is.na(vect)]<-0
      warning("One ore more computings (likely between duplicated coordinates) have produced NaN and have been coerced to zero")
    }
    vect
    }
}