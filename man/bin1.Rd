\name{bin1}
\alias{bin1}
\title{univariate binning}
\description{
Function to compute array of bin counts for a data vector
}
\usage{
bin1(x, ab, nbin=50)
}
\arguments{
\item{x}{
(input) data vector
}
\item{ab}{
(input vector of length 2):  half-open interval for bins \eqn{[a,b)}.  If no
value is specified, the range of x is stretched by 5\% at each end and
used the interval.
}
\item{nbin}{
(input integer):  number of bins desired. Default 50.
}
\item{opt}{
(input OPTIONAL logical):  to suppress output messages, set \code{opt=TRUE}
}}
\value{
\code{bin1} returns a list including the vector of integer bin counts and
the ab vector and the number of points outside the ab interval.
}
\seealso{\code{\link{ash1}}}
\examples{
x <- rnorm(100)         # data vector
ab <- c(-5,5)           # bin interval
bins <- bin1(x,ab,10)     # bin x into 10 bins over ab
}
\keyword{density}
% Converted by Sd2Rd version 0.2-a3.
