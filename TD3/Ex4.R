rm(list = ls(all = TRUE))

n = 10
A = matrix(0,n,n)
for(i in 1:n){
  for(j in 1:n){
    if(i == j){
      A[i,j]=1
    } 
   else if (i == j+1){
      A[i,j]=1
    }
    else
      A[i,j]=0
  }
}  
norm(A)
kappa(A); 3*(2^n-1)
rcond(A); 3*(2^n-1)