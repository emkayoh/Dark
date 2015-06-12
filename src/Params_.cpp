//
//  Params_.cpp
//  
//
//  Created by Jeremiah Kelly on 05/06/2015.
//
//
  
  //#include "Start_.h"
  //#include <Rcpp.h>
  #include <RcppArmadilloExtensions/sample.h>
  using namespace Rcpp;

#include <random>
#include <algorithm>
#include <iterator>
#include <iostream>
#include <armadillo>
#include<math.h>
//[[Rcpp::depends(RcppArmadillo)]]

inline double P7c_c(Rcpp::List obj, NumericVector P){
  
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

inline NumericVector shuffle(NumericVector x,int size,bool replace = 0,
                             NumericVector prob = NumericVector::create()) {
  NumericVector ret = RcppArmadillo::sample(x, size, replace, prob);
  return ret;
}

inline Rcpp::NumericMatrix Start_c(Rcpp::List obj, int R){
  
  // convert obj to vectors
  NumericVector x = as<NumericVector>(obj["time"]);
  NumericVector y = as<NumericVector>(obj["thrs"]);
  
  // initialise the index vector subsequently used to randomise the order 
  IntegerVector i = seq_len(R); // makes vector 1:R
  NumericVector idx = as<NumericVector>(i);
  idx=idx-1; // converts to 0:(R-1)
  
  // initialise the output
  Rcpp::NumericMatrix Out(R,7);    
  
  // create the idex vectors for each column of the output
  Rcpp::NumericVector idxCT  = shuffle(idx,R);
  Rcpp::NumericVector idxCC  = shuffle(idx,R);
  Rcpp::NumericVector idxTau = shuffle(idx,R);
  Rcpp::NumericVector idxS2  = shuffle(idx,R);
  Rcpp::NumericVector idxAlp = shuffle(idx,R);
  Rcpp::NumericVector idxS3  = shuffle(idx,R);
  Rcpp::NumericVector idxBet = shuffle(idx,R);
  
  // find the mid points for both input arrays
  double xSp = (min(x)+max(x))/2;
  if(xSp>15){
    xSp=15;
    // or if the data have been collected for more than 30 minutes
    // set maximum alpha ta 15 minutes
  }
  double ySp = (min(y)+max(y))/2;
  
  // calculate the step change by number of repeats R
  double delCT = (max(y)-ySp)/R;
  double delCC = (0-ySp)/R;
  double delTau = -(0-ySp)/R;
  double delS2 = (-0.6)/R;
  double delAlp = xSp/R;
  double delS3 = (0.3)/R;
  double delBet = xSp/R;
  
  for (int i = 0; i < R; i++) {
    Out(idxCT(i), 0) = (ySp + i*delCT); // CT
    Out(idxCC(i), 1) = (i+1)*delCC; // CC
    Out(idxTau(i),2) = 1/((1+i)*delTau);
    Out(idxS2(i), 3) = (1+i)*delS2;
    Out(idxAlp(i),4) = (1+i)*delAlp;
    Out(idxS3(i), 5) = (1+i)*delS3;
    Out(idxBet(i),6) = xSp+(i)*delBet;
  }
  
  return Out;
}

// [[Rcpp::export]]
 
Rcpp::NumericVector Params_c(Rcpp::List obj, int R){
  
  // initialise the output
  Rcpp::NumericMatrix Out(3,7);
  Rcpp::NumericMatrix Mat = Start_c(obj, R);
  Rcpp::NumericVector tmp(R);
  
  for(int i = 0; i < R; ++i) {
  NumericVector P = Mat.row(i);
  tmp(i) = P7c_c(obj, P);
  }
return tmp;
  
    }
