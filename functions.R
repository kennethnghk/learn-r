add2 <- function(x, y) {
  x + y ## return the last expression
}

## x is vector
above10 <- function(x, n = 10) {
  use <- x > n
  x[use]
}

## find means of each column, y is data-frame
columnmean <- function(y, removeNA = TRUE) {
  nc <- ncol(y)
  means <- numeric(nc)
  for (i in 1:nc) {
    means[i] <- mean(y[,i], na.rm = removeNA)
  }
  means
}

## list arguments of function
args(mean)

## ... argument, extend arguments to other function
myplot <- function(x, y, type="l", ...) {
  plot(x, y, type=type, ...)
}

## search functions (by packages order)
search()

## lexical scoping
make.power <- function(n) {
  pow <- function(x) {
    x^n
  }
  pow
}

cube <- make.power(3)
square <- make.power(2)

cube(3) ## gets 27
square(3) ## gets 9