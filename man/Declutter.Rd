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
In early data collected with analogue equipment it was possible for a subject to return multiple button presses when setting just one threshold. This data is characterised by clusters of points within a very short time. This function removes the extra presses. It is rarely needed for data collected from digital equipment. 
}
\value{
Returns an object with the same elements as 'tmp' but with object$time and object$thrs altered. 
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
%\references{
%% ~put references to the literature/web site here ~
%}
\author{
%%  ~~who you are~~
Jeremiah MF Kelly

Faculty of Life Sciences, The University of Manchester, M13 9PL, UK
}

%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
set.seed(123)
Time  <-c(0, 0.02, 1, 2,  3, 3.02,  5, 6, 6.02, 7, 9, 9.02, 11, 
12, 12.02, 13, 15, 15.02, 16, 18, 18.02, 20) 
# with duplicated times
set.seed(1234)
tmp <- TestData(Time, sse=0.05) 
\dontrun{plot(tmp$time, tmp$thrs, ylim=c(-4,0))}
tmp <- Declutter(tmp)
\dontrun{points(tmp$time, tmp$thrs, col='red', pch=16)}

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
