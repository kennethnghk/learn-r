pollutantmean <- function(directory, pollutant, id=1:332) {
    
    allData <- c()
    
    for (i in id) {
        fileName <- file.path(directory, paste(sprintf("%.3d", i), '.csv', sep=''))
        statData <- read.csv(fileName)
        pollutantColData <- statData[[pollutant]]
        #naValues <- is.na(pollutantColData)
        #pollutantColData <- pollutantColData[!naValues]
        #fileMean <- mean(pollutantColData, na.rm = TRUE)
        allData <- append(allData, pollutantColData)
    }
    
    mean(allData, na.rm = TRUE)
}