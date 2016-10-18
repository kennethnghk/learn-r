rnorm() ## generate random number with given mean and standard deviation
dnorm()
rpois() ## Possion distrubution

## 4 functions associated with probabilty distribution functions
## d density 
## r random number generation
## p cumulative distribution
## q quantile function

dnorm(x, mean = 0, sd = 1, log = FALSE)
x <- rnorm(10, 20, 2)

set.seed(1) ## set the sequence of random number generator

## generate random numbers from a linear model
set.seed(20)
x <- rnorm(100)
e <- rnorm(100, 0, 2)
y <- 0.5 + 2*x +e
summary(y)
plot(x,y)

## set binary values
x <- rbinom(100, 1, 0.5)

sample(1:10, 4) ## randomly get 4 numbers from 1:10