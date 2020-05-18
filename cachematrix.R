## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Bellow is this function that creates an object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
## our Object is matrix
invs <- NULL  ## initializing invs as NULL
set <- function(y) {
            x <<- y          ## The value of matrix in parent environment
            invs <<- NULL    ## value of matrix in parent environment
        }
       get <- function() x   ## Returns the value of the matrix argument
       setInverse <- function(inverse) invs <<- inverse
       getInverse <- function() invs
      
       list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## This function computes the inverse of the "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated,  then cachesolve function should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {   
        ## Return a matrix that is the inverse of 'x'
          invs <- x$getInverse()
                if(!is.null(invs)){
                message("getting cached data")
         return(invs)
        }
        data <- x$get()
        invs <- solve(data)
        x$setInverse(invs)
        invs  
}
