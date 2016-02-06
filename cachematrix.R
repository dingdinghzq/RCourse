## Put comments here that give an overall description of what your
## functions do

## This function warps a matrix and saves 
## a cache of inverse matrix if exists
## It returns a list of 4 method, get/set the matrix and invese

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    set <- function(y){
        x <<- y
        inverse <- NULL
    }
    get <- function() x
    setInverse <- function(i) inverse <<-i
    getInverse <- function() inverse
    list(set=set, 
         get=get, 
         setInverse=setInverse,
         getInverse=getInverse)
}


## This method wraps the solve method
## It will try to get the cached inverse result if exists
## If cache doesn't exists, calcuate it and cache it for next use

cacheSolve <- function(x, ...) {
    i <- x$getInverse()
    if (!is.null(i))
    {
        message ("getting cached data")
        return (i)
    }
    data <- x$get()
    i <- solve(data)
    x$setInverse(i)
    i
}
