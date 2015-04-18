\name{ModelSelect}
\alias{ModelSelect}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
ModelSelect
}
\description{
Returns a list with two elements; an array of AICc scores indexed by the number of parameters in the model considered and a matrix of parameters with three rows, one for each model. 
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
ModelSelect(obj, P)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obj}{
%%     ~~Describe \code{obj} here~~
A 'dark' object. 
}
  \item{P}{
%%     ~~Describe \code{P} here~~
Is a matrix with seven columns and at least one row. The values of each element can be zero. 
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
The script uses each row of 'P' to calculate a the sum of squared residuals for the given times (obj$time) and thresholds (obj$thrs). Then the row which yields the lowest SSE is chosen as a starting point for optimisation. The optimised parameters are stored in 'param' and once the three parameter arrays have been found their AICc scores are found and returned as AIC.
}
\value{
Returns a list 
%%  ~Describe the value returned
%%  If it is a LIST, use
\item{AIC }{An array of seven values with AIC scores at the index of model parameter count.
}
\item{param}{A three row by seven column matrix. Each row containing the optimised parameters for each model. }
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
tmp<- TestData(0:20)
P<-Start(tmp)
ModelSelect(tmp,P)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
