\name{rmls}
\alias{rmls}
\title{ Select objects in the parent frame and remove them. }
\description{
  Select objects in the parent frame and remove them. 
}
\usage{
rmls()
}

\details{
This function has no arguments. This brings up a modal dialog box with a (scrollable) list of objects available in the parent frame. They can be selected by the mouse and then removed.
}


\seealso{ ls, rm }
\examples{

toremove<-NULL
ls()
if(interactive()) rmls() # select the object 'toremove' and click OK
ls()

}
\keyword{ utilities }
