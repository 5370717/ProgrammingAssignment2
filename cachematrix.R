## Programming Assignment 2:
## Caching the Inverse of a Matrix



makeCacheMatrix <- function(x = matrix()) {
  ## This function creates a special "matrix" object that can cache its inverse.
  inversedMatrix <- NULL
  set <- function(y) {
    x <<- y
    inversedMatrix <<- NULL
  }
  get <- function() x 
  setinv <- function(invM) inversedMatrix <<- invM  
  getinv <- function() inversedMatrix  
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
