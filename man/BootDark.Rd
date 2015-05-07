\name{BootDark}
\alias{BootDark}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
BootDark
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
A script to use bootstrap techniques to calculate confidence intervals for parameter estimates from a 'dark' object.}
\usage{
BootDark(obj, R, graph, progress = F)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obj}{A 'dark' object. 
%%     ~~Describe \code{obj} here~~
}
  \item{R}{The number of repeats for the bootstrap calculations.
%%     ~~Describe \code{R} here~~
}
  \item{graph}{A flag to indicate whether a figure should be drawn.
%%     ~~Describe \code{graph} here~~
}
  \item{progress}{A flag to indicate whether a progress bar should be drawn to the console. This might be preferred if using a large number of repeats. 
%%     ~~Describe \code{progress} here~~
}
}
\details{
The script calculates bootstrap estimates of confidence intervals by sampling the residuals without replacement. The seven parameter model 'P7c' is always used. If 'P3' or 'P5c' have been found elsewhere to be a better fit then this will be confirmed by bootstrapping the 'P7c' model.  
%%  ~~ If necessary, more details than the description above ~~
}
\value{Returns a list 'out'
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
 \item{out$time}{times of observations}
 \item{out$thrs}{thresholds} 
 \item{out$opt}{optimised parameter estimates}
 \item{out$Mod}{the name of the optimal model}
 \item{out$Pn}{number of parameters needed to describe the data}
 \item{out$AIC}{the AICc scores for the three models}
 \item{out$fit}{fitted values for the optimal parameter estimates}
 \item{out$resd}{residuals of the best fits}
 \item{out$R2}{the coefficient of determination}
 \item{out$Bootstrap}{bootstrap parameter estimates, 2.5\%, 50\% and 97.5\%}
 \item{out$weight}{the reciprocal of the CI}
 \item{out$valid}{nn indication whether the parameter estimate is valid}
 \item{out$data}{the source of the data}
 \item{out$call}{updates the call label on the object}
}
\references{
%% ~put references to the literature/web site here ~
B. Efron. Bootstrap methods: another look at the jackknife. The Annals of Statistics, 7(1):1-26, 1979.

B. Efron. Nonparametric estimates of standard error: The jackknife, the bootstrap and other methods. Biometrika, 68(3):589, 1981.
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
tmp<- TestData(0:20)
P<-Start(tmp,10)
MSC<-ModelSelect(tmp, P)
tmp2<-BestFit(tmp, MSC)
tmp3<-MultiStart(tmp2,100)
BootDark(tmp3,100)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
