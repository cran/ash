\name{ash1}
\title{
Computes univariate averaged shifted histogram (polynomial kernel)
}
\usage{
ash1(bins, m, kopt)
}
\arguments{
\item{bins}{
(input list) \code{$nc}=integer vector of bin counts and \code{$ab}=bin interval
}
\item{m}{
(input) optional integer smoothing parameter;  default=5.
}
\item{kopt}{
(input) vector of length 2 specifying the kernel, which
is proportional to \eqn{( 1 - abs(i/m)^kopt(1) )i^kopt(2)};
(2,2)=biweight (default);  (0,0)=uniform;  (1,0)=triangle;
(2,1)=Epanechnikov;  (2,3)=triweight.
}}
\value{
returns structure suitable for input to \code{plot}
dd
\item{x=t}{
vector of bin center locations
}
\item{y=f}{
vector of ash estimates
}
\item{ier}{
0=normal exit; 1=estimate nonzero outside interval ab
}}
\seealso{\code{\link{bin1}}}
\examples{
x <- rnorm(100)         # data
f <- ash1(bin1(x,nbin=50),5) # compute ash estimate
plot( f , type="l" )    # line plot of estimate
}
\keyword{density}
% Converted by Sd2Rd version 0.2-a3.
