\name{valchisq}
\alias{valchisq}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Values of the partial chi-square in each cell of a contingency table }
\description{
  Computes the values of the partial chi-square in each cell of a contingency table
}
\usage{
valchisq(matr)
}

\arguments{
  \item{matr}{ a matrix (contingency table) }
}
\details{
Computes the values of the chi-square in each cell of a contingency table
}

\note{
No correction (e.g. Yate's etc.) is done !
}

\value{
  A matrix with the chi-square values computed
}


\seealso{valat, chisq.test }
\examples{
x <- matrix(c(12, 5, 7, 7), nc = 2)
x
valchisq(x)
}
\keyword{ array }% at least one, from doc/KEYWORDS
