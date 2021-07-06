## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  x.inv <- NULL
  # Set function
  set <- function(y) {
    x <<- y
    x.inv <<- NULL
  }
  
  # Get function
  get <- function() x
  
  # SetInv function
  setInv <- function(y.inv) {
    x.inv <<- y.inv
  }
  
  # GetInv function
  getInv <- function() x.inv
  
  # Return list of set and get functions
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}


## Write a short comment describing this function


        ## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  x.inv <- x$getInv()
  if (is.null(x.inv)) {
    x.inv <- solve(x$get(), ...)
    x$setInv(x.inv)
  }
  else
    message("Getting cached data")
  x.inv
}
