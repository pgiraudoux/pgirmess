\name{kruskalmc}
\alias{kruskalmc}
\alias{kruskalmc.default}
\alias{kruskalmc.formula}
\encoding{latin1}
\title{ Multiple comparison test after Kruskal-Wallis }
\description{
  Multiple comparison test between treatments or treatments versus control after Kruskal-Wallis test
}
\usage{
kruskalmc(resp,...)
\method{kruskalmc}{default}(resp, categ, probs = 0.05, cont=NULL,...)
\method{kruskalmc}{formula}(resp,data=NULL,...)
}

\arguments{
  \item{resp}{ a numeric vector of data values or a formula of the type 'response~category'. }
  \item{categ}{ a factor object giving the group for the corresponding elements of 'x' }
  \item{probs}{ the significance level}
  \item{cont}{ NULL (default) for multiple comparison between treatments; 'one-tailed' or 'two-tailed'  for corresponding multiple comparisons treatments versus control; partial matching allowed}
  \item{data}{ a data.frame including the variables used in the formula }  
  \item{...}{ other parameters to be passed as arguments (not used here) }
}


\details{

When the value of a Kruskal-Wallis test is significant, it indicates that at least one of the groups is different from at least one of the others. This test helps determining which groups are different with pairwise comparisons adjusted appropriately for multiple comparisons. Those pairs of groups which have observed differences higher than a critical value are considered statistically different at a given significance level. Three types of multiple comparisons are implemented: comparisons between treatments, 'one-tailed' and 'two-tailed' comparison treatments versus control.  The first factor level is considered the control. NAs are omitted from data before processing.
	
For further details please consider the refence below where the method is fully described, or visit \url{https://giraudoux.pagesperso-orange.fr/#pgirmess} where a copy of the corresponding book section is downloadable.
}

\value{
  A list of class 'mc' with the following items:
  \item{statistic }{statistics used}
  \item{signif.level}{the significance level}
  \item{dif.com}{a data.frame with observed and critical differences}
}

\note{Two alternative methods are proposed in the section 'see also', on François Gillet's suggestion. The three methods do not give necessarily the same results, and the why is still to investigate}

\references{ Siegel and Castellan (1988) Non parametric statistics for the behavioural sciences. MacGraw Hill Int., New York. pp 213-214  }

\seealso{ \code{\link{kruskal.test}}; to reorder factor levels see \code{\link{relevel}}; for other functions about median multiple comparison see \code{\link[PMCMR]{posthoc.kruskal.conover.test}}, \code{\link[agricolae]{kruskal}}}

\examples{
resp<-c(0.44,0.44,0.54,0.32,0.21,0.28,0.7,0.77,0.48,0.64,0.71,0.75,0.8,0.76,0.34,0.80,0.73,0.8)
categ<-as.factor(rep(c("A","B","C"),times=1,each=6))
kruskalmc(resp, categ)
kruskalmc(resp, categ, probs=0.01)
kruskalmc(resp, categ, cont="one-tailed")
kruskalmc(resp, categ, cont="two-tailed")

kruskalmc(resp~categ)
kruskalmc(resp~categ, probs=0.01)
kruskalmc(resp~categ, cont="one-tailed")
kruskalmc(resp~categ, cont="two-tailed")
}
\keyword{ htest }