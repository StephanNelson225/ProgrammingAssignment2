## The basic idea is to create functions that cache a 
matrix so that the result doesn't have to be recalcuated every time'



  cachemean <- function(x, ...) {
    m <- x$getmean()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    m <- mean(data, ...)
    x$setmean(m)
    m
  }

makeCacheMatrix <- function(x = matrix()) {
     makeVector <- function(x = numeric()) {
     m <- NULL
    set <- function(y) {
      x <<- y
       m <<- NULL
  }
   get <- function() x
   setmean <- function(mean) m <<- mean
   getmean <- function() m
  list(set = set, get = get,
         setmean = setmean,
         getmean = getmean)
  }
}

}


## The "..." passes everything along that is elsewhere defined.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}



