\name{parameter_exp}
\alias{parameter_exp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
parameter_exp(animate = F)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{animate}{
%%     ~~Describe \code{animate} here~~
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
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (animate = F) 
{
    Ani <- function(tt = 1, animate) if (animate) 
        Sys.sleep(tt)
    load("data/Pugh_1975_Dark.Rdata")
    par(las = 1, bty = "n", mfrow = c(1, 1), font = 2, font.lab = 2, 
        cex.lab = 1.5, oma = c(1, 1, 1, 1), mar = c(6, 6, 2, 
            3))
    XL <- expression(bold(Time ~ (min)))
    YL <- expression(bold(Threshold ~ (log ~ units)))
    plot(tmp$time, tmp$thrs, xlab = XL, ylab = YL, pch = 16, 
        cex = 0.7)
    axis(1, lwd = 2)
    axis(2, lwd = 2)
    Ani(, animate)
    lines(tmp$time, tmp$fit, col = 2)
    CT <- tmp$opt[1]
    CC <- tmp$opt[2]
    Tau <- tmp$opt[3]
    S2 <- tmp$opt[4]
    Al <- tmp$opt[5]
    S3 <- tmp$opt[6]
    Be <- tmp$opt[7]
    Ani(, animate)
    rect(0, CT, Al, max(tmp$thrs), border = NA, col = rgb(1, 
        1, 0, 0.2))
    rect(Al, P7c(tmp$opt, Be), Be, P7c(tmp$opt, Al), border = NA, 
        col = rgb(1, 0, 0, 0.2))
    rect(Be, min(tmp$thrs), max(tmp$time), P7c(tmp$opt, Be), 
        border = NA, col = rgb(1, 0, 1, 0.2))
    Ani(, animate)
    Off <- c(1.5, 3) * -0.2
    text(Al, max(tmp$thrs), "Cone", adj = Off)
    Off <- c(1, 1) * 3 * -0.08
    text(Be, P7c(tmp$opt, Al), "S2", adj = Off)
    text(max(tmp$time), P7c(tmp$opt, Be), "S3", Off)
    Lty = 4
    Ani(, animate)
    Sym <- expression(theta[1] ~ Cone ~ Threshold)
    arrows(Be + 10, CT, -2, CT, length = 0.125, angle = 20, lty = Lty)
    text(Be + 10, CT, Sym, adj = c(0, 0), cex = 1.2)
    Ani(, animate)
    Sym <- expression(theta[2] ~ Cone ~ Coefficient)
    arrows(Be + 10, CT + CC, -2, CC + CT, length = 0.125, angle = 20, 
        lty = Lty)
    text(Be + 10, CC + CT, Sym, adj = c(0, 0), cex = 1.2)
    Ani(, animate)
    Sym <- expression(theta[3] ~ Cone ~ Time ~ Constant ~ (tau))
    text(3, CT + CC/2, Sym, adj = c(0, 0), cex = 1.2)
    Ani(, animate)
    Sym <- expression(atop(theta[4] ~ Second ~ Rod ~ Recovery, 
        ~Rate ~ (S2)))
    text(Be - 3, mean(tmp$thrs) - 0.2, Sym, adj = c(0, 0), cex = 1.2)
    Ani(, animate)
    Sym <- expression(atop(theta[5] ~ Cone ~ Rod, ~Breakpoint ~ 
        (alpha)))
    arrows(Al - 3, P7c(tmp$opt, Al) - 1.4, Al, P7c(tmp$opt, Al), 
        length = 0.125, angle = 20, lty = Lty)
    text(Al - 5, P7c(tmp$opt, Al) - 1.8, Sym, adj = c(0.5, 0), 
        cex = 1.2)
    Ani(, animate)
    Sym <- expression(atop(theta[6] ~ Third ~ Rod ~ Recovery, 
        ~Rate ~ (-(S2 + S3))))
    text(Be + 12, P7c(tmp$opt, Be) - 0.5, Sym, adj = c(0, 0), 
        cex = 1.2)
    Ani(, animate)
    Sym <- expression(atop(theta[7] ~ Rod ~ Rod, ~Breakpoint ~ 
        (beta)))
    arrows(Al, P7c(tmp$opt, Be) - 0.4, Be, P7c(tmp$opt, Be), 
        length = 0.125, angle = 20, lty = Lty)
    text(Al - 5, P7c(tmp$opt, Be) - 0.6, Sym, adj = c(0.5, 0), 
        cex = 1.2)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
