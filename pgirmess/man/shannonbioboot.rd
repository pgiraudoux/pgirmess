\name{shannonbioboot}
\alias{shannonbioboot}

\title{ Boostrap Shannon's and equitability indices 
}
\description{
  Boostrap Shannon's and equitability indices and return an object of class boot. Confidence intervals can be computed with boot.ci().
}
\usage{
shannonbioboot(data1, B = 1000)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data1}{ a data frame of two columns: column 1, dietary category; column 2, abundance (n, biomass,...) }
  \item{B}{ number of permutations }
}
\details{
  Boostrap Shannon\'s and equitability indices and return an object of class boot. Confidence intervals can be computed with boot.ci(). Requires the boot library.
}
\value{
  An object of class boot including the bootstrap statistics for H' (t1*) and J' (t2*)
}

\seealso{ \code{\link[boot]{boot}}, \code{\link[boot]{boot.ci}}, \code{\link[pgirmess]{shannonbio}} }
\examples{
data(preybiom)
myboot<-shannonbioboot(preybiom[,5:6],B=100)
library(boot)
boot.ci(myboot, index=1,type=c("norm","basic","perc")) # confidence intervals for H'
boot.ci(myboot, index=2,type=c("norm","basic","perc")) # confidence intervals for J'
}
\keyword{ htest }
