\name{Start}
\alias{Start}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Start
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
A function to build an array of starting parameters from a 'dark' object. 
}
\usage{
Start(obj, Reps)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obj}{
%%     ~~Describe \code{obj} here~~
A 'dark' object
}
  \item{Reps}{The number of rows in the array.
%%     ~~Describe \code{Reps} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{Output is an array of seven columns and number of rows = 'Reps'.
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
tmp<-TestData(0:20)
Start(tmp, 10)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
