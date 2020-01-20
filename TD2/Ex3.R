rm(list = ls(all = TRUE))

n<-500

for (i in 2:n){
  M = runif(i^2)
  N <- matrix(data = M, row = i, col = i)
  tic <- proc.time() #start the clock
  res <- solve(N)
  tac <- proc.time()-tic  #stop the colck
  temps <- c(temps,anumeric (tac[3]))
}

