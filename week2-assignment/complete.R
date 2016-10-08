complete <- function(directory, id=1:332) {
    
    ids = c()
    nobs = c()
    
    for (i in id) {
        fileName <- file.path(directory, paste(sprintf("%.3d", i), '.csv', sep=''))
        statData <- read.csv(fileName)
        nrows <- nrow(statData[apply(!is.na(statData), 1, all), ])

        ids <- append(ids, i)
        nobs <- append(nobs, nrows)
    }
    
    allData <- data.frame(id = ids, nobs = nobs)
    allData
}