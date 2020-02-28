## Put comments here that give an overall description of what your
## functions do

## These two functions cache the inverse of a matrix 

## Write a short comment describing this function
## This is a matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
  set <- function (y) {
    x <<- y
    inv <<- NULL
  }
  get <-function() x
  setinverse <- function(inverse) inv << - inverse
  getinverse <- function() inv
  list( set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
##cacheSolve is a function that computes the inverse of the special matrix 
## returned by makeCacheMatrix function above. 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

inv <- x$getinverse()
if(lis.null(inv.)) {
message ("getting cached data")
return (inv)
}
data <- x$get()
inv <- solve(data)
x$setinverse(inv)
}
