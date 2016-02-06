## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

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
