## Put comments here that give an overall description of what your
## functions do

Matrix_coursera : matrix(1:9, nrow = 3, ncol = 3)
inverse <- matrix() ## free variable 

## function which use inverse variable 
cacheSolve <- function( inverse, original) {
  if (identical(inverse , original)) { # if not compute then compute
    cash <- inverse
  }else {
    tmp <- makeCacheMatrix(Caa) ## call function to inverse matrix.
    cash <- tmp$inverse
  }
  cash
}

makeCacheMatrix <- function(ztmp = matrix()) { 
  ## take Matrix in argument and add another function which get the original or inverse the matrix
  ztmp = ztmp
  list(
    get = function()ztmp,
    inverse = function()solve(ztmp, tol = 1e-20)
  )
}
