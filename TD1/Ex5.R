rm(list = ls(all = TRUE))
Fo <- function(x){
  f = 1/sqrt(x)-cos(x)
  return (f)
}
pos = 0.01
x = seq(from = 0,to = 10,by = pos)
plot(x,Fo(x), type="l")
abline(h=10^(-2), col="blue")

delta <- 10^(-2)
x[ which(abs(Fo(x))< delta )]
