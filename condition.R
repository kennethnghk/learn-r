## if-else
if (x>3) {
  y <- 10
} else {
  y<-5
}

y <- if (x > 5) {
  TRUE
} else {
  FALSE
}

## for
for (i in 1:10) {
  print(i)
}

x <- c("a", "b", "c")
for (i in 1:4) {
  print(x[i]);
}

for (letter in x) print(letter)
for (i in seq_along(x)) print(x[i])

x <- matrix(1:6, 2, 3)
for (i in seq_len(nrow(x))) {
  
}

## while
cnt <- 10
while (cnt < 10) {
  cnt <- cnt + 1
}

## repeat (infinite loop)
x <- 10
repeat {
  x <- x + 1
  print(x)
  if (x > 20) {
    break
  }
}