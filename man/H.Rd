\name{H}
\alias{H}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
This is a simple switch function.
}
\description{
This function is used to transition from 'off' to 'on'. It is a logistic function that maps 
}
\usage{
H(x, k = 100, t)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
is the measured time.
}
  \item{k}{
is the transition constant, set arbitrarily high.
}
  \item{t}{
is the time at which the transition occurs.
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
## The function is currently defined as
function (x, k = 100, t) 
{
    round(1/(1 + exp(-2 * k * (x - t))), 1)
  }
## x <- 0:20
## k<- 100
## t <-10
## plot(x,H(x,k,t))
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
