\name{piankabioboot}
\alias{piankabioboot}
\title{ Bootstrap Pianka's index }
\description{
  Bootstrap Pianka's index and return the limits of the empirical confidence interval specified with probs
}
\usage{
piankabioboot(dataframe1, dataframe2, B = 1000, probs = c(0.025, 0.975))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dataframe1}{ a data frame of two columns: column 1 = dietary category, column 2 = biomass }
  \item{dataframe2}{ a data frame of two columns: column 1 = dietary category, column 2 = biomass }
  \item{B}{ number of permutations }
  \item{probs}{ the limits of the confidence interval }
}
\details{
  Bootstrap Pianka's index and return the limits of the empirical confidence interval sepcified with probs
}
\value{
  a vector of the two CI limits
}

\seealso{ \code{\link{piankabio}} }
\examples{
data(preybiom)
attach(preybiom)
jackal<-preybiom[site=="Y" & sp=="C",5:6]
genet<-preybiom[site=="Y" & sp=="G",5:6]

piankabioboot(jackal,genet,B=100)
  
}
\keyword{ htest }% at least one, from doc/KEYWORDS
