\name{Start}
\alias{Start}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Start
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
A function to build an array of starting parameters from a \emph{dark} object. 
}
\usage{
Start(obj, Reps)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obj}{
%%     ~~Describe \code{obj} here~~
A \emph{dark} object
}
  \item{Reps}{The number of rows in the array.
%%     ~~Describe \code{Reps} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
The array of starting parameters is built from the time and threshold data in the object, \code{obj}. 

Each parameter is assumed to have a possible range given the data.  

Each range is constructed as follows; the time  points; \emph{alpha} (cone-rod transition \eqn{\alpha} minutes)  and \emph{beta} (rod-rod transition \eqn{\beta} minutes) are assumed to fall in the first and second halves of the time data respectively (\code{obj$time}). 

The \emph{cone threshold} is assumed to be in the upper half of the threshold data (\code{obj$thrs} log units). The \emph{cone coefficient} (log units) or threshold at time zero is presumed to be positive and the same values are used for the \emph{time constants} (\eqn{tau} minutes).

The rate of rod recovery \emph{S2}, and the combined parameter \emph{-(S2 + S3)} are ranged between -0.6 and 0 log units/minute.

These ranges of possible values are complied into an array by sampling without replacement from each range for each parameter.
}
\value{Output is an array of seven columns and number of rows = 'Reps'.

%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
%\references{
%% ~put references to the literature/web site here ~
%}
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
tmp<-TestData(0:20)
Start(tmp, 10)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
