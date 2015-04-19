\name{AICc}
\alias{AICc}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Akaike information criterion 
%%  ~~function to do ... ~~
}
\description{
The Akaike information criterion corrected for small sample size is a measure of the relative quality of a model.  The AICc is calculated from a 'dark' object. %%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
AICc(obj)
}
%- maybe also 'usage' for other objects documented here.
\arguments{ \item{obj}{A dark object
%%     ~~Describe \code{obj} here~~
This object must have at least the following elements:
\tabular{ll}{
obj$time \tab to calculate the number of observations\cr
obj$Pn \tab the number of parameters in the model\cr
obj$val \tab the sum of squared residual error\cr
}
}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
The value returned is an indication of the information lost by fitting a particular model to the data, and is only of merit when compared to the value from another model.

%%  ~Describe these
%%  \item{comp1 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
See \url{http://en.wikipedia.org/wiki/Akaike_information_criterion}. 

K. Burnham and D. Anderson. Model selection and multi-model inference: a practical information- theoretic approach. Springer, 2002.

Sakamoto, Y., Ishiguro, M., and Kitagawa G. (1986). Akaike Information Criterion Statistics. D. Reidel Publishing Company.
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

\seealso{
%% ~~objects to See Also as
\code{\link{AIC}}
%%, ~~~

}
\examples{
tmp <- TestData(0:20)
AICc(tmp)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
