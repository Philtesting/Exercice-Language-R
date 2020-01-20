rm(list = ls(all = TRUE))
pseudo1 <- function(x){
  return (3 * x%%10)
}
x = c()
x[1] = 0
for (n in 1:20){
  x[n+1] = pseudo1(x[n])
}