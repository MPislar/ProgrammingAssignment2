## makeCacheMatrix is a function that creats a special matrix, which contains functions such as getMatrix,
## setMatrix, setInverse, and getInverse. With those functions you can get or set the matrix and get or set
## the inverse of the matrix, respectively.  


makeCacheMatrix <- function(x = matrix()) {
   inverse <- NULL
   setMatrix <- function(y,...){
         x <<- matrix(y,...)
         inverse <<- NULL
   }
   getMatrix <- function() x
   setInverse <- function(MatrixInverse) inverse <<- MatrixInverse
   getInverse <- function() inverse
   list(setMatrix = setMatrix, getMatrix = getMatrix,
        setInverse = setInverse, getInverse = getInverse)
}


## Function'cacheSolve' either obtains the invers of a previous special matrix, if it is already calculated
## and cached in special matrix, or the function calculates the inverse in situ and stores in special matrix.

cacheSolve <- function(x, ...) {
      inverse <- x$getInverse()
      if(!is.null(inverse)) {
            message("getting cached inverse")
            return(inverse)
      }
      data <- x$getMatrix()
      inverse <- solve(data, ...)
      x$setInverse(inverse)
      inverse
}
