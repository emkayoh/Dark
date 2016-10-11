\name{P5c}
\alias{P5c}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Five parameter model.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The five parameter model. An exponential decay followed by a linear phase. 
}
\usage{
P5c(a,X)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{a}{
%%     ~~Describe \code{x} here~~
 An array of parameters;
  %% insert table here
  \tabular{lcc}{
a: \tab parameter  \tab Units\cr\cr
a[1]: \tab cone threshold \tab (log lum)\cr
a[2]: \tab cone coefficient \tab (log lum)\cr
a[3]: \tab cone time constant  \tab (minutes)\cr
a[4]: \tab S2  \tab (log lum / minute)\cr
a[5]: \tab alpha point  \tab (minutes)\cr
}
}
 \item{X}{ The times when the model predicts thresholds. 
%%     ~~Describe \code{x} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
This function has three roles, to calculate the thresholds for given parameters \code{a} and times \code{X}.  If missing \code{X}, then the function calls the values \code{x} and \code{y} from the \code{.Globalenv} and calculates the sum of residuals squared error (SSE) for \code{a}. If \code{a} is an array of length \code{1L} or \code{boolean} then a description of the model is returned.

The use of the function \code{H} rather than an impulse function gives a three-fold increase is speed for the \code{optim} function.
}
\value{
%%  ~Describe the value returned
If the input is an array of length \code{1L} or a \code{boolean} then a list is returned 
%%  ~Describe the value returned
%%  If it is a LIST, use
  \item{Pn }{number of parameters}
  \item{Mod }{name of the model}
  
  If a parameter array is passed then the sum of residuals squared is calculated. This is used by \code{optim} to optimise the parameter estimates. 
  
  Passing a parameter array and a series of putative times causes the function to return predicted thresholds. 
%% ...
}
\references{
%% ~put references to the literature/web site here ~
O. Mahroo and T. Lamb. Recovery of the human photopic electroretinogram after bleaching exposures: estimation of pigment regeneration kinetics. The Journal of Physiology, 554(2):417, 2004.

T. Lamb and E. Pugh. Dark adaptation and the retinoid cycle of vision. Progress in Retinal and Eye Research, 23(3):307-380, 2004.
}
\author{
%%  ~~who you are~~
Jeremiah MF Kelly

Faculty of Life Sciences, The University of Manchester, M13 9PL, UK
}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{P3}},\code{\link{P6c}},\code{\link{P7c}}}
\examples{
set.seed(1234)
x <- 0:20
a <- c(-1.00,  1.00,  1.00, -0.24,  6.00,  0.20, 13.00)
tmp <- TestData(x, a)
y <- tmp$resid
%% ~~~~~~~~~~~~~~~~~~~~~
P5c(TRUE)
# Describes the model

P5c(a)
# The sum of squared residuals

P5c(a,x)
# The fitted thresholds for given parameters 'theta' and times 'x'

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line