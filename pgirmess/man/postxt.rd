\name{postxt}
\alias{postxt}

\title{ Computes coordinates defined from their relative position on x and y in the plotting region }
\description{
  Computes coordinates defined from their relative position on x and y in the plotting region
}
\usage{
postxt(cd = "ul")
}

\arguments{
  \item{cd}{a numerical vector of length 2, values comprised between 0 and 1, or one predefined among "ul", "bl", "ur", "br", "uc", "bc", "ml", "mc", "mr" }
}
\details{
  The argument cd gives the relative position to be computed in ratio of the x or y axis. For instance
  c(0.025,0.985) means 2.5 percents on the maximum range of the plot region on x, and 98.5 percents on y (means: close to the upper left corner of the plotting region). Predefined positions are available:
  "ul", upper left,"bl" bottom left, "ur" upper right, "br" bottom right", "uc" upper center, "bc" bottom center", "ml" medium left, "mc" medium center, "mr" medium right
}
\value{
  A list:
  \item{x }{coordinate on x}
  \item{y }{coordinate on y}
}

\seealso{ \code{\link{text}}}
\examples{

plot(rnorm(30),rnorm(30),type="n")
text(postxt("ul"),"here",pos=4)
text(postxt("ur"),"here again",pos=2)
text(postxt("bc"),"again and again")

}
\keyword{ dplot }
