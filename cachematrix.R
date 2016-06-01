## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

	##The function below makes a special "matrix" object that can cache its own inverse and:
	## set the value of the vector, get the value of the vector, set the value of t he mean, and get the value of the mean as well.
	
	makeCacheMatrix <- function(x = matrix()) {i <- NULL
	    set <- function(y) {
	      x <<- y
	      i <<- NULL
	 }
	get <- function() x
	setInverse <- function(inverse) i <<- inverse
	getInverse <- function() i
	list(set = set,
	     get = get,
	     setInverse = setInverse,
	     getInverse = getInverse)
	}
	
	## The function below calculates the mean of the special "vector" formed in the function above.
	## If the mean has already been calculated, the function below gets the mean from the cache and skips redoing the computation. This is particulary useful if loops are involved.
	## If the mean has not been calculated, it calculates the mean of the data and then sets the value of the mean in the cache through the setmean
	## function.
	
	cacheSolve <- function(x, ...) {
	      i <- x$getInverse()
	      if (!is.null(i)) {
	            message("getting cached data")
	            return(inv)
	      }
	      m <- x$get()
	      i <- solve(m, ...)
	      x$setInverse(i)
	      return(i)
	}
