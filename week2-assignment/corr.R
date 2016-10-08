corr <- function(directory, threshold = 0) {
    subsetData <- subset(completeData, nobs > threshold)
    
    corValues <- c()
    
    for (i in subsetData$id) {
        fileName <- file.path(directory, paste(sprintf("%.3d", i), '.csv', sep=''))
        statData <- read.csv(fileName)
        statData <- statData[apply(!is.na(statData), 1, all), ]
        corValue <- cor(statData$sulfate, statData$nitrate)
        corValues <- append(corValues, corValue)
    }
    corValues
}