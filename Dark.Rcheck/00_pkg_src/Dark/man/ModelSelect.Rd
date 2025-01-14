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
This is a \emph{brute-force} method to make a first estimate of the optimal model parameters. 

The matrix 'P' holds rows of possible parameter values.
Each row is passed to the 3, 5, and 7 parameter models and the sum of residuals squared is calculated for the given times (obj$time) and thresholds (obj$thrs).
So for each row in 'P' there is a score for each model. Then for each model the row which yields the lowest SSE is chosen as a starting point for optimisation. The optimised parameters are stored in 'param' and once the three parameter arrays have been found their AICc scores are found and returned as AIC.
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
\url{https://en.wikipedia.org/wiki/Brute-force_search}
}
\author{
%%  ~~who you are~~
Jeremiah MF Kelly

Mumac Ltd, SK7 6NR, GB 
}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
set.seed(1234)
tmp<- TestData(0:20)
P<-Start(tmp)
ModelSelect(tmp,P)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{math}
\keyword{utilities}
\keyword{logistic}
\keyword{models}
\keyword{data}
