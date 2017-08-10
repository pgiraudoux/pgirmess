\name{PermTest}
\alias{PermTest}
\alias{PermTest.lm}
\alias{PermTest.lme}
\alias{PermTest.glm}
\alias{print.PermTest}
\title{ Permutation test for lm, lme and glm (binomial and Poisson) objects }
\description{
  Permutation test for lm, lme and glm (binomial and Poisson) objects
}
\usage{
    PermTest(obj, B=1000,...)

    \method{PermTest}{lm}(obj, B=1000,...)
    \method{PermTest}{lme}(obj, B=1000,...)
    \method{PermTest}{glm}(obj, B=1000,...)
}

\arguments{
  \item{obj}{an object of class lm, lme, or glm}
  \item{B}{number of permutations, default = 1000}
  \item{...}{used to pass other arguments}
}
\details{
  For glm, when the response is a two-column matrix with the columns giving the numbers of successes and failures, PermTest.glm uses permcont(); PermTest.lme requires the library nlme.
}
\value{
  A list object of class PermTest including:
  \item{p.value}{the p value obtained}
  \item{B }{the number of permutations}
   \item{call }{the call}
}

\section{Warning }{
  This generic function is implemented in R language, thus can be quite slow. 
}

\note{The implementation of PermTest.lme has been helped by Renaud Lancelot}

\examples{

library(MASS)
mylm<-lm(Postwt~Prewt,data=anorexia)
PermTest(mylm,B=250)


## Dobson (1990) Page 93: Randomized Controlled Trial :
    counts <- c(18,17,15,20,10,20,25,13,12)
    outcome <- gl(3,1,9)
    treatment <- gl(3,3)
    glm.D93 <- glm(counts ~ outcome + treatment, family=poisson)
    PermTest(glm.D93,B=100)

library(nlme)
fm2 <- lme(distance ~ age + Sex, data = Orthodont, random = ~ 1)
PermTest(fm2,B=100)


  }
\keyword{ htest }
