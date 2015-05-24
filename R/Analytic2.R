Analytic2<- function(obj){
  x<-obj$time
  y<-obj$thrs
  p<-obj$opt
  val<-obj$val
  # Analytic
  # the partial derivatives
  
  df1 <- function(x, a) 1
  df2 <- function(x, a) exp(-x * a[3])
  df3 <- function(x, a) -(a[2] * (exp(-x * a[3]) * x))
  df4 <- function(x, a) (x - a[5]) * (1/(1 + exp(-20 * (x - a[5]))))
  df5 <- function(x, a) -(a[4] * (x - a[5]) * (exp(-20 * (x - a[5])) * 20/(1 + exp(-20 * 
                              (x - a[5])))^2) + a[4] * (1/(1 + exp(-20 * (x - a[5])))))
  df6 <- function(x, a) (x - a[7]) * (1/(1 + exp(-20 * (x - a[7]))))
  df7 <- function(x, a) -(a[6] * (x - a[7]) * (exp(-20 * (x - a[7])) * 20/(1 + exp(-20 * 
                              (x - a[7])))^2) + a[6] * (1/(1 + exp(-20 * (x - a[7])))))
  
  dfM <- cbind(df1(x, p), df2(x, p), df3(x, p), df4(x, p), df5(x, p), df6(x, p), df7(x,p))
  dfM[is.na(dfM)]<-0
  df <- length(x) - 7
  Err <- (val/(df) * MASS::ginv(t(dfM) %*% (dfM)))
  Diag <- sqrt(diag(Err))
  
  Alph <- qt(0.975, df) # 95% two tailed confidence intervals
  
  Parms <- round(cbind(p, Diag, p - Alph * Diag, p + Alph * Diag, p/Diag, 2*pt(abs(p/Diag), 
                                                                                    df, lower.tail = F)), 3)
  colnames(Parms) <- c("Estimate", "Std. Error", "L Bound", "U Bound", "t value", "Pr(>|t|)")
  row.names(Parms) <- c("CT", "CC", "Tau", "S2", "Alpha", "S3", "Beta")
  obj$Analytic<-Parms
  obj
}