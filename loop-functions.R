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