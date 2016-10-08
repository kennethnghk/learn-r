## Dates by "Date" class
## Times by "POSIXct" or "POSIXlt" class

x <- as.Date("2016-01-03") ## return POSIXct object

## get current time
x <- Sys.time() ## alreadt POSIXct (integers)
p <- as.POSIXlt(x) ## returns a list
p$sec ## return sec

## strptime() : convert different format time into objects

## operation on dates adn time
x <- as.Date("2016-03-02")
y <- as.Date("2015-02-22")
x-y
