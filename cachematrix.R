## overall description of the function
## The <<- operator is used to assign values to objects that do belonging
##in a differennt environment



## function takes argument as a matrix. This function creates a special matrix
## which contains the functions to
## set the value of the matrix
## get the value of the matrix
## set the value of the mean
## get the value of the mean

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  get <- function() {
    x
  }
  
  setinverse <- function(inverse) {
    i <<- inverse 
  }
  
  getinverse <- function() {
    i
  }
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## This function computes inverse of the special matrix created
## if the inverse is already computed it returns the cached value
##otherwise it computes the inverse and sets the value of inverse in cache 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     i <- x$getinverse()
     if(!is.null(i)) {
       message("getting cached data")
       return(i)
     }
     
     data <- x$get()
     i <- solve(data,...)
     x$setinverse(i)
     i
     
}


