\name{bin2}
\alias{bin2}
\title{2D binning}
\description{
Bin bivariate data x
}
\usage{
bin2(x, ab, nbin)
}
\arguments{
\item{x}{
(input matrix with 2 columns) data sample
}
\item{ab}{
(input 2 x 2 matrix) rows 1 and 2 contain x and y axis bin intervals,
respectively.  If not specified, the ranges are stretched by 5\%
at each end for each dimension.
}
\item{nbin}{
(input vector of length 2) number of bins along x and y axes. Default
is 20 by 20. 
}}
\value{
\code{bin2} returns a list including the bivariate bin matrix 
and the number of points outside the ab rectangle.
}
\seealso{\code{\link{ash2}}}
\examples{
x <- matrix( rnorm(200), 100 , 2)       # bivariate normal n=100
ab <- matrix( c(-5,-5,5,5), 2, 2)       # interval [-5,5) x [-5,5)
nbin <- c( 20, 20)                      # 400 bins
bins <- bin2(x, ab, nbin)               # bin counts,ab,nskip
}
\keyword{density}
% Converted by Sd2Rd version 0.2-a3.
