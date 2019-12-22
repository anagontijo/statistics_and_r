paste("Exercise #1: 3.6.1")
paste("Exercise #2: ", mean(c(2.23, 3.45, 1.87, 2.11, 7.33, 18.34, 19.23)))
results <- 0
for(i in 1:25){
  results <- results + i^(2)
}
paste("Exercise #3: ", results)
paste("Exercise #4: ", class(cars))
paste("Exercise #5: ", nrow(cars))
paste("Exercise #6: ",colnames(cars)[2])
paste("Exercise #7: ", mean(cars[,2]))
paste("Exercise #8: ", which(cars$dist == 85))