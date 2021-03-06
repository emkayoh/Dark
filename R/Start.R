#' @export 

Start <- function(obj, Reps) {
  if (missing(Reps)) 
    Reps <- 1500
  meshVec <- function(lB, uB, Reps) sample(seq(lB, uB, length.out = Reps), replace = F)
  x <- obj$time
  y <- obj$thrs
  
  xSp <- 15 #mean(range(x))
  ySp <- stats::quantile(y, 67/100, names = FALSE) # mean(range(y))
  
  set.seed(1234)
  
  CT <- meshVec(ySp, max(y), Reps)
  CC <- meshVec(0.01, -ySp, Reps)
  Tau <- 1/sample(CC, replace = F)
  S2 <- meshVec(-0.6, 0, Reps)
  Alph <- meshVec(0.01, xSp, Reps)
  S3 <- -sample(S2, replace = F)
  Beta <- meshVec(xSp, max(x), Reps)
  
  
  cbind(CT, CC, Tau, S2, Alph, S3, Beta)
}
