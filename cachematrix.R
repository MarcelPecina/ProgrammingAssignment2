## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
        x <<- y
        inv <- NULL
  }
  get <- function() x
  set_inverse <- function(inverse) inv <<- inverse 
  get_inverse <- function() inv
  iist(set = set, get = get, set_inverse = set_inverse, get_inverse = get_inverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$get_inverse()
  if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$set_inverse(inv)
  inv
}
