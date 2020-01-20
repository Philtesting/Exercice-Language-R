rm(list = ls(all = TRUE))
f <- function(x){
  res=exp(-0.5*x^2)
  return(res)
}
trapeze <- function(h,n){
  t=0:(n-1); t1=t+1
  res=(1/(2*n))*(sum(h(t/n))+sum(h(t1/n)))
  return(res)
}

trapeze(h=f,n=100)
trapeze(h=f,n=10^7)

#plus fiable, plus precise, plus rapide