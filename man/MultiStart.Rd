\name{MultiStart}
\alias{MultiStart}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
MultiStart
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Given a dark object 'obj', this function repeatedly (repeats) optimises the parameters in the vicinity of the seed array. The width of the search is dependent upon the value of 'spread'. 'P' can also be a 'dark' object. 
}
\usage{
MultiStart(obj, repeats, draw, spread, debug)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obj}{A 'dark' object containing at least P$time, P$thrs and P$init an initial estimate of the parameters of dark adaptation. 
%%     ~~Describe \code{P} here~~
}
  \item{repeats}{The number of times the algorithm is repeated
%%     ~~Describe \code{repeats} here~~
}
  \item{draw}{A flag indicating whether a figure should be drawn.
%%     ~~Describe \code{draw} here~~
}
  \item{spread}{The amount by which the seed array should be varied. A larger value gives a greater range of possible starting points. 
%%     ~~Describe \code{spread} here~~
}
  \item{debug}{A flag used in debugging the software.
%%     ~~Describe \code{debug} here~~
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
function (P, repeats, draw, spread, debug) 
{
    mFn <- c(1, 1, P3, 1, P5c, 1, P7c)
    if (missing(repeats)) 
        repeats = 400
    if (missing(draw)) 
        draw = FALSE
    if (missing(spread)) 
        spread = 0.15
    if (missing(debug)) 
        debug = F
    if (debug) 
        print("+++ missing values assigned OK")
    resid = NULL
    fit = NULL
    val = NULL
    Pn = NULL
    AIC = NULL
    if (is.list(P)) {
        Res <- P
        Res$call = NULL
        x <- P$time
        y <- P$thrs
        p <- P$opt
        val <- P$val
        if (is.null(P$opt)) 
            p = P$init
        Pn <- P$Pn
        if (is.null(P$Pn)) 
            Pn = 7
        AIC <- P$AIC[1:7]
    }
    else {
        x <<- x
        y <<- y
        p <- P
    }
    if (debug) 
        print("+++ object processed OK")
    Fn <- mFn[[Pn]]
    if (debug) 
        print(paste("+++ Using the ", Pn, " parameter model ", 
            sep = ""))
    OptJK <- function(a) {
        tmp <- numeric(9)
        X = optim(a, Fn)
        X = optim(X$par, Fn)
        X = optim(X$par, Fn)
        tmp[1:Pn] = X$par
        tmp[8] = X$val
        tmp[9] = X$con
        tmp
    }
    Par <- matrix(p * rnorm(7 * repeats, 1, spread), 7, repeats)
    O <- t(apply(Par, 2, OptJK))
    input <- numeric(9)
    input[1:7] = p
    input[8] = val
    input[9] = 0
    O <- rbind(input, O)
    if (debug) 
        print(head(O))
    Test <- sum(O[, 9] == 0)
    if (debug) 
        print(paste("+++ the test has boolean value ", Test, 
            sep = ""))
    if (Test) {
        idx <- O[, 9] == 0
        O <- O[idx, ]
    }
    if (debug) 
        print(head(idx))
    if (length(O) != 9) {
        idx <- order(O[, 8])
        O <- O[idx, ]
        val <- O[1, 8]
        p <- O[1, 1:Pn]
    }
    else {
        val <- O[8]
        p <- O[1:Pn]
    }
    if (length(O) == 9) 
        Res$warning <- "+++ None of the jittered values converged"
    if (debug) 
        print("+++ Ordered index made")
    val = val[[1]]
    fit <- Fn(p, x)
    resid <- (y - fit)
    if (draw) {
        plot(x, y)
        lines(x, fit)
    }
    Res$call <- match.call()
    Res$opt = p
    Res$time = x
    Res$thrs = y
    Res$resid = resid
    Res$fit = fit
    Res$val = val
    Res$data = P$data
    Res$Mod = P$Mod
    Res$Pn = P$Pn
    Res$AIC = AIC
    Res$R2 <- 1 - (var(resid)/var(y))
    if (debug) 
        Res$O <- O
    class(Res) = "dark"
    return(Res)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
