\name{Dark-package}
\alias{Dark-package}
\alias{Dark}
\docType{package}
\title{Dark: A package to analyse dark adaptation data}
\description{A series of scripts to find the parameters of dark adaptation.}
\details{
\tabular{ll}{
Package: \tab Dark\cr
Type: \tab Package\cr
Version: \tab 0.9.8\cr
Date: \tab 2016-06-1\cr
License: \tab GPL-3\cr
} 
Dark adaptation is the recovery of visual sensitivity in a dark environment and can be described by a physiological model. This package contains a series of functions to analyse data collected during dark adaptation.  

The functions use the Mahroo Lamb and Pugh (MLP) model of dark adaptation. The functions in this package take dark adaptation data and find the parameters of the model that 'best fit' the data. 

The functions generate rapid initial objective estimates of data adaptation parameters, a multi-start algorithm to reduce possibility of a local minimum. There is a bootstrap method to calculate parameter confidence intervals. There are also ancillary functions to facilitate the analysis.

The functions rely upon a *dark* list or object. This object is created by the first function and parts are added to the object as it is processed.
}
\author{
Jeremiah MF Kelly

Faculty of Life Sciences, The University of Manchester, M13 9PL, UK

Maintainer: Jeremiah MF Kelly <emkayoh@mac.com>
}
\references{
O. Mahroo and T. Lamb. Recovery of the human photopic electroretinogram after bleaching exposures: estimation of pigment regeneration kinetics. The Journal of Physiology, 554(2):417, 2004.

T. Lamb and E. Pugh. Dark adaptation and the retinoid cycle of vision. Progress in Retinal and Eye Research, 23(3):307-380, 2004.
}
\keyword{ package }
%% \seealso{
%% ~~ Optional links to other man pages, e.g. ~~
%% ~~ \code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~
%% }
\examples{
set.seed(1234)
Time<- seq(0,20)
tmp<- TestData(Time)
P<-Start(tmp,1000)
MSC<-ModelSelect(tmp, P)
tmp2<-BestFit(tmp, MSC)
tmp3<-MultiStart(tmp2,10)
BootDark(tmp3,50) 
}
