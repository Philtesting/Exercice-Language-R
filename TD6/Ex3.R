rm(list = ls(all = TRUE))
f=function(x){
  (1-x^2)^(-1/2)
  }
simps=function(f,n){
  s=0
  for(k in 0:(n-1)){
    s=s+(1/(6*n))*(f(k/n)+4*f((2*k+1)/(2*n))+f((k+1)/n))
    
  }
  return(s)
}
  
x = simps(f,100)
x