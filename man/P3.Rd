\name{P3}
\alias{P3}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Three parameter model. 
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The three parameter model. A simple exponential decay. 

This function has three roles, to calculate the thresholds for given parameters 'a' and times 'X', If missing 'X', then the function calls the outer environment 'x' and 'y' and calculates the sum of residuals squared error (SSE) for 'a'. If 'a' is an array of length 1L or boolean then a description of the model is returned.}
\usage{
P3(a, X)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{a}{
%%     ~~Describe \code{x} here~~
An array of parameters.
}
 \item{X}{ The times when the model predicts thresholds. 
%%     ~~Describe \code{x} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
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
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
x <- seq(0, 20, by=0.33)
theta <- c(-1.00,  1.00,  1.00, -0.24,  6.00,  0.20, 13.00)
tmp <- TestData(x, theta)
y <- tmp$resid
%% ~~~~~~~~~~~~~~~~~~~~~
P3(TRUE)
# Describes the model

P3(theta)
# The sum of squared residuals

P3(theta,x)
# The fitted thresholds for given parameters 'theta' and times 'x'

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line