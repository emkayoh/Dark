//
//  P7c_.cpp
//  
//
//  Created by Jeremiah Kelly on 04/06/2015.
//
//

#include <Rcpp.h>
#include<math.h>
using namespace Rcpp;

// [[Rcpp::export]]
double P7c_c(Rcpp::List obj, NumericVector P){

  // convert obj to vectors
  NumericVector x = as<NumericVector>(obj["time"]);
  NumericVector y = as<NumericVector>(obj["thrs"]);
  
  double CT = P(0);  
  double CC = P(1);  
  double Tau = P(2);  
  double S2 = P(3);  
  double Alp = P(4);  
  double S3 = P(5);  
  double Bet = P(6);
  double xA = 0;
  double xB = 0;
  

int n = x.size();
double total = 0;
double resid = 0;

for(int i = 0; i < n; ++i) {
  
  if(x[i]< Alp){
    xA=0;
  }else{
    xA=x[i]-Alp;
  }
  if(x[i]< Bet){
    xB=0;
  }else{
    xB=x[i]-Bet;
  }
  
  resid = y[i]-(
      CT + CC*exp(-x[i]/Tau) // cone phase
    + S2*xA        
    + S3*xB
  );
  total= total + resid*resid;
}
return total;
}


/*** R
# This is R code
TestFn<-function(obj, P){
  
  x <- obj$time
  y <- obj$thrs
  
  n <- length(x)
  total=0.0
  for (ii in 1:n){
    resid<- (y[ii]-(
      P[1]+P[2]*exp(-x[ii]/P[3])
      + P[4]*ifelse(x[ii]<P[5], 0, x[ii]-P[5])
      + P[6]*ifelse(x[ii]<P[7], 0, x[ii]-P[7])
    ))
    total=total + resid*resid
  }
  
  total
}

P7<-function (a){
  
  Yest<-a[1]+a[2]*exp(-x/a[3])+ a[4]*ifelse(x<a[5],0, x-a[5]) + a[6]*ifelse(x<a[7],0, x-a[7])
  return(sum((y-Yest)^2))
}

x <- dark$time
y <- dark$thrs

P7c_c(dark, P)
TestFn(dark, P)
P7(P)
*/
