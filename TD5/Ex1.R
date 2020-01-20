rm(list = ls(all = TRUE))
x = 0
x = seq(0, 1, 0.01) 
y = sin(2*x)-x
  {
    plot(x,y)
    abline(h=0)
  }
which(abs(y[-1]) < 10^-1)
x[which(abs(y[-1]) < 10^-1)]