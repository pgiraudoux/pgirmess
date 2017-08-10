\name{TukeyHSDs}
\alias{TukeyHSDs}
\title{ Simplify the list of a TukeyHSD object keeping the significant differences only. }
\description{
  Simplify the list of a TukeyHSD object keeping the significant differences only.
}
\usage{
TukeyHSDs(TukeyHSD.object)
}

\arguments{
  \item{TukeyHSD.object}{ An object of calls "TukeyHSD" }
}
\details{
 When TukeyHSD is used on a fitted model with large numbers of categories, the number of pairwise comparisons is extremely large (n(n-1)/2). 
 TukeyHSDs simplify the TukeyHSD object keeping the significant pairwise comparisons only. A plot method exists for TukeyHSD objects.
}
\value{
  An object of class "multicomp" and "TukeyHSD"
}

\seealso{ \code{\link{TukeyHSD}} }
\examples{

     summary(fm1 <- aov(breaks ~ wool + tension, data = warpbreaks))
     myobject<-TukeyHSD(fm1, "tension", ordered = TRUE)
     myobject
     TukeyHSDs(myobject)
  }
\keyword{ htest }
