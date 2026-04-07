## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  # Initialize inv as NULL to store cached inverse matrix
  inv <- NULL
  
  # Set the value of the matrix x and reset cached inverse
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  
  # Get the value of the matrix x
  get <- function() x
  
  # Set the value of the inverse matrix
  setinverse <- function(inverse) inv <<- inverse
  
  # Get the cached inverse matrix
  getinverse <- function() inv
  
  # Return the list of functions
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  # Check if the inverse is already cached
  inv <- x$getinverse()
  
  # If cached inverse exists, return it
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  
  # Otherwise, compute the inverse of the matrix
  data <- x$get()
  inv <- solve(data, ...)
  
  # Cache the computed inverse for future use
  x$setinverse(inv)
  
  # Return the inverse matrix
  inv
}
