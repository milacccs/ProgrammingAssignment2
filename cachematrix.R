## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL                       ## Inverse property
 set <- function(m) {      ## Set a matrix
   x <<- m
   i <<- NULL
}

 get <- function() {      ## Get a matrix
   x
}
 setinverse <- function(inverse) { ## Set inverse matrix
   i <<- inverse
}
 getinverse <- function() { ## Get inverse matrix
   i
}
 list(set = set,
      get = get,
      setinverse = setinverse,
      getinverse = getinverse)

}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  i<- x$getinverse()
  if (!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
        ## Return a matrix that is the inverse of 'x'
}
