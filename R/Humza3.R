# P5:	[-2.5296	1.6935	1.461	-0.0879	19.1915	0.0231	31.463	0.1037]
# P10:	[-2.6044	1.3014	0.6538	-0.1164	14.8574	0.0671	27.5725	0.0988]

# humza plots 
rm(list = ls())
library(Dark)
source('~/GitHub/Dark/R/DarkWrap.R')

tmp <- read.table('~/Desktop/Humza3.txt', header = T)
L1 <- NULL
L2 <- NULL
L1$time <- tmp[,1]
L1$thrs <- tmp[,2]
L1$opt <- c(-2.5296,	1.6935,	1.461,	-0.0879,	19.1915,	0.0231,	31.463)
L1$AIC <- c( 0.0000,    0.0000,  849.8180,    0.0000,  847.0252,  840.3665, -152.0557)
L1$Pn <- 7

L1$fit <- P7c(L1$opt, L1$time)
L1$resid <- L1$thrs - L1$fit

L1b <- BootDark(L1, 250, progress = T)

L2$time <- tmp[,3]
L2$thrs <- tmp[,4]
L2$opt <- c(-2.6044,	1.3014,	0.6538,	-0.1164,	14.8574,	0.0671,	27.5725)
L2$AIC <- c( 0.0000,    0.0000,  849.8180,    0.0000,  847.0252,  840.3665, -152.0557)
L2$Pn <- 7

L2$fit <- P7c(L2$opt, L2$time)
L2$resid <- L2$thrs - L2$fit

L2b <- BootDark(L2, 250, progress = T)



x <- L1$time
y <- L1$thrs

par(las=1 , bty ='n', mar = c(6,6,2,2))
XL<- expression(bold(Time ~(min)))
YL<- expression(bold(Threshold ~(LU)))
plot(L1$time, L1$thrs, xlab = XL, ylab =YL, ylim = c(-5, 0))
lines(x, P7c(L1b$Bootstrap[,2],x))
lines(x, P7c(L1b$Bootstrap[,1], x), lty = 2)
lines(x, P7c(L1b$Bootstrap[,3], x), lty = 2)

x <- L2$time
y <- L2$thrs
points(x,y, pch =16, col =2)
lines(x, P7c(L2b$Bootstrap[,2],x), col =2)
lines(x, P7c(L2b$Bootstrap[,1], x), lty = 2, col =2)
lines(x, P7c(L2b$Bootstrap[,3], x), lty = 2, col = 2)

