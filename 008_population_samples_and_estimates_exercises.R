library(downloader)
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/mice_pheno.csv"
filename <- basename(url)
download(url, destfile=filename)
dat <- read.csv(filename)
dat <- na.omit(dat)
x <- filter(dat, Sex=="M") %>% filter(Diet=="chow") %>% select(Bodyweight) %>% unlist
paste("Exercise #1: ", mean(x))
install.packages("rafalib")
library(rafalib)
paste("Exercise #2: ", popsd(x))
set.seed(1, sample.kind="Rounding")
X <- sample(x, 25)
paste("Exercise #3: ", mean(X))
y <- filter(dat, Sex=="M") %>% filter(Diet=="hf") %>% select(Bodyweight) %>% unlist
paste("Exercise #4: ", mean(y))
paste("Exercise #5: ", popsd(y))
set.seed(1, sample.kind="Rounding")
Y <- sample(y, 25)
paste("Exercise #6: ", mean(Y))
paste("Exercise #7: ", abs((mean(y)-mean(x))-(mean(Y)-mean(X))))

x <- filter(dat, Sex=="F") %>% filter(Diet=="chow") %>% select(Bodyweight) %>% unlist
set.seed(1, sample.kind="Rounding")
X <- sample(x, 25)
y <- filter(dat, Sex=="F") %>% filter(Diet=="hf") %>% select(Bodyweight) %>% unlist
set.seed(1, sample.kind="Rounding")
Y <- sample(y, 25)
paste("Exercise #8: ", abs((mean(y)-mean(x))-(mean(Y)-mean(X))))