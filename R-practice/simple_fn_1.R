#####################################################################
#  Custom function that returns a transformed vector
#  params: xVec, vector (x1, x2, ..., xn)
#  value:  vector (x1, x2 ^ 2, ... , xn ^ n)
#####################################################################

tmpFn1 <- function(xVec) {
  return ( (xVec) ^ c(1:length(xVec)) )
}

#####################################################################
#  Custom function that returns a transformed vector
#  params: xVec, vector (x1, x2, ..., xn)
#  value:  vector (x1, ((x_2)^2) / 2, ..., ((x_n)^n) / n)
#####################################################################

tmpFn2 <- function(xVec) {
  return ( tmpFn1(xVec)/c(1:length(xVec)) )
}

#####################################################################
#  Custom function that returns a transformed vector
#  params: x, a single number.  n, a strictly positive integer
#  value:  1 + x/1 + x^2/2 + ... + x^n / n
#####################################################################

tmpFn3 <- function(x, n) {
  if ((n < 0) | !(floor(n) >= n)) return (0)
  return ( sum( c(1, tmpFn2( rep(x, n)) ) ) )
}

