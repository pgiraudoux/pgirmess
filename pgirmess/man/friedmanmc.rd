\name{friedmanmc}
\alias{friedmanmc}

\title{ Multiple comparisons after Friedman test }
\description{
  Test of multiple comparison after Friedman test
}
\usage{
friedmanmc(y, groups, blocks,probs=0.05)
}

\arguments{
  \item{y}{ a numeric vector of data values, or a data matrix }
  \item{groups}{ a vector giving the group for the corresponding elements of 'y' if this is a vector;  ignored if 'y' is a matrix.  If not a factor object, it is coerced to one. }
  \item{blocks}{ a vector giving the block for the corresponding elements of 'y' if this is a vector;  ignored if 'y' is a matrix.  If not a factor object, it is coerced to one. }
  \item{probs}{ a probability for the critical difference. }
}
\details{
  Method for formula still not implemented. Formula 7.5a (Siegel & Castellan, 1988 p 180-181) can lead to p values larger than 1 when differences between groups are small. Eventually, they are set to NA and a warning is generated. 
}
\value{
   A list of class 'mc' with the following items:
    \item{statistic }{statistics used}
    \item{p.value}{the p value of the critical difference}
    \item{dif.com}{a data.frame with observed and critical differences}
}
\references{ Siegel & Castellan (1988) Non parametric statistics for the behavioural sciences. Mc Graw Hill Int. Edt.  }

\seealso{ \code{\link{friedman.test}}}
\examples{
  data(siegelp179)
  attach(siegelp179)
  
  friedman.test(score,treatment,block)
  friedmanmc(score,treatment,block)
  friedmanmc(score,treatment,block,probs=0.01)
  
  mymatrix<-matrix(score,nc=3)
  friedman.test(mymatrix)
  friedmanmc(mymatrix)
  detach(siegelp179)
  
}
\keyword{ htest }
