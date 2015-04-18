BestFit<- function(obj, MSC, draw){
if(missing(draw)) draw=F
  mFn<-c(1,1,P3,1,P5c,1,P7c)
  idx<-c(3,5,7)
  obj$call=NULL
  
  Mod<- which(MSC$AIC==min(MSC$AIC))
  idx2 <- idx==Mod
  Fn=mFn[[Mod]]
  
  oP<-MSC$param[idx2,]
  
  Opt<-optim(oP, Fn)
  while (Opt$con) Opt<-optim(Opt$par, Fn)
  opt<-Opt$par
  
  if(draw){X<- seq(0, max(obj$time), length.out = 1000)
           lines(X, Fn(opt,X), col=2)
  }
  
  Res<-c(call=match.call(),obj, list(opt=opt, Mod=Fn(Mod)$Mod, Pn=Fn(Mod)$Pn, AIC=MSC$AIC, val=Opt$val))
  Y<- Fn(opt,obj$time) 
  
  Res$fit <- Y 
  Res$resid <- obj$thrs-Y
  Res$R2 <- 1-(var(obj$thrs-Y)/var(obj$thrs))
  
  class(Res)='dark'
  Res
}
