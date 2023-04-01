"print.mc"<-function (x, ...) {
    if (!inherits(x, "mc")) stop("Object must be of class 'mc'")
    cat(x[[1]],"\nalpha:",x[[2]],"\n")
    cat("Comparisons\n")
    print(x[[3]])
}
