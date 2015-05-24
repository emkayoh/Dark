\name{Analytic}
\alias{Analytic}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
Analytic(obj)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obj}{
%%     ~~Describe \code{obj} here~~
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
function (obj) 
{
    x <- c(obj$time)
    y <- c(obj$thrs)
    params <- obj$opt
    DATAlist = list(x, y)
    Thres <- y ~ (a1 + a2 * exp(-x * a3) + a4 * (x - a5) * H(x, 
        10, a5) + a6 * (x - a7) * H(x, 10, a7))
    Param <- list(a1 = params[1], a2 = params[2], a3 = params[3], 
        a4 = params[4], a5 = params[5], a6 = params[6], a7 = params[7])
    mod1 <- nls(formula = Thres, data = DATAlist, start = Param, 
        trace = T, control = list(warnOnly = TRUE, tol = 1e-06, 
            minFactor = 1/2048))
    obj$Analytic = signif(summary(mod1)$param, 3)
    obj$call <- match.call()
    class(obj) = "dark"
    obj
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
