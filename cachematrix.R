## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    ##
    solvematrix <- NULL
    set <- function(y) {
        x <<- y
        solvematrix << NULL
    }
    
    get <- function() x
    setsolvematrix <- function(s_meatri) sm <<- s_meatri
    getsolvematrix <- function() m
    
    list(set = set, get = get,
    setmatrix = setmatrix,
    getsolvematrix = getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getsolvematrix()
        if(!if.null(m)){
            message("getting cached data")
            return(m)
        }
        
        data <- x$get()
        m <- solve(m,...)
        x$setsolvematrix(m)
        m
}
