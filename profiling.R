## Profiling
## find out how much time to run in code

func <- function(x) {
    x + 1
}
system.time(func(4))
## user time : CPU time for running
# elapsed time : experienced time

## starts the profiler in R
Rprof()

## takes output from profiler
summaryRprof()
## $by.total
## $by.self
## $sample.interval
## $sampling.time
