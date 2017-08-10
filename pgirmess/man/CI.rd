\name{CI}
\alias{CI}

\title{Confidence interval of percentages}
\description{
  Computes the lower limit and upper limit of the 95 percent confidence interval of percentage estimates 
}
\usage{
CI(x, ...)
}

\arguments{
  \item{x}{ a two-dimensional table, matrix or data.frame with 2 columns, giving the counts of successes and failures, respectively }
  \item{\dots}{ other arguments to pass to \code{\link{prop.test}}, eg \code{conf.level}  }

}
\details{
  Simple wrapper of \code{\link{prop.test}}. The default confidence interval is 95 percent, but can be modified passing values to \code{\link{prop.test}} by the \code{conf.level} argument.
}
\value{
  A 3 column matrix. 
  \itemize{
    \item Column 1: percentage estimate
    \item Column 2: lower limit of the confidence interval
    \item column 3: upper limit of the confidence interval
  }
}

\seealso{ \code{\link{prop.test}}}
\examples{

x<-c(2,10,7,8,7) # eg: number of positive cases
y<-c(56,22,7,20,5)# eg: number of negative cases
CI(cbind(x,y))
CI(cbind(x,y), conf.level=0.99)

}
\keyword{ htest }% at least one, from doc/KEYWORDS
