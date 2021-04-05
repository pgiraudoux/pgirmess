\name{write.delim}
\alias{write.delim}

\title{ Write a data.frame}
\description{
  Write a simple data.frame into a text file with header, no row.names, fields separated by tab. 
}
\usage{
write.delim(x, file = "", row.names = FALSE, quote = FALSE, sep = "\t", ...)
}

\arguments{
  \item{x}{ a data.frame }
  \item{file}{ a character string for file name }
  \item{row.names}{ either a logical value indicating whether the row names of 'x' are to be written along with 'x', or a character vector of row names to be written }
  \item{quote}{ a logical value or a numeric vector.  If 'TRUE', any character or factor columns will be surrounded by double quotes.  If a numeric vector, its elements are taken as the indices of the columns to quote.  In both cases, row and column names are quoted if they are written. If 'FALSE', nothing is quoted. }
  \item{sep}{ the field separator string.  Values within each row of 'x' are separated by this string. }
  \item{\dots}{ additional arguments accepted by write.table }
}

\details{
  Simple wrapper of write.table.
}

\value{
 A tab delimited text file.
}

\seealso{ \code{\link{write.table}} }
\examples{
 data(preybiom)
 write.delim(preybiom[1:10,]) # output to the console
 
\dontrun{
 write.delim(preybiom[1:10,],file="Myfile.txt") # write a file in the working directory
}
 }

\keyword{ utilities }
