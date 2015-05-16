\name{dark}
\alias{dark}
\docType{data}
\title{
%%   ~~ data name/kind ... ~~
Dark adaptation data.
}
\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
This data was extracted from Figure 1 in Rushton's paradox: rod dark adaptation after flash photolysis, E.N.Pugh Jr. \emph{The Journal of Physiology,} 1975. 
}
\usage{data("dark")}
\format{
  \code{dark} is a list of 14 items, that are used or created by the functions in this package.
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~

\itemize{
The items are:
\item $time: the time of observations
\item $thrs: the thresholds
\item $fit: thresholds predicted by the model
\item $resid: residuals between the fitted model and observed data
  \item $R2: the coefficient of determination
  \item $Bootstrap: a table of quantiles (2.5\%, 50\% and 97.5\%) for the parameter estimates from bootstrap methods
\item $weight: the parameter estimate divided by the 95\% quantile range
 \item $valid: an integer array indicating whether the quantile range encloses zero. 
  \item $opt: parameter estimates of the optimal model 
  \item $Mod: a string describing the optimal model
  \item $Pn: the number of parameters in the optimal model
  \item $AIC: an array with the AICc scores for the three models
  \item $val: sum of residuals squared
  \item $call: the last function call that produced the object
 }}
%\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
%}
\references{
%%  ~~ possibly secondary sources and usages ~~
E. Pugh. Rushton's paradox: rod dark adaptation after flash photolysis. The Journal of Physiology, 248(2):413, 1975.

\url{http://onlinelibrary.wiley.com/doi/10.1113/jphysiol.1975.sp010982/abstract}

\url{http://onlinelibrary.wiley.com/doi/10.1113/jphysiol.1975.sp010982/pdf}
}
\examples{
data(dark)
## load(dark)
}
\keyword{datasets}

