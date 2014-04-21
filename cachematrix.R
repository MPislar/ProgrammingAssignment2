## makeCacheMatrix is a function that creats a special matrix, which contains functions such as getMatrix,
## setMatrix, setInverse, and getInverse. With those functions you can get or set the matrix and get or set
## the inverse of the matrix, respectively.  

## Write a short comment describing this function

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
