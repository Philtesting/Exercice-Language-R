n=5; 
v=1:n;
h=matrix(0,n,n);
for(i in 1:n){ 
  for(j in 1:n){
    h[i,j]=(v[i]+v[j]-1)^-1
  }
}
h