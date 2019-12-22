install.packages("gapminder")
library(gapminder)
data(gapminder)
head(gapminder)
data <- gapminder
x <- data[data$year == 1952,]$lifeExp
hist(x)
paste("Exercise #1: ", mean(x<=40))
paste("Exercise #2: ", mean(x<=60) - mean(x<=40))
prop = function(q) {
  mean(x <= q)
}
qs = seq(from=min(x), to=max(x), length=20)
props = sapply(qs, prop)
plot(qs, props)
plot(ecdf(x))
