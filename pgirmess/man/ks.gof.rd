\name{ks.gof}
\alias{ks.gof}
\title{ Kolmogorof-Smirnov goodness of fit test to normal distribution}
\description{
  Kolmogorof-Smirnov goodness of fit test to normal distribution
}
\usage{
ks.gof(var)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{var}{ a numeric vector }
}
\details{
  A wrapper of ks.test()
}
\value{
   A list with class '"htest"' containing the following components:
  \item{statistic }{the value of the test statistic.}
  \item{p.value }{a character string indicating what type of test was performed.}
  \item{alternative }{ a character string describing the alternative hypothesis.}
  \item{method }{a character string indicating what type of test was performed.}
  \item{data.name }{a character string giving the name(s) of the data.}
}
\references{ see ks.test }


\seealso{ \code{\link{ks.test}}}
\examples{
x<-rnorm(50)
ks.gof(x)
 }

\keyword{ htest }
