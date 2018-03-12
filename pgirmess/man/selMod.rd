\name{selMod}
\alias{selMod}
\alias{selMod.lm}
\alias{selMod.glm}
\alias{selMod.list}

\title{ Model selection according to information theoretic methods }
\description{
 Handles lm, glm and list of  e.g. lm, glm, nls, lme and nlme objects and provides parameters to compare models according to Anderson et al. (2001)
}
\usage{
    selMod(aModel, Order = "AICc", ...)

    \method{selMod}{lm}(aModel, Order = "AICc", dropNull = FALSE, selconv=TRUE, ...)
    \method{selMod}{list}(aModel, Order = "AICc", ...)
}

\arguments{
  \item{aModel}{ a lm or glm model or a list of relevant models (see details) }
  \item{dropNull}{ if TRUE, drops the simplest model (e.g. y\eqn{~}1)  }
  \item{Order}{ if set to "AICc" (default) sort the models on this parameter, otherwise "AIC" is allowed }
  \item{selconv}{ if TRUE (default) keep the models for which convergence is obtained (glm object only) and with no anova singularity (lm and glm) }
  \item{...}{ other parameters to be passed as arguments (not used here) }
}

\details{
  This function provides parameters used in the information theoretic methods for model comparisons.
  \itemize{ 
  \item{.}{lm and glm objects can be passed directly as the upper scope of term addition (all terms added). 
  Every model from y\eqn{\sim}{~}1 is computed adding one term at a time until the upper scope model is derived. This is a stepwise analysis where the terms are added sequentially and this does NOT provide all combinations of terms and interactions. Offset terms cannot be proceeded here.
  } 
  \item{.}{A list of user specified lm, glm, nls, lme or nlme objects (actually any object for which AIC and logLik functions are applicable) to compare can alternately be passed.
  }
  }
}

\value{
 A dataframe including:
 
 \item{LL}{the maximized log-likelihood}
 \item{K}{the number of estimated parameters}
 \item{N2K}{the number of observations/K}
 \item{AIC}{the Akaike index criterion}
 \item{deltAIC}{the difference between AIC and the lowest AIC value}
 \item{w_i}{the Akaike weights}
 \item{deltAICc}{the difference between AICc and the lowest AICc value; advised to be used when n2K \eqn{<} 40}
 \item{w_ic}{the AICc weights}

 The models examined from first to last are stored as attribute
 
}
\references{ 
\itemize{
   \item{.}{Anderson, D.R., Link, W.A., Johnson, D.H. and Burnham, K.P. (2001). Suggestions for presenting the results of data analyses. Journal of Wildlife Management, 65, 373-378}
   \item{.}{Burnham, K.P. and Anderson, D.R. (2002) Model Selection and Multimodel Inference: a Practical Information-Theoretic Approach, 2nd edn., Springer-Verlag, New York. 353 pp}
 }
 }
\author{ Patrick Giraudoux and David Pleydell: pgiraudo@univ-fcomte.fr, david.pleydell@inra.fr }

\seealso{ \code{\link{AIC}},\code{\link{logLik}}, \code{\link[AICcmodavg]{aictab}} }


\examples{
 library(MASS)
 anorex.1 <- lm(Postwt ~ Prewt*Treat, data = anorexia)
 selMod(anorex.1)
 anorex.2 <- glm(Postwt ~ Prewt*Treat, family=gaussian,data = anorexia)
 selMod(anorex.2)
 anorex.3<-lm(Postwt ~ Prewt+Treat, data = anorexia)
 mycomp<-selMod(list(anorex.1,anorex.2,anorex.3))
 mycomp
 attributes(mycomp)$models
}
\keyword{ models }
