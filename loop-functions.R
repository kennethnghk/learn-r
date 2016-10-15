## lapply
x <- list(a = 1:5, b=rnorm(10))
lapply(x, mean) ## always return a list
lapply(x, mean, rm.na = TRUE)

## anonymous function
x <- list(a = matrix(1:4, 2, 2), b = matrix(1:6, 3, 2))
lapply(x, function(ele) ele[,1])

## sapply
x <- list(a = 1:5, b=rnorm(10)) ## return vector, simple result

## apply
x <- matrix(rnorm(200), 20, 10)
apply(x, 2, mean) ## 2 => get mean of each column
apply(x, 1, mean) ## 1 => get mean of each row

## other functions
rowSums()
rowMeans()
colSums()
colMeans()

## mapply (can apply to multiple lists)
list(rep(1,4), rep(2,3), rep(3,2), rep(4,1))
mapply(rep, 1:4, 4:1) ## can vectorize function inputs which are not allowed vector

## tapply (apply to subset of vector)
x <- c(1:30)
f <- gl(3,10) ## define 3 levels, which one contains 10 objects
tapply(x, f, mean) ## find the mean of level 1, 2, 3 numbers respectively

## split (split vectors / objects into group)
x <- c(1:30)
f <- gl(3,10)
split(x,f) ## split into 3 groups (levels) by f
lapply(split(x,f), mean) ## same as tapply(x,f,mean)

library(datasets)
airquality ## airquality data frame
s <- split(airquality, airquality$Month) ## split into groups by month
lapply(s, function(x) colMeans(x[, c("Ozone", "Wind")])) ## find the mean Ozone and Wind of each month

## split on more than 1 levels
x <- c(1:30)
f1 <- gl(2,5)
f2 <- gl(5,2)
interaction(f1,f2)
split(x, list(f1,f2), drop=TRUE) ## split by interaction(f1,f2), ie. by 2 combinations
## drop means dropping empty levels