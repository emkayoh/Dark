P3<-function(a,X){
if (missing(X)){
    if(length(a)==1){
      list(Pn=3, Mod='P3')
    }else{
      sum((y-(a[1]+a[2]*exp(-x*a[3])))^2)
    }
  }else{
    a[1]+a[2]*exp(-X*a[3])
  }
  
}
