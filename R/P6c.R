P6c <- function(a, X) {
  # Six Param biexponential model with a logistic transition
 K<- -log10(exp(1)) # factor to convert from 1/Tau to S2
  x <- .GlobalEnv$x
  y <- .GlobalEnv$y # explicitly locating the values
  
  if (missing(X)) {
    if (length(a) == 1) {
      list(Pn = 6L, Mod = "P6c")
    } else {
      Yest <-  a[1]+a[2]*exp(-x*a[3]) +a[5]*exp(-(x-a[4])*a[6]*H(x,20,a[4]))
      sum((y - Yest) ^ 2)
    }
  } else {
    x <- X
    a[1]+a[2]*exp(-x*a[3]) +a[5]*exp(-(x-a[4])*a[6]*H(x,20,a[4]))
  }
}

