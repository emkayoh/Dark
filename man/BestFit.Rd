\name{BestFit}
\alias{BestFit}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
BestFit
}
\description{
This script takes a dark object, a list of parameters and AICc scores from \code{ModelSelect} to chose a model and then return optimised values for the parameter estimates. Analysis of the data can be halted here if wished.

However, a \code{MultiStart} check can be useful if it is suspected that a local minimum has been found. Furthermore, \code{BootDark} will provide confidence intervals for the parameter estimates. 
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
BestFit(obj, MSC, draw)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obj}{A dark object
%%     ~~Describe \code{obj} here~~
}
  \item{MSC}{A list from the function \code{ModelSelect}
%%     ~~Describe \code{MSC} here~~
}
  \item{draw}{A flag to indicate whether a figure should be drawn.
%%     ~~Describe \code{draw} here~~
}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{A list with the following elements:
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
\item{call}{ the last function call on the data} 
\item{time}{ time of observations} 
\item{thrs}{ thresholds} 
\item{resid}{residuals of best model fit} 
\item{fit}{ fitted thresholds for the optimal model and parameters} 
\item{thet}{seed parameters of TestData, null if not TestData} 
\item{sse}{sum of squared error used in TestData} 
\item{val}{calculated sum of squared errors} 
\item{data}{source of the data} 
\item{opt}{optimal parameter estimates}  
\item{Mod}{optimal model} 
\item{Pn}{number of parameters required by the model to fit the data}
\item{AIC}{AICc scores for the three models fitted} 
\item{R2}{an indication of the 'goodness' of fit}
}
%\references{
%% ~put references to the literature/web site here ~
%}
\author{
%%  ~~who you are~~
Jeremiah MF Kelly

Mumac Ltd, SK7 6NR, GB 
}
\note{
%%  ~~further notes~~
This function makes extensive use of \code{optim}.
}
%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{optim}}
}
\examples{
tmp <- TestData(0:20)
P<-Start(tmp,100)
MSC<-ModelSelect(tmp, P)
BestFit(tmp, MSC)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{models}
\keyword{optimization}
\keyword{regression}
\keyword{utilities}
\keyword{data}
