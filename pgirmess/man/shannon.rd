\name{shannon}
\alias{shannon}
\title{ Computes Shannon's and equitability indices}
\description{
  Computes Shannon's and equitability indices
}
\usage{
shannon(vect, base=2)
}

\arguments{
  \item{vect}{ a probability vector whose sum = 1 or a frequency vector}
  \item{base}{ logarithm base used (default=2) }
}
\details{
  Computes Shannon's and equitability indices. The vector passed can be a probability vector whose sum equal 1 or a vector of frequencies (e.g. the number of food item of each category). 
}
\value{
  A vector of two values: Shannon's and equitability indices. The base logarithm used is stored as attribute
}


\seealso{ \code{\link{shannonbio}} }
\examples{

x<-c(0.1,0.5,0.2,0.1,0.1)
sum(x)
shannon(x)

x<-rpois(10,6)
shannon(x, base=exp(1))

}
\keyword{ misc }
