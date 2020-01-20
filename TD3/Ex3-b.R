rm(list = ls(all = TRUE))
p = 20
N =c()
L =c()
for (n in 1:p){
  i = floor(runif(1, min= 1, max = n))
  M <- matrix(data = (i + i - 1)^(-1), nrow = i, ncol=i)^n
  N = c(N, det(M))
  L = c(L, log(det(M)))
  }
{
  plot(1:p, N, "l")
  
  plot(1:p, L, "l")
}

