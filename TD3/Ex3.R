rm(list = ls(all = TRUE))
n=3;
a=1:n; 
M=matrix(0,n,n)

for(i in 1:n){
 for(j in 1:n){
  M[i,j]=(a[i]+a[j]-1)^-1
 }
}

M

f <- function(n){
  a=1:n; 
  M=matrix(0,n,n);
  for(i in 1:n) for(j in 1:n) M[i,j]=(a[i]+a[j]-1)^-1
  return(M)
}

f(8)

n=20
detM=sapply(2:n, function(i) det(f(i)));

summary(detM)

an=2:n 

plot(an,detM,pch='*');
logM=lm(log(detM)~log(an));

summary(logM)

plot(log(an),log(detM))
abline(logM)