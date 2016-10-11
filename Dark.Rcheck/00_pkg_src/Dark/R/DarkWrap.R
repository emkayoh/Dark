DarkWrap <- function(obj){
  require(Dark)
  P<- Start(obj, 5000)
  MSC<-ModelSelect(obj,P)
  
  MSC$AIC[3]<-MSC$AIC[3] + 1000
  MSC$AIC[5]<-MSC$AIC[5] + 1000 
  MSC$AIC[6]<-MSC$AIC[6] + 1000 
  MSC$AIC[7]<-MSC$AIC[7] + 00 
  
  
  obj<-BestFit(obj,MSC)
  obj<-MultiStart(obj,repeats = 50)
  obj<-BootDark(obj,R = 200)
  obj
}