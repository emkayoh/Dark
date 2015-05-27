//
//  Start_.cpp
//  
//
//  Created by Jeremiah Kelly on 26/05/2015.
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
//[[Rcpp::depends(RcppArmadillo)]]

// this makes the sample function work within the script
inline NumericVector shuffle( 
              NumericVector x,
              int size,
              bool replace = 0,
              NumericVector prob = NumericVector::create()
) {
  NumericVector ret = RcppArmadillo::sample(x, size, replace, prob);
  return ret;
}

// [[Rcpp::export]]
Rcpp::NumericMatrix Start_c(Rcpp::List obj, int R){

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
    Rcpp::NumericVector idxCT=shuffle(idx,R);
    Rcpp::NumericVector idxCC=shuffle(idx,R);
    Rcpp::NumericVector idxTau=shuffle(idx,R);
    Rcpp::NumericVector idxS2=shuffle(idx,R);
    Rcpp::NumericVector idxAlp=shuffle(idx,R);
    Rcpp::NumericVector idxS3=shuffle(idx,R);
    Rcpp::NumericVector idxBet=shuffle(idx,R);
    
    // find the mid points for both input arrays
    double xSp = (min(x)+max(x))/2;
    if(xSp>12){
      xSp=12;
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
        Out(idxCT(i),0)= (ySp + i*delCT); // CT
        Out(idxCC(i),1)= (i+1)*delCC; // CC
        Out(idxTau(i),2)= (1+i)*delTau;
        Out(idxS2(i),3)= (1+i)*delS2;
        Out(idxAlp(i),4)= (1+i)*delAlp;
        Out(idxS3(i),5)= (1+i)*delS3;
        Out(idxBet(i),6)= xSp+(i)*delBet;
    }
    
    return Out;
}
