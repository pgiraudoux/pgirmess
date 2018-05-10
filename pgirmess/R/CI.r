"CI"<-function(x, ...){
    if(!(is.matrix(x) | is.data.frame(x) | is.table(x)) & ncol(x)==2) stop("x must be a two column matrix, table or data.frame")
    if(is.data.frame(x)) x<-as.matrix(x)
    bashau <- cbind(rep(0,nrow(x)),rep(0, nrow(x)), rep(0, nrow(x)))
    for(i in 1:nrow(x)) {
        ic <- prop.test(x[i,,drop=FALSE],...)$conf.int
        bashau[i, 1] <- x[i,1]/(x[i,1]+x[i,2])
        bashau[i, 2] <- ic[1]
        bashau[i, 3] <- ic[2]
    }
    bashau
}
