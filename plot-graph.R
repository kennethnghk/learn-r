## plot graph
plot(x=cars$speed, y=cars$dist)

## for entire data frame
## plot by formula (relationship between mpg and cyl values in mtcars)
boxplot(mpg ~ cyl, mtcars)

## plot histogram
hist(mtcars$mpg)

## ggplot2 package