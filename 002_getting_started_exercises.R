library(downloader)
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleMiceWeights.csv"
filename <- "femaleMiceWeights.csv"
download(url, destfile=filename)
data <- read.csv(filename)

paste("Exercise #1: ",colnames(data)[2])
paste("Exercise #2: ", data[12,2])
paste("Exercise #3: ", data$Bodyweight[11])
paste("Exercise #4: ", length(data$Diet))
paste("Exercise #5: ", mean(data[data$Diet == "hf",]$Bodyweight)
)
set.seed(1, sample.kind = "Rounding")
paste("Exercise #6: ", data$Bodyweight[sample(13:24,1)])
