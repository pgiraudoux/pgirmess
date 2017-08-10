\name{pairsrp}
\alias{pairsrp}

\title{Produces a matrix of scatterplot, regression coefficient and p(Ho) }
\description{
  Produces a matrix with scatterplot, regression line and a loess smooth in the upper right panel;
  correlation coefficient (Pearson, Spearman or Kendall) and the probability of Ho in the lower left panel
}
\usage{
pairsrp(dataframe, meth = "spearman", pansmo = FALSE, abv = FALSE, lwt.cex = NULL, ...)
}

\arguments{
  \item{dataframe}{ a data.frame of numeric values }
  \item{meth}{ a character string indicating which correlation coefficient is to be computed.  One of 'pearson', 'kendall', or 'spearman'(default). Can be abbreviated. }
  \item{pansmo}{ True if a loess smooth is to be plotted. Default to False. }
  \item{abv}{ True if the variable names must be abbreviates. Default to False. }
  \item{lwt.cex}{ character size expansion in the lower panel. }
  \item{\dots}{ graphical parameters can be given as arguments to 'plot'. }
}
\details{
  This function is a wrapper for pairs() and cor()
}


\seealso{ \code{\link{pairs}} }
\examples{
data(iris)
pairsrp(iris[,1:4],meth="pears",pansmo=TRUE,abv=TRUE)
 }

\keyword{ hplot }
