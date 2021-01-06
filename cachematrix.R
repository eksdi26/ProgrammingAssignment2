## Put comments here that give an overall description of what your
## functions do

## Function that caches the inverse of a matrix
## Creates a special matrix

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y){
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) inverse <<- solveMatrix
  getInverse <- function() inverse
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Computes the inverse of the created matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

  inverse <- x$getInverse()
  if(!is.null(inverse)){
    message("getting cached data")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data)
  x$setInverse(inverse)
  inverse      
}
