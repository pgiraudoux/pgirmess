\name{print.mc}
\alias{print.mc}

\title{ print method for objects of class 'mc' }
\description{
  print method for objects of class 'mc'
}
\usage{
    \method{print}{mc}(x, ...)
}

\arguments{
  \item{x}{ an object of class 'mc' }
  \item{\dots}{ further arguments to be passed to or from other methods. They are ignored in this function }
}


\seealso{ \code{\link{kruskalmc}}, \code{\link{friedmanmc}} }

\examples{
resp<-c(0.44,0.44,0.54,0.32,0.21,0.28,0.7,0.77,0.48,0.64,0.71,0.75,0.8,0.76,0.34,0.80,0.73,0.8)
categ<-as.factor(rep(c("A","B","C"),times=1,each=6))
kruskalmc(resp, categ)
}
\keyword{ print }
