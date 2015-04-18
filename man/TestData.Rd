\name{TestData}
\alias{TestData}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Data that can be used to test other scripts.
}
\description{
This script creats data from specified time, parameters, and level of variability.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
TestData(x, theta, sse, repeatable)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ the times at which obervation are made.
%%     ~~Describe \code{x} here~~
}
  \item{theta}{ the parameters of the Mahroo Lamb Pugh model
  %% insert table here
%%     ~~Describe \code{theta} here~~
}
  \item{sse}{ the variability of the data
%%     ~~Describe \code{sse} here~~
}
  \item{repeatable}{ a boolean flag that ensures that the function can return the same values each time it is called. 
%%     ~~Describe \code{repeatable} here~~
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
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (x, theta, sse, repeatable) 
{
    if (missing(repeatable)) 
        repeatable = F
    if (missing(sse)) 
        sse = 0.03
    if (missing(theta)) 
        theta <- c(-1, 1, 1, -0.24, 6, 0.2, 13)
    if (length(theta) == 3) 
        theta <- c(theta, 0, 0, 0, 0)
    if (length(theta) == 5) 
        theta <- c(theta, 0, 0)
    if (repeatable) 
        set.seed(143)
    Len <- length(x)
    Noise <- rnorm(Len, 0, sqrt(sse))
    Y <- theta[1] + theta[2] * exp(-x * theta[3]) + theta[4] * 
        (x - theta[5]) * H(x, 10, theta[5]) + theta[6] * (x - 
        theta[7]) * H(x, 10, theta[7])
    tmp <- list(call = match.call(), time = x, thrs = (Y + Noise), 
        resid = Noise, fit = Y, thet = theta, sse = sse, val = var(Noise), 
        data = paste("Test_data_", sse, sep = ""))
    class(tmp) = "dark"
    tmp
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
