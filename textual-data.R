# textual 

# dput / dget
eplData201516 <- read.csv('sample-data/epl-league-table-201516.csv')
dput(eplData201516, 'data/eplData201516.R')

eplData201516.dump = dget('data/eplData201516.R')

# dump
eplData201213 <- read.csv('sample-data/epl-league-table-201213.csv')
eplData201314 <- read.csv('sample-data/epl-league-table-201314.csv')

dump(c("eplData201213", "eplData201314"), file="data/epldump.R")
source('data/epldump.R')

# read file by connections
con <- file('sample-data/epl-league-table-201213.csv')
x <- readLines(con, 10)

# read url
con <- url('http://9gag.com', 'r')