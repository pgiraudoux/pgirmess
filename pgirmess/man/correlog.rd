\name{correlog}
\alias{correlog}
\alias{plot.correlog}
\alias{print.correlog}

\title{ Computes Moran's or Geary's coefficients on distance classes }
\description{
  Computes Moran's or Geary's coefficients on distance classes from a set of spatial coordinates and corresponding z values
}
\usage{
correlog(coords, z, method="Moran", nbclass = NULL,...)
}

\arguments{
  \item{coords}{a two columns array, data.frame or matrix of spatial coordinates. Column 1 = X, Column 2 = Y. }
  \item{z}{ a vector for the values at each location. Must have the same length as the row number of coords }
  \item{method}{ the method used. Must be "Moran" (default) or "Geary" }
  \item{nbclass}{number of bins. If NULL Sturges method is used to compute an optimal number}
  \item{\dots}{further arguments to pass to e.g. \code{\link[spdep]{moran.test}} or \code{\link[spdep]{geary.test}}}
}
\details{
  Uses the library spdep including \code{\link[spdep]{moran.test}} or \code{\link[spdep]{geary.test}}. Distances are euclidian and in the same unit as the spatial coordinates.  Moran's Ho: I values larger than 0 due to chance; Geary's Ho: C values lesser than 1 due to chance. Correlog has print and plot methods; statistically significant values (p<0.05) are plotted in red.
}
\value{
  An object of class "correlog", a matrix including:
  \item{class }{bin centers}
  \item{I }{the coefficient values}
  \item{p.value }{probability of Ho }
  \item{n }{the number of pairs}
}
\references{ see library spdep }

\author{Patrick Giraudoux pgiraudo@univ-fcomte.fr, Colin Beale c.beale@macaulay.ac.uk and Mike Treglia mike-treglia@utulsa.edu }
 
\section{Warning }{Computing can take a long time for large data sets} 

\seealso{ \code{\link[spdep]{geary.test}}, \code{\link[spdep]{moran.test}} }
\examples{

library(spdep)
data(oldcol)
attach(COL.OLD)
coords<-cbind(X,Y)
res<-correlog(coords,CRIME)
plot(res)

res<-correlog(coords,CRIME,method="Geary")
plot(res)

}
\keyword{ spatial }
