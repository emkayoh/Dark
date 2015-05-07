parameter_exp <- function(animate = F) {
  # this function draws a classic dark adaptation
  # curve to explain the various parameters in the 
  # MLP model of sensitivity recovery. Taken from Pugh 1975 
  #   E. Pugh. Rushton’s paradox: rod dark adaptation after flash photolysis. 
  #   The Journal of Physiology, 248(2):413, 1975.
  
  
  .GlobalEnv$tmp <- NULL
  
  Ani <- function(tt = 1, animate) if (animate) 
    Sys.sleep(tt)
  load("data/Pugh_1975_Dark.Rdata")
  
  par(las = 1, bty = "n", mfrow = c(1, 1), font = 2, font.lab = 2, cex.lab = 1.5, oma = c(1, 
                                                                                          1, 1, 1), mar = c(6, 6, 2, 3))
  XL <- expression(bold(Time ~ (min)))
  YL <- expression(bold(Threshold ~ (log ~ units)))
  
  plot(tmp$time, tmp$thrs, xlab = XL, ylab = YL, pch = 16, cex = 0.7)
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
  rect(0, CT, Al, max(tmp$thrs), border = NA, col = rgb(1, 1, 0, 0.2))
  rect(Al, P7c(tmp$opt, Be), Be, P7c(tmp$opt, Al), border = NA, col = rgb(1, 0, 0, 0.2))
  rect(Be, min(tmp$thrs), max(tmp$time), P7c(tmp$opt, Be), border = NA, col = rgb(1, 0, 
                                                                                  1, 0.2))
  
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
  arrows(Be + 10, CT + CC, -2, CC + CT, length = 0.125, angle = 20, lty = Lty)
  text(Be + 10, CC + CT, Sym, adj = c(0, 0), cex = 1.2)
  
  Ani(, animate)
  Sym <- expression(theta[3] ~ Cone ~ Time ~ Constant ~ (tau))
  # arrows(Be+10,CT+CC/2, 3, CT+CC/2, length = 0.125, angle = 20, lty=Lty)
  text(3, CT + CC/2, Sym, adj = c(0, 0), cex = 1.2)
  
  Ani(, animate)
  Sym <- expression(atop(theta[4] ~ Second ~ Rod ~ Recovery, ~Rate ~ (S2)))
  # arrows(Be+10,CT+CC/2, 3, CT+CC/2, length = 0.125, angle = 20, lty=Lty)
  text(Be - 3, mean(tmp$thrs) - 0.2, Sym, adj = c(0, 0), cex = 1.2)
  
  
  Ani(, animate)
  Sym <- expression(atop(theta[5] ~ Cone ~ Rod, ~Breakpoint ~ (alpha)))
  arrows(Al - 3, P7c(tmp$opt, Al) - 1.4, Al, P7c(tmp$opt, Al), length = 0.125, angle = 20, 
         lty = Lty)
  text(Al - 5, P7c(tmp$opt, Al) - 1.8, Sym, adj = c(0.5, 0), cex = 1.2)
  
  Ani(, animate)
  Sym <- expression(atop(theta[6] ~ Third ~ Rod ~ Recovery, ~Rate ~ (-(S2 + S3))))
  # arrows(Be+10,CT+CC/2, 3, CT+CC/2, length = 0.125, angle = 20, lty=Lty)
  text(Be + 12, P7c(tmp$opt, Be) - 0.5, Sym, adj = c(0, 0), cex = 1.2)
  
  
  Ani(, animate)
  Sym <- expression(atop(theta[7] ~ Rod ~ Rod, ~Breakpoint ~ (beta)))
  arrows(Al, P7c(tmp$opt, Be) - 0.4, Be, P7c(tmp$opt, Be), length = 0.125, angle = 20, lty = Lty)
  text(Al - 5, P7c(tmp$opt, Be) - 0.6, Sym, adj = c(0.5, 0), cex = 1.2)
  
  on.exit(rm(list = c("tmp"), envir = .GlobalEnv))
  
}