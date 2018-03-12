\name{shannonbio}
\alias{shannonbio}

\title{ Computes Shannon's and equitability indices from a data frame of dietary analysis (n, biomass,...)  }
\description{
  Computes Shannon's and equitability indices from a data frame of two columns: column 1, dietary category; column 2, abundance (n, biomass,...)
}
\usage{
shannonbio(data1)
}

\arguments{
  \item{data1}{ a data frame of two columns: column 1, dietary category; column 2, abundance (n, biomass,...) }
}
\details{
  Computes Shannon's and equitability indices from a data frame of two columns: column 1, dietary category; column 2, abundance (n, biomass,...)
}
\value{
  A vector of two values: Shannon's and equitability indices
}

\seealso{ \code{\link[pgirmess]{shannon}}, \code{\link[pgirmess]{difshannonbio}} }
\examples{

data(preybiom)
shannonbio(preybiom[,5:6])

}
\keyword{ misc }
