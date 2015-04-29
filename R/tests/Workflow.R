# test

rm(list=ls())
tmp<- TestData(0:20, repeatable = T)

P<-Start(tmp, 100)
MSC<-ModelSelect(tmp,P)
tmp<-BestFit(tmp,MSC, T)
tmp<-MultiStart(tmp,repeats = 5)

BStmp<-BootDark(tmp,R = 200,T)$BS
# Rprof(NULL)
