\name{val4symb}
\alias{val4symb}

\title{ Center a numerical vector on a parameter position and provides absolute values and colors according to negative and positive values}
\description{
   Center a numerical vector on a parameter position and provides absolute values and colors according to negative and positive values
}
\usage{
val4symb(x, FUN=mean, col = c("blue", "red"),...)
}

\arguments{
  \item{x}{ a numerical vector}
  \item{FUN}{ a function computing a position parameter, typically \code{\link{mean}} or \code{\link{median}}. Default to \code{\link{mean}}}
  \item{col}{ a character vector of 2 values, default=c("blue","red"), blue for <0, red for >=0 }
  \item{\dots}{ optional arguments to 'FUN' }
}

\value{

  A list with
  \item{size }{the absolute values of the difference to the position parameter (eg mean, median)}
  \item{col }{a character vector with 2 colors, each corresponding to positive or negative values}

}

\seealso{ \code{\link{symbols}}, \code{\link{mean}}, \code{\link{median}}, \code{\link{scale}} }
\examples{
x<-rnorm(30)
y<-rnorm(30)

z<-val4symb(rnorm(30))
symbols(x,y,circle=z$size,inches=0.2,bg=z$col)

z<-val4symb(scale(rnorm(30)))
symbols(x,y,circle=z$size,inches=0.2,bg=z$col)

z<-val4symb(rnorm(30),col=c("green","violet"))
symbols(x,y,circle=z$size,inches=0.2,bg=z$col)

z<-val4symb(rnorm(30),trim=0.025)
symbols(x,y,circle=z$size,inches=0.2,bg=z$col)

z<-val4symb(rnorm(30),median)
symbols(x,y,circle=z$size,inches=0.2,bg=z$col)

myfun<-function(x) 20 # passes an arbitrary constant
z<-val4symb(1:30,myfun)
symbols(x,y,circle=z$size,inches=0.2,bg=z$col)


}
\keyword{ color }
\keyword{ dplot }
