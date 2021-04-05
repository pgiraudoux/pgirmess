distNNeigh<-function(db){
  db<-as.matrix(db)
  nn<-knearneigh(db,use_kd_tree=FALSE)
  nn<-knn2nb(nn)
  res<-unlist(nbdists(nn,db))
  res
}