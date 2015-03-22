## This program allows you to create, access and edit
## a matrix. The funciton also allows to to find the 
## inverse of the matrix. The program assumes that
## the matrix provided can have an inverse.

## This function essentially allows you to create,
## edit, and access a matrix.

makeCacheMatrix <- function(x = matrix()) {
  matrixInverse <- NULL ## creates an empty matrix
  setMatrix <- function(y) { ## mutator function that sets the matrix value
    myMatrix <<- y
    matrixInverse <<- NULL
  }
  getMatrix <- function() myMatrix ## accessor function
  setMatrixInverse <- function(theInverse) matrixInverse <<- theInverse
  getMatrixInverse <- function() matrixInverse
  list(setMatrix = setMatrix,
       getMatrix = getMatrix,
       setMatrixInverse = setMatrixInverse,
       getMatrixInverse = getMatrixInverse) 
}


## This function returns the inverse of a matrix.
## It assumes that the matrix creates in makeCacheMatrix
## has an inverse.

cacheSolve <- function(x, ...) {
        
}
