\name{parameter_exp}
\alias{parameter_exp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Explain model parameters
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This script draws a figure to explain the parameters of the Mahroo Lamb and Pugh model of dark adaptation}
\usage{
parameter_exp(animate = F)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{animate}{
%%     ~~Describe \code{animate} here~~
If set to \code{T} the drawing of the figure procedes in one second steps. 
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
The data are extracted from Pugh's 1975 paper:

E. Pugh. Rushton’s paradox: rod dark adaptation after flash photolysis. The Journal of Physiology, 248(2):413, 1975.
 

}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
A figure is returned. It can be wrapped in a \code(pdf()) or similiar output device. 
}
\references{
%% ~put references to the literature/web site here ~
O. Mahroo and T. Lamb. Recovery of the human photopic electroretinogram after bleaching exposures: estimation of pigment regeneration kinetics. The Journal of Physiology, 554(2):417, 2004.

T. Lamb and E. Pugh. Dark adaptation and the retinoid cycle of vision. Progress in retinal and eye research, 23(3):307–380, 2004.

G. McGwin Jr, G. Jackson, and C. Owsley. Using nonlinear regression to estimate parameters of dark adaptation. Behavior research methods, instruments, & computers, 31(4):712, 1999.}
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
# \donotrun pdf('figures/Pugh1975.pdf')
# parameter_exp()
# \donotrun end.dev()
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
