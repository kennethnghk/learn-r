# load objects in this file: source('XXX')
# list all objects in workspace : ls()
# remove object : rm()

#### vector / matrix / list
vector1 <- 1:3
names(vector1) <- c('name1', 'name2', 'name3')

list1 <- list(a = 1, b = 2, c = 3)

matrix1 <- matrix(1:6, nrow=2, ncol=3)
dimnames(matrix1) <- list(c("row1", "row2"), c("col1", "col2", "col3"))

#### Data frames
teamData <- data.frame(team = c('Arsenal', 'Man U', 'Man City'), score = c(45,34,33))

# nrow(), ncol()

## find dimensions of data set
dim(flags)
