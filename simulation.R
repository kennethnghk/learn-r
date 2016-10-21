rnorm() ## generate random number with given mean and standard deviation
dnorm()
rpois() ## Possion distrubution

## 4 functions associated with probabilty distribution functions
## d density 
## r random number generation
## p cumulative distribution
## q quantile (inverse cumulative distribution) function

rnorm(x, mean = 0, sd = 1, log = FALSE)
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

## take 100 samples from 0 and 1, with probability 0.3 and 0.7 respectively
flips <- sample(c(0,1), 100, replace = TRUE, prob = c(0.3,0.7))

## equivalent to above
flips2 <- rbinom(100, size=1, prob = 0.7)
binom(1, size=100, prob = 0.7)

## generate 100 groups of numbers
## each group has 5 random numbers from poisson distribution with mean = 10
my_pois <- replicate(100, rpois(5, 10)) ## result is matrix

## plot histogram
hist(cm)