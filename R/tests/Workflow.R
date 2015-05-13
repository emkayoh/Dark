# test

rm(list=ls())
data(dark)
tmp<-dark
names(tmp)
par(las=1, bty='n',mfrow=c(1,1))
plot(tmp$time, tmp$thrs)

P<-Start(tmp, 4000)
MSC<-ModelSelect(tmp,P)
tmp<-BestFit(tmp,MSC, T)
names(tmp)
tmp<-MultiStart(tmp,repeats = 25)
tmp<-BootDark(tmp,R = 500, T,progress = T)

