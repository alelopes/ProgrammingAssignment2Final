# Basecally retaking it to get certificate (I didn't verify last time :( )





## This function works pretty much like the one given in the example. 
## Basically, it caches a matrix and has four methods, set, get,
## setmean and getmean. The last two will be used by the cacheSolve function.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function(inverse_matrix) m <<- inverse_matrix
        getinv <- function() m
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv
}


## This works like the example given. The only difference is that it does not uses the mean. 
## Now, we use the solve function to get the inverse of the given matrix.

cacheSolve <- function(x, ...) {
        m <- x$getinv()
        if(!is.null(m)) {
                message("getting cached Matrix data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinv(m)
        m
        ## Return a matrix that is the inverse of 'x'
}
