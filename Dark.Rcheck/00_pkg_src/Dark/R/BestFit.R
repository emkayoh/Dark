#' @export 

BestFit <- function(obj, MSC, draw) {
  .GlobalEnv$x <- obj$time
  .GlobalEnv$y <- obj$thrs
  if (missing(draw)) 
    draw <- F
  
  mFn <- c(1, 1, P3, 1, P5c, P6c, P7c)
  idx <- c(3, 5, 6, 7)
  obj$call <- NULL
  
  Mod <- which(MSC$AIC == min(MSC$AIC))
  idx2 <- idx == Mod
  Fn <- mFn[[Mod]]
  
  oP <- MSC$param[idx2, ]
  
  Opt <- stats::optim(oP[1:Mod], Fn)
  while (Opt$con) Opt <- stats::optim(Opt$par, Fn)
  opt <- Opt$par
  
  if (draw) {
    X <- seq(0, max(obj$time), length.out = 100)
    
    if (length(grDevices::dev.list()) == 0) {
      graphics::plot(obj$time, obj$thrs)
    }
    graphics::lines(X, Fn(opt, X), col = 2)
  }

  Y <- Fn(opt, obj$time)
  
  obj$val <- NULL  
  obj$opt <- NULL
  Res <- obj

  
  Res$opt = opt
  Res$call = match.call()
  Res$AIC = MSC$AIC
  Res$Pn = Fn(Mod)$Pn
  Res$fit <- Y
  Res$resid <- obj$thrs - Y
  Res$Mod = Fn(Mod)$Mod
  Res$val = Opt$val
  Res$R2 <- 1 - (stats::var(obj$thrs - Y)/stats::var(obj$thrs))
  
  on.exit(rm(list = c("x", "y"), envir = .GlobalEnv))
  class(Res) <- "dark"
  Res
}
