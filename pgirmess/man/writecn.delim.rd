\name{writecn.delim}
\alias{writecn.delim}

\title{ Write a data.frame that has Chinese characters}

\description{
  Handle a data.frame with Chinese characters and write it into a UTF-8 text file with header, no row.names, tab delimited fields. 
}

\usage{
writecn.delim(db, file = "",row.names = FALSE, quote = FALSE, sep = "\t", ...)
}

\arguments{
  \item{db}{ a data.frame }
  \item{file}{ file name (character string)}
    \item{row.names}{ either a logical value indicating whether the row names of 'x' are to be written along with 'x', or a character vector of row names to be written }
  \item{quote}{ a logical value or a numeric vector.  If 'TRUE', any character or factor columns will be surrounded by double quotes.  If a numeric vector, its elements are taken as the indices of the columns to quote.  In both cases, row and column names are quoted if they are written. If 'FALSE', nothing is quoted. }
  \item{sep}{ the field separator string.  Values within each row of 'x' are separated by this string. }
  \item{\dots}{additional arguments to pass to \code{\link{write.table}}}
}
\details{
  Writing a data.frame into text files can be quite cumbersome if the system locale is not Chinese. This function set up the locale to Chinese, write the data.frame using \code{\link{write.table}} with fileEncoding = "UTF-8", then restore the original locale.
}

\value{
 An ascii text file, tab delimited.
}

\seealso{ \code{\link{write.table}}, \code{\link{Sys.setlocale}}}


\keyword{ utilities }
