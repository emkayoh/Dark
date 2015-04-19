\name{MultiStart}
\alias{MultiStart}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
MultiStart
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Given a \emph{dark} object, \code{obj}, this function repeatedly optimises the parameters in the vicinity of the seed array. The width of the search is dependent upon the value of \code{spread}.
}
\usage{
MultiStart(obj, repeats, draw, spread, debug)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obj}{A \emph{dark} object containing at least;\tabular{ll}{
obj$time \tab time\cr
obj$thrs \tab thresholds\cr
obj$init \tab an initial estimate of the parameters of dark adaptation.\cr
} 

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
To reduce the possibility of selecting non-optimal parameter estimates, the optimisation is repeated in the region of initial estimates. The 
}
\value{Returns a list;
\item{time}{times of threshold setting}
 \item{out$thrs}{observed thresholds}
 \item{out$resid}{residuals}
 \item{out$fit}{optimal fitted values}
 \item{out$thet}{seed parameters if test data}
 \item{out$sse}{sum of squared residuals if test data}
 \item{out$data}{source of the data}
 \item{out$opt}{optimal parameter estimates of the chosen model}
 \item{out$Mod}{name of the optimal model}
 \item{out$Pn}{the number of parameters needed to describe the data}
 \item{out$AIC}{array of AICc scores}
 \item{out$val}{calculated sum of squared residuals}
 \item{out$R2}{the coefficient of determination}
 \item{out$warning}{if none of the nearby values converge}
 \item{out$call}{updates the function call label}
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
Nelder, J.A.; Mead, R. 1965: A simplex for function minimization. Comput. J. 7, 308-313
}
\author{
%%  ~~who you are~~
Dr Jeremiah MF Kelly

Faculty of Life Sciences, The University of Manchester, M13 9PL, UK
}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
tmp<-TestData(0:20)
P<- Start(tmp)
MSC<-ModelSelect(tmp, P)
tmp<-BestFit(tmp, MSC)
MultiStart(tmp, 50)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
