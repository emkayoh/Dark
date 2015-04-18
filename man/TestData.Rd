\name{TestData}
\alias{TestData}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Data that can be used to test other scripts.
}
\description{
This script creates data in the form of a 'dark' object from specified times, parameters, and level of variability. It is used for testing and developing other scripts. 
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
object <- TestData(x, theta, sse, repeatable)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ %%     ~~Describe \code{x} here~~
  the times at which obervations are made.
}
  \item{theta}{ %%     ~~Describe \code{theta} here~~
  the parameters of the Mahroo Lamb Pugh model
  %% insert table here
  \tabular{lccc}{
theta : \tab parameter \tab default  \tab Units\cr\cr
theta[1]: \tab cone threshold \tab -1 \tab (log lum)\cr
theta[2]: \tab cone coefficient \tab 1 \tab (log lum)\cr
theta[3]: \tab cone time constant \tab 1 \tab (minutes)\cr
theta[4]: \tab S2  \tab -0.24 \tab (log lum/ minute)\cr
theta[5]: \tab alpha point \tab 6 \tab (minutes)\cr
theta[6]: \tab -(S2 + S3) \tab 0.20 \tab (log luminance)\cr
theta[7]: \tab beta point \tab 13 \tab (log luminance)\cr
} 

}
  \item{sse}{ the variability of the data
%%     ~~Describe \code{sse} here~~
}
  \item{repeatable}{ a boolean flag that ensures that the function can return the same values each time it is called. 
%%     ~~Describe \code{repeatable} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
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
Jeremiah MF Kelly
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
x<- seq(0,20, by=0.33)
tmp<-TestData(x)
tmp

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
