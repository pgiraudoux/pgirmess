\name{date2winter}
\alias{date2winter}

\title{ Convert a POSIXt date into categories corresponding to a autumn/winter/spring sequence  }
\description{
  Convert a POSIXt date into categories corresponding to the time spanning from the late months of a year to the early months of the following year
}
\usage{
date2winter(x, first = 10, last=4)
}


\arguments{
  \item{x}{ a vector of POSIXt dates }
  \item{first}{number of the first month to include (default 10, October)}
  \item{last}{number of the last month to include (default 4, April)}
}

\details{
 In ecology, time data must often be analysed on a time span category covering two successive years (e.g. the winter period). This function convert POSIXt dates into categories corresponding to the time span stretching from a user defined month of a given year (by default October) to a user-defined month of the following year (by default April). If date month is out of the user defined time span the value 'Excluded' is returned.
}

\value{
  A vector of the same length as x, with the time span category each value belongs to.
}


\examples{
 dates <- strptime(c("02/12/2002", "15/01/2003","15/10/2003","15/6/2003",NA),"\%d/\%m/\%Y")
 date2winter(dates)
}

\keyword{ misc }