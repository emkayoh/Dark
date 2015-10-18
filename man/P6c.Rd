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
\arguments{
  \item{a}{
%%     ~~Describe \code{x} here~~
An array of parameters;
  %% insert table here
  \tabular{llc}{
a: \tab parameter  \tab Units\cr\cr
a[1]: \tab absolute (rod) threshold  \tab (log lum)\cr
a[2]: \tab cone coefficient \tab (log10 lum)\cr
\tab or the threshold at t = 0 \cr
a[3]: \tab 1/cone time constant  \tab (1/minutes)\cr
a[4]: \tab alpha point  \tab (minutes)\cr
a[5]: \tab absolute threshold offset \tab (log10 lum)\cr
a[6]: \tab 1/rod time constant  \tab (1/minutes)\cr
} 

note that the cone threshold is a[1] + a[5] log10(lum)}

 \item{X}{ The times in munutes when the model predicts thresholds. 
%%     ~~Describe \code{x} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
This function has three roles, to calculate the thresholds for given parameters \code{a} and times \code{X}.  If missing \code{X}, then the function calls the values \code{x} and \code{y} from the \code{.Globalenv} and calculates the sum of residuals squared error (SSE) for \code{a}. If \code{a} is an array of length \code{1L} or \code{boolean} then a description of the model is returned.

The use of the function \code{H} rather than an impulse function gives a three-fold increase is speed for the \code{optim} function.
}
\value{The output depends upon the input. 
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
\code{\link{P3}},\code{\link{P5c}},\code{\link{P6c}}
}
\examples{
set.seed(1234)
x <- 0:20
a <- c(-2, 2, 1/2, 10, 3, 1/8)
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
