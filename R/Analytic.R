Analytic<- function(obj){
  x <- c(obj$time)
  y <- c(obj$thrs)
  
  params<- obj$opt
#   Oo7<- optim(Start7, P7c)
#   while(Oo7$con){
#     Oo7<- optim(Oo7$par, P7c, hessian = T)
#   }
#   Y<-P7c(Oo7$par,x)
#   p<-Oo7$par
  
  
  
  DATAlist=list(x,y)
  Thres<-y~(a1+a2*exp(-x*a3)+ a4*(x-a5)*H(x,10,a5) + a6*(x-a7)*H(x,10,a7))
  
  ################     Seven Param port algorithm search
  
  Param<- list(a1=params[1],a2=params[2],a3=params[3],a4=params[4],a5=params[5],a6=params[6],a7=params[7])    
  mod1<-nls(formula=Thres,data=DATAlist, start=Param, trace=T, control=list(warnOnly=TRUE, tol=1e-06, minFactor=1/2048))

Parms<-signif(summary(mod1)$param,3)
row.names(Parms) <- c("CT", "CC", "Tau", "S2", "Alpha", "S3", "Beta")

  obj$Analytic=Parms
obj$call<- match.call()
  class(obj)='dark'
obj

}