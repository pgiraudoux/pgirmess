\name{piankabio}
\alias{piankabio}
\title{ Computes the Pianka's index of niche overlap }
\description{
  Computes the Pianka's index of niche overlap
}
\usage{
piankabio(dataframe1, dataframe2)
}

\arguments{
  \item{dataframe1}{ a data frame of two columns: column 1 = dietary category, column 2 = biomass }
  \item{dataframe2}{ a data frame of two columns: column 1 = dietary category, column 2 = biomass  }
}
\details{
  Computes the Pianka's index of niche overlap
}
\value{
  Return the Pianka's index
}

\references{
Pianka R.D. 1973 The scructure of lizard communities. Annual Review of Ecology and Systematics, 4: 53-74.

Amroun M., Giraudoux P., Delattre P. 2006 Comparative study of the diets of two sympatric carnivores - the Jackal (Canis aureus) and the Genet (Genetta genetta) - at two sites in Kabylia, Algeria. Mammalia, 70 (3): 247-254
}


\seealso{ \code{\link{piankabioboot}} }
\examples{

data(preybiom)
attach(preybiom)
jackal<-preybiom[site=="Y" & sp=="C",5:6]
genet<-preybiom[site=="Y" & sp=="G",5:6]

piankabio(jackal,genet)
  
}
\keyword{ misc }% at least one, from doc/KEYWORDS
