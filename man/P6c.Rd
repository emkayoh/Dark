\name{P6c}
\alias{P6c}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
A six parameter model
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
An exponential decay followed by a second exponential decay.}
\usage{
P6c(a, X)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
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
set.seed(1234)
x <- 0:20
a <- c(-1.00,  1.00,  1.00, -0.24,  6.00,  0.20, 13.00)
tmp <- TestData(x, a)
y <- tmp$resid
%% ~~~~~~~~~~~~~~~~~~~~~
# P6c(TRUE)
# Describes the model

# P6c(a)
# The sum of squared residuals

# P6c(a,x)
# The fitted thresholds for given parameters 'a' and times 'x'

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
