rm(list = ls(all = TRUE))
a = 0.5
b = 1.5
n = 1
crit = TRUE
pt = (a+b)/2

f1 = function(x){
  sin(2*x)-x
}
while (crit == TRUE) {
  if (f1 (a) * f1(pt) < 0 ){
    b = pt
  }
  if (f1 (b) * f1 (pt) < 0){
    a = pt
  }
  pt = (a+b)/2
  n = n + 1
  if(abs(b-a) < 10^(-10)){
    crit =FALSE
  }
}
n

