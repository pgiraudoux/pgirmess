\name{classnum}
\alias{classnum}
\alias{print.clnum}
\title{ Gives an index vector of the class category of each value of a numerical vector }
\description{
  Gives an index vector of the class category of each value of a numerical vector
}
\usage{
classnum(x, breaks = "Sturges")
}


\arguments{
  \item{x}{ a vector of values for which the indices are desired }
  \item{breaks}{ one of: 
    \itemize{
        \item a vector giving the breakpoints between bins,
        \item a single number giving the number of bins,
        \item a character string naming an algorithm to compute the number of cells (see Details).
    }
    }
}

\details{
  The default for 'breaks' is '"Sturges"': see 'nclass.Sturges'. Other names for which algorithms are supplied are '"Scott"' and
   '"FD"' for '"Friedman-Diaconis"' (with corresponding functions 'nclass.scott' and 'nclass.FD'). Case is ignored and partial matching is used.
  Breaks and labels are stored as attributes. }

\value{
  A vector of the same length as x, with the index of the class which each value of x belongs to
}


\seealso{ \code{\link[base]{cut}}, \code{\link[classInt]{classIntervals}} }

\examples{
x<-rnorm(30)
classnum(x)
classnum(x,breaks="fd")
classnum(x, breaks=c(-1,0,1))
classnum(x,breaks=5)
}
\keyword{ misc }
