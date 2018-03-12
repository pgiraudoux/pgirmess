\name{difshannonbio}
\alias{difshannonbio}
\title{ Empirical confidence interval of the bootstrap of the difference between two Shannon indices }
\description{
  Computes the empirical confidence interval of the bootstrap of the difference between two Shannon indices 
}
\usage{
difshannonbio(dat1, dat2, R = 1000, probs = c(0.025, 0.975))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat1}{ a data.frame of two columns; column = category, column 2 = biomass }
  \item{dat2}{ a data.frame of two columns; column = category, column 2 = biomass }
  \item{R}{ number of permutations }
  \item{probs}{ the limits of the confidence interval }
}
\details{
  Designated to compare the difference between two Shannon's indices computed from two data frames. In each data frame, the first column is the category of prey item, and the second column the estimated biomass.
}
\value{

  A list with the confidence interval of H' and J'

}

\seealso{ \code{\link{shannonbio}}}
\examples{
data(preybiom)
attach(preybiom)
jackal<-preybiom[site=="Y" & sp=="C",5:6]
genet<-preybiom[site=="Y" & sp=="G",5:6]

difshannonbio(jackal,genet,R=150)
  }

\keyword{ misc }% at least one, from doc/KEYWORDS
