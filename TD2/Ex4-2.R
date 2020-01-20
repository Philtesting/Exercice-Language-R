rm(list = ls(all = TRUE))
temps<-c()
n<-500

#calculer l'inverse de la matrice m
for(i in 2:n){
  
  M=runif(i^2)
  N<-matrix(data = M, nrow = i, ncol=i)
  N <- N%*%t(N)
  tic<-proc.time()
  res<-chol2inv(N)        #start the clock
  tac<-proc.time()-tic #stop the clock
  
  temps<-c(temps,as.numeric(tac[3]))
}
{
  plot (2:n,log(temps))   # montrer sur un petit espace une large gamme de valeur 
  lines(2:n/150-5.5)
}

#cette methode est plus rapide que solve