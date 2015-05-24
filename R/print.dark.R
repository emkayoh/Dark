print.dark <- function(x, ...) {
    if (!is.null(x$time)) {
      cat("Times:\n")
      print(round(x$time, 3))
      cat("\n")
    }
    
    if (!is.null(x$thrs)) {
      cat("Thresholds:\n")
      print(round(x$thrs, 3))
      cat("\n")
    }
    
    if (!is.null(x$fit)) {
      cat("Fitted:\n")
      print(round(x$fit, 3))
      cat("\n")
    }
    
    if (!is.null(x$resid)) {
      cat("Residuals:\n")
      print(round(x$resid, 3))
      cat("\n")
    }
    
    if (!is.null(x$R2)) {
      cat("Coefficient of Determination R2:\n")
      print(round(x$R2, 3))
      cat("\n")
    }
    
    if (!is.null(x$Bootstrap)) {
      cat("Bootstrap estimates of parameters:\n")
      print(round(x$Bootstrap, 3))
      cat("\n")
    }
    
    if (!is.null(x$weight)) {
      cat("Weights of parameter estimates:\n")
      print(round(x$weight, 3))
      cat("\n")
    }
    
    if (!is.null(x$valid)) {
      cat("Valid:\n")
      cat((x$valid))
      cat("\n\n")
    }
    
    if (!is.null(x$opt)) {
      cat("Optimised Parameters:\n")
      print(round(x$opt, 3))
      cat("\n")
    }
    
    if (!is.null(x$init)) {
      cat("Starting Parameters:\n")
      print(round(x$init, 3))
      cat("\n")
    }
    
    if (!is.null(x$Mod)) {
      cat("Model:\n")
      print(x$Mod)
      cat("\n")
    }
    
    if (!is.null(x$Pn)) {
      cat("The number of parameters:\n")
      print(x$Pn)
      cat("\n")
    }
    
    if (!is.null(x$val)) {
      cat("Sum of Squared Errors:\n")
      cat(round(x$val, 3))
      cat("\n\n")
    }
    
    if (!is.null(x$AIC)) {
      cat("AIC scores:\n")
      print(x$AIC)
      cat("\n\n")
    }    
    if (!is.null(x$call)) {
      cat("Last Function call:\n")
      print(x$call)
      cat("\n\n")
    }
    
    if (!is.null(x$Analytic)) {
      cat("Analytic estimates of parameters:\n** Interpret cautiously **\n")
      printCoefmat(round(x$Analytic, 3), P.value = TRUE, has.Pvalue = TRUE)
    }
  
}
