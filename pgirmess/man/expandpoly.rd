\name{expandpoly}
\alias{expandpoly}

\title{ Homothetia (size expansion) of a polygon}
\description{
  Compute the new coordinates of polygon expanded by a factor.
}
\usage{
expandpoly(mypol, fact)
}

\arguments{
  \item{mypol}{matrix or data.frame of polygon coordinates }
  \item{fact}{expansion factor }
}

\value{
  A matrix of polygon coordinates
}

\details{
  The polygon area obtained after expansion is equal to \eqn{fact^2} times the original polygon area 
}

\seealso{ \code{\link{polygon}} }
\examples{

x<-c(-5,-4.5,0,10,5)
y<-c(-10,0,5,5,-8)
poly<-cbind(x,y)
plot(-10:20,-20:10,type="n")
polygon(poly)
polygon(expandpoly(poly,1.5),border="red")
polygon(expandpoly(poly,0.5),border="blue")

}
\keyword{ manip }
