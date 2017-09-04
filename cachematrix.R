## Cache the Inverse of a Matrix
## Matrix inversion is usually a costly computation and there may be some 
## benefit to caching the inverse of a matrix    rather than compute it repeatedly
## Below are a pair of functions used to create a matrix and caches its inversea 
## This function creates a special matrix    that can cache its inverse.
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
  set <- function(y) {
    x <<- y
    cache <<- NULL
  }
  get <- function() x
  setMatInverse <- function(matInverse) m <<- matInverse
  getMatInverse <- function() m
  list(set = set, get = get,
       setMatInverse = setMatInverse,
       getMatInverse = getMatInverse)
} 

## Returns the inverse of the matrix. Checks the inverse if 
## it has already been calculated then it returns the results 
## without calculating, otherwise it calculates the results

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
cache <- x$getMatInverse()
  if (!is.null(m)) {
    message("getting cached data")
    return(m)
    
  }
  data <- x$get()
  m<-solve(data, ...)
  x$setMatinv(m)
  m
}
