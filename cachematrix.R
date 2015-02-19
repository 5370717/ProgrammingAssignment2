## Programming Assignment 2:
## Caching the Inverse of a Matrix

makeCacheMatrix <- function(x = matrix()) {
  ## This function creates a special "matrix" object that can cache its inverse.
  inverseMatrix <- NULL
  set <- function(y) {
    x <<- y
    inverseMatrix <<- NULL
  }
  get <- function() x 
  setinv <- function(invM) inverseMatrix <<- invM  
  getinv <- function() inverseMatrix  
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


cacheSolve <- function(x, ...) {
  # This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
  # If the inverse has already been calculated (and the matrix has not changed), 
  # then the cachesolve should retrieve the inverse from the cache.
  t1 <- Sys.time()
  inverseMatrix <- x$getinv()
  if(!is.null(inverseMatrix)) {
    message("getting cached data")
    message("Time spent: ", Sys.time() - t1 )
    return(inverseMatrix)
  }
  mat <- x$get()
  inverseMatrix <- solve(mat)
  x$setinv(inverseMatrix)
  message("Time spent: ", Sys.time() - t1 )
  inverseMatrix      
}
