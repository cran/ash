\name{ash2}
\alias{ash2}
\title{bivariate ASH}
\description{
Compute bivariate ASH estimate (product polynomial kernel)
}
\usage{
ash2(bins, m, kopt)
}
\arguments{
\item{bins}{
(input list) bin count matrix nc and interval matrix  ab from \code{bin2}
}
\item{m}{
(input integer vector of length 2) x and y direction smoothing
parameters. Default is 5 by 5. 
}
\item{kopt}{see \code{\link{ash1}}}
}
\value{
Matrix of ASH estimates returned.
Components x,y,z can be given to the contour function directly.
Other input variables returned in list for record keeping.
}
\seealso{\code{\link{bin2}}}
\examples{
\testonly{
# prepare variables from other example pages if they are not already there:
if(length(ls(pat="bins"))==0){example(bin2)}
}

# Continuing example from help(bin2)
m <- c(5,5)
f <- ash2(bins,m)
image(f$x,f$y,f$z)
contour(f$x,f$y,f$z,add=TRUE)
}
\keyword{nonparametric}
% Converted by Sd2Rd version 0.2-a3.
