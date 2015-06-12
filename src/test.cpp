#include<iostream>
#include <armadillo>
#include <RcppArmadilloExtensions/sample.h>
//[[Rcpp::depends(RcppArmadillo)]]

using namespace std;
using namespace Rcpp;
using namespace arma;

//[[Rcpp::export]]
IntegerVector test_func(int N) {
    IntegerVector frame = Range(1, N);
    NumericVector wts = runif(N, 0, 1);
    NumericVector Wts = wts / sum(wts);

    IntegerVector y = RcppArmadillo::sample(frame, N,FALSE, Wts );
    return y;
}