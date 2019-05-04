#include <Rcpp.h>


using namespace Rcpp;

// [[Rcpp::export]]
Rcpp::NumericMatrix rotate_matrix(Rcpp::NumericVector alpha) {
  double a = Rcpp::as<double>(alpha);

  double rad = a / 360 * 2 * PI;
  Rcpp::NumericMatrix mat(2);
  mat(0, 0) = cos(rad);
  mat(1, 0) = sin(rad);
  mat(0, 1) = -sin(rad);
  mat(1, 1) = cos(rad);

  return(mat);
}
