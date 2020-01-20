rm(list = ls(all = TRUE))
n = 4
x = runif(n,0,1)
res = c()
for (i in 1:n) {
  if ( x[i] >= 1/4 ){ x[i] = 0 }
  else { x[i] = 1 }
}
x

rbinom(4,1,1/2)