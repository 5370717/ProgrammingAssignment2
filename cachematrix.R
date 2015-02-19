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
  # This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
  # If the inverse has already been calculated (and the matrix has not changed), 
  # then the cachesolve should retrieve the inverse from the cache.
  
  inversedMatrix <- x$getinv()
  if(!is.null(inversedMatrix)) {
    message("getting cached data")
    
    return(inversedMatrix)
  }
  mat <- x$get()
  inverseMatrix <- solve(mat)
  x$setinv(inverseMatrix)
  
  inverseMatrix      
}
