\name{cormat}
\alias{cormat}

\title{ Gives a correlation matrix and the probability of Ho for each correlation }
\description{
  Gives a correlation matrix and the probability of Ho for each correlation estimate
}
\usage{
cormat(donnees, method = "spearman", sep = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{donnees}{ a data frame of numerics }
  \item{method}{ a string of characters among 'pearson', 'spearman' (default), 'kendall' }
  \item{sep}{ If true, gives the results in two matrices (default = F)}
}
\details{
  Wrapper for 'cor' and 'cor.test'. The results can be given in one or two matrices.
}
\value{
  If sep = F (default) a list including:
  \item{method }{The method used}
  \item{prob.cor }{Upper triangle, the correlations; lower triangle, the probability of Ho}
  If sep = T  a list including:
  \item{method }{The method used}
  \item{coef.estimates }{The correlation matrix}
  \item{p.value }{The Ho probability matrix}

}

\seealso{ \code{\link{cor}}, \code{\link{cor.test}} }
\examples{
cormat(longley)
cormat(longley,sep=TRUE)
}
\keyword{ htest }
