library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleControlsPopulation.csv"
filename <- basename(url)
download(url, destfile=filename)
x <- unlist( read.csv(filename) )
set.seed(1, sample.kind="Rounding")
avg_5 <- numeric()
avg_50 <- numeric()
for(i in 1:1000){
  avg_5 <- c(avg_5, mean(sample(x,5)))
  avg_50 <- c(avg_50, mean(sample(x,50)))
}
hist(avg_5)
hist(avg_50)
paste("Exercise #1: They both look roughly normal, but with a sample size of 50 the spread is smaller.")
paste("Exercise #2: ", mean(avg_50 <= 25)-mean(avg_50 <= 23))
paste("Exercise #3: ", mean(rnorm(1000, 23.9, 0.43) <= 25)-mean(rnorm(1000, 23.9, 0.43) <= 23))
