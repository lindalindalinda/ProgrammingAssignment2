## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function will creates the matrix object that is a list of  
## the following functions 
## 1. set value of matrix 2. get value of matrix 
## 3. set value of matrix inverse 4. get value of matrix inverse

makeCacheMatrix <- function(x = matrix()) {
      i <- NULL
      set <- function(y) {
          x <<- y
          i <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) i <<- solve
        getsolve <- function() i
        list(set = set, get = get,
            setsolve = setsolve,
            getsolve = getsolve)
}


## Write a short comment describing this function
## This function checks to see if the inverse of the matrix is in the matrix created by makeCacheMatrix.
## If not it will compute the matrix otherwise it will return what is in the cache. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getsolve()
        if(!is.null(i)) {
              message("getting cached data")
              return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setsolve(i)
        i
}