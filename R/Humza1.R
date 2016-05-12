# humza plots 
rm(list = ls())
library(Dark)
source('~/GitHub/Dark/R/DarkWrap.R')

tmp <- read.table('~/Desktop/Humza1.txt', header = T)
L1 <- NULL
L2 <- NULL
L1$time <- tmp[,1]
L1$thrs <- tmp[,2]
L1$opt <- c(-2.6790,	1.5649,	1.2073,	-0.2724,	4.29,	0.2469,	10.0221)
L1$AIC <- c( 0.0000,    0.0000,  849.8180,    0.0000,  847.0252,  840.3665, -152.0557)
L1$Pn <- 7

L1$fit <- P7c(L1$opt, L1$time)
L1$resid <- L1$thrs - L1$fit

L1b <- BootDark(L1, 250, progress = T)

L2$time <- tmp[,3]
L2$thrs <- tmp[,4]
L2$opt <- c(-2.8194,	1.7382,	0.8325,	-0.2922,	4.2141,	0.2783,	10.6531)
L2$AIC <- c( 0.0000,    0.0000,  849.8180,    0.0000,  847.0252,  840.3665, -152.0557)
L2$Pn <- 7

L2$fit <- P7c(L2$opt, L2$time)
L2$resid <- L2$thrs - L2$fit

L2b <- BootDark(L2, 250, progress = T)



x <- L1$time
y <- L1$thrs
    
    par(las=1 , bty ='n')
    XL<- expression(bold(Time ~(min)))
    YL<- expression(bold(Threshold ~(LU)))
    plot(L1$time, L1$thrs, xlab = XL, ylab =YL, ylim = c(-5, 0))
    lines(x, P7c(L1b$Bootstrap[,2],x))
    lines(x, P7c(L1b$Bootstrap[,1], x), lty = 2)
    lines(x, P7c(L1b$Bootstrap[,3], x), lty = 2)
    
    x <- L2$time
    y <- L2$thrs
    points(x,y, pch =16, col =2)
    lines(x, P7c(L2b$Bootstrap[,2],x), col = 2)
    lines(x, P7c(L2b$Bootstrap[,1], x), col = 2, lty = 2)
    lines(x, P7c(L2b$Bootstrap[,3], x), col = 2, lty = 2)

