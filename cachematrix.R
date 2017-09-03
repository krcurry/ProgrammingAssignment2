## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
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
}


