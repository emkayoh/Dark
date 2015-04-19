\name{TestData}
\alias{TestData}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Data that can be used to test other scripts.
}
\description{
This script creates data in the form of a \emph{dark} object from specified times, parameters, and level of variability. It is used for testing and developing other scripts. 
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
TestData(x, theta, sse, repeatable)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ %%     ~~Describe \code{x} here~~
  the times at which observations are made.
}
  \item{theta}{%%     ~~Describe \code{theta} here~~
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
  \item{sse}{%%     ~~Describe \code{sse} here~~
  the variability of the data
}
  \item{repeatable}{%%     ~~Describe \code{repeatable} here~~
  a boolean flag that ensures that the function can return the same values each time it is called. 
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
The parameters values chosen as defaults are entirely arbitrary. The sixth parameter is the negative sum of the rates of rod recovery called \emph{S2} and \emph{S3}
%\if{html}{\figure{ParamExplain.jpg}{Parameters}}
%\if{latex}{\figure{ParamExplain.pdf}{options: width=0.5in}}

}

\value{The function returns a \emph{dark} object with the following components;
%%  ~Describe the value returned
\item{call}{a label describing the last call the object was subject to} 
\item{time}{the time observations} 
\item{thrs}{thresholds} 
\item{resid}{residuals} 
\item{fit}{thresholds predicted in the absence of noise} 
\item{thet}{parameters passed to the function} 
\item{sse}{the sum of squared residuals value used to describe the variability in the data} 
\item{val}{the actual sse of the generated data} 
\item{data}{the name of the data source}
 
%% ...
}
\references{
%% ~put references to the literature/web site here ~
L. Patryas, N. R. Parry, D. Carden, D. H. Baker, J. M. Kelly, T. Aslam, and I. J. Murray. Assessment of age changes and repeatability for computer-based rod dark adaptation. Graefe's Archive for Clinical and Experimental Ophthalmology, pages 1-7, 2013.
}
\author{
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
x<- seq(0,20, by=0.33)
tmp<-TestData(x)
tmp

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
