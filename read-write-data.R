## write data
#write.table()

## read data

eplData201516 <- read.csv('sample-data/epl-league-table-201516.csv')
eplData201516rows <- read.csv('sample-data/epl-league-table-201516.csv', nrows = 10)
eplData201415 <- read.table('sample-data/epl-league-table-201516.csv', header=TRUE, sep=',')

## read large amount of data
initialData <- read.csv('sample-data/epl-league-table-201516.csv', nrows = 10)
classes <- sapply(initialData, class)
eplData201516Partial <- read.table('sample-data/epl-league-table-201516.csv', header=TRUE, sep=',', colClasses = classes)