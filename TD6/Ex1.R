rm(list = ls(all = TRUE))
f <- function(x){
  res=exp(-0.5*x^2)
  return(res)
}

rectangle <- function(h,n){
  graH <- function(x){return(-x*h(x))}
  val <- seq(0,1,length=100);
  m1=max(abs(graH(val)));m=m1/(2*n)
  t=(0:(n-1))/n
  I0=(1/n)*sum(h(t))
  res=list(I=I0,error=m)
  return(res)
}

rectangle(h=f,n=10^2)
rectangle(h=f,n=10^6)











Napprox.rec <- function(h,a,b,ap){
  graH <- function(x){return(-x*h(x))}
  t <- seq(a,b,length=100);
  m1=max(abs(graH(t))); l=.5*(b-a)^2
  m=m1*l
  n=0; aproxi=ap+1
  while(aproxi>ap){
    n=n+1;aproxi=m/n
  }
  return(n)
}

n=Napprox.rec(h=f,a=0,b=1,ap=1e-5); n
rectangle(h=f,n=n)

Napprox.rec(h=f,a=0,b=1,ap=1e-15)