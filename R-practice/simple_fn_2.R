#####################################################################
#  Custom function that returns a vector of moving averages
#  params: xVec, vector (x1, x2, ..., xn)
#  value:  vector (x1+x2+x3)/3, (x2+x3+x4)/3, ... , (xn-2 + xn-1 + xn)/3
#####################################################################

tmpFn <- function(xVec) {
  tmpVec <- xVec[xVec < 0]
  newVec <- tmpVec ^ 2 + 2*tmpVec + 3
  
  tmpVec <- xVec[ (xVec >=0) & (xVec < 2)]
  newVec <- c(newVec, tmpVec + 3)
  
  tmpVec <- xVec[ (xVec >= x) ]
  newVec <- c(newVec, tmpVec ^ 2 + 4*tmpVec - 7)
  
  return (newVec)
}