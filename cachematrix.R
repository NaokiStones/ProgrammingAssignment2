## Put comments here that give an overall description of what your
## functions do

# 1. make matrix
# 2. return inverse of the matrix
# if the inverse of the matrix is calculated before, it returns cached one
# otherwise it calculate directly

## Write a short comment describing this function

# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of the inverse
# 4. get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
    invMat <- NULL
    set <- function(y){
        x <<- y
        invMat <<- NULL
    }
    get <- function() x
    setinverse <- function(inMat) invMat <<- inMat
    getinverse <- function() invMat
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function

# If calculation coducted before, this function returns cached object
# otherwise this function directly calculates its result

## 
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inMat <- x$getinverse()
    if(!is.null(inMat)){
        message("getting cached data")
        return(inMat)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setinverse(i)
    i
}
