library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleControlsPopulation.csv"
filename <- basename(url)
download(url, destfile=filename)
x <- unlist( read.csv(filename) )
set.seed(1, sample.kind="Rounding")
vector <- numeric(0)
for(i in 1:1000){
  vector <- c(vector, mean(sample(x,5)))
}
paste("Exercise #1: ",length(which(abs(vector - mean(x)) > 1))/1000)
set.seed(1, sample.kind="Rounding")
vector <- numeric(0)
for(i in 1:10000){
  vector <- c(vector, mean(sample(x,5)))  
}
paste("Exercise #2: ",length(which(abs(vector - mean(x)) > 1))/10000)
set.seed(1, sample.kind="Rounding")
vector <- numeric(0)
for(i in 1:1000){
  vector <- c(vector, mean(sample(x,50)))  
}
paste("Exercise #3: ",length(which(abs(vector - mean(x)) > 1))/1000)
