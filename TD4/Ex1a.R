rm(list = ls(all = TRUE))

#on choist jusqu'a quel n on éxecute 
n = 10^3
#initialisation en de la suite.
u = 1
#le vecteur en trouvant tout les thermes
for(i in 1:n){
  u = c(u , (u[i]+2)/(u[i]+1))
}
u
#vecteur rn
R=abs(u - sqrt(2))
R

f <- function(x){
  r <- (x + 2) / (x + 1)
  return(r)
}

u <- function(u,n){
  res = c()
  res[0] = u
  
  for(i in 0:n){
   res[i+1] = f(res[i])
  }
  return(res)
}
u(2,10)
pos <- min(which(R < (10^-3)))
pos1 <- min(which(R < (10^-10)))
pos
pos1
plot(1:n, log(R[-1][1:n]))