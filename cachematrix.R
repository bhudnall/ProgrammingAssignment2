## This program allows you to create, access and edit
## a matrix. The funciton also allows to to find the 
## inverse of the matrix. The program assumes that
## the matrix provided can have an inverse.

## This function essentially allows you to create,
## edit, and access a matrix.

makeCacheMatrix <- function(x = matrix()) {
  matrixInverse <- NULL ## creates an empty matrix
  setMatrix <- function(y) { ## mutator function that sets the matrix value
    myMatrix <<- y ## assigns value to global variable myMatrix
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
  theInverse <- x$getMatrixInverse()
  if(!is.null(theInverse)) { ## checks to see if there is an inverse
    message("Getting cached data")
    return(theInverse) ## returns the cached inverse
  }
  theMatrix <- x$getMatrix() ## returns the matrix
  theInverse <- solve(theMatrix) ## calculates the inverse
  x$setMatrixInverse(theInverse) ## sets the inverse
  theInverse ## returns the inverse      
}
