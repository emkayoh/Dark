\name{H}
\alias{H}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
This is a simple switch function.
}
\description{
This function is used to transition from 'off' to 'on'. 
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
This helper function used in \code{P5c} and \code{P7c}enables the \code{optim} function to find parameters three times as quickly than if the transitions betwen the phases are modelled by a logical function e.g. a step function.  
}
\value{
For times before 't' the output is less than or equal to 0.5, after this time the the output is greater than 0.5. As 'k' grows larger the rate of transition from 0 to 1 increases.  
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
The logistic function: \url{http://en.wikipedia.org/wiki/Logistic_function}

The step function: \url{http://en.wikipedia.org/wiki/Heaviside_step_function}
}
\author{
Dr Jeremiah MF Kelly

Faculty of Life Sciences, The University of Manchester, M13 9PL, UK
}
\note{
H is a logistic function that maps inputs to a values between zero and one
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{

x <- seq(0, 20, by=0.1)
k<- 10
t <-10
op <- par(las=1, bty='n')
plot(x,H(x,k,t), 'l')
par(op)
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
