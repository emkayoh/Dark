# Five Param Exp + Bilinear and two fixed transition rates
P5c<-function (a,X){
  if(missing(X)){
    if(length(a)==1){
      list(Pn=5L,Mod='P5c')
    }else{
      Yest<-a[1]+a[2]*exp(-x*a[3])+ a[4]*(x-a[5])*H(x,10,a[5]) 
      sum((y-Yest)^2)
    }  }else{
      a[1]+a[2]*exp(-X*a[3])+ a[4]*(X-a[5])*H(X,10,a[5])
    }
}
