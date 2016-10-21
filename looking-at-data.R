## view dimentions of datasets
dim(plants)
nrow(plants)
ncol(plants)

## view object occupying size
object.size(plants) 

## get the column names
names(plants) 

head(plants, 10)
tail(plants, 10)

## view distribution of data, number of NAs
summary(plants)

## view distribution of column values
table(plants$Active_Growth_Period)

## view structure of data
str(plants)