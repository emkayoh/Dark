//taken from http://gallery.rcpp.org/articles/using-the-Rcpp-based-sample-implementation/

// [[Rcpp::export]]
NumericVector csample_num( NumericVector x,
                           int size,
                           bool replace,
                           NumericVector prob = NumericVector::create()
) {
  NumericVector ret = RcppArmadillo::sample(x, size, replace, prob);
  return ret;
}