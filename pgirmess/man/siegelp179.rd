\name{siegelp179}
\alias{siegelp179}
\docType{data}
\title{ Data on rats training }
\description{
  Ranks of 18 matched groups of rats after training under three methods of reinforcement.
}
\usage{data(siegelp179)}
\format{
  A data frame with 54 observations on the following 3 variables.
  \describe{
    \item{block}{Group (each of three litter mates)}
    \item{treatment}{A factor for the type of reinforcement with levels \code{RR} \code{RU} \code{UR}}
    \item{score}{Speed of transfer to another behaviour (the lower, the better the learning)}
  }
}

\details{
  18 blocks made of three rats of the same litter, each being given a different learning pattern (RR, RU or UR)
}


\source{
  Grosslight J.H. and Radlow R. (1956) Patterning effect of the nonreinforcement-reinforcement sequence in a discrimination situation. Journal of Comparative and Physiological Psychology, 49: 542-546 in Siegel & Castellan 1988. Non parametric statistics for the behavioural sciences. Mc Graw Hill Int. Edt.
}

\examples{
data(siegelp179)
}
\keyword{datasets}
