\name{Declutter}
\alias{Declutter}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Declutter
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
A function to remove multiple button presses, i.e. data that has multiple values for the same threshold.
}
\usage{
Declutter(tmp, delta)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tmp}{
%%     ~~Describe \code{tmp} here~~
a 'dark' object with at least two elements; tmp$time and tmp$thrs. 
}
  \item{delta}{
%%     ~~Describe \code{delta} here~~
The minimum time in seconds between responses. Thresholds set within two seconds of each other are discarded apart from the first threshold. }
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns an object with the same elements as 'tmp' but with object$time and object$thrs altered. 
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
Jeremiah MF Kelly
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
