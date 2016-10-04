# Vector
x <- c("a", "b", "c", "d", "e")

x1 <- x[1] # "a"

x2 <- x[1:3] # "a", "b", "c"

x3 <- x[x > "b"] # "c", "d", "e"

# check if each element is greater than "b" 
x4 <- x > "b" # FALSE FALSE  TRUE  TRUE  TRUE
x[x4] #"c" "d" "e"

# List
y <- list(foo = 1:4, bar = 0.6, baz = "hello")
y[1] # list with "foo"
y[[1]] # just a sequence

y$bar # get sequence 0.6
y[["bar"]] # same as y$bar
y["bar"] # get a list with name "bar"

y[c(1,3)] # get lists with "foo" and "baz"

name <- "bar"
y[[name]] # get 0.6
y$name # cannot get

# recursive list
z <- list(a = list(10,12,14), b=c(3.14, 2.81))
z[[c(1,3)]] # 14
z[[1]][[3]] # 14
z[[c(2,1)]] # 3.14

# Matrix
m <- matrix(1:6, 2, 3)
m[1,2] # get 3 (row 1, col 2)
m[1,] # get 1 3 5 (all row 1)
m[1, , drop=FALSE] # get matrix with dimensions (default not)

# Partial matching by name
t <- list(arsenal = 49, chelsea = 50, mancity = 44, manutd = 45)
t$a # get 49 (matches arsenal)
t[["a"]] # NULL
t[["a", exact=FALSE]] # get 49

# Remove NA values
w <- c(1, 2, NA, NA)
bad <- is.na(w) # get FALSE FALSE  TRUE  TRUE
w[!bad] # get 1 2

# Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90.
subset(dataset, Ozone > 31 & Temp > 90)