I=numeric()
I[1]=log(10/9)
for(n in 1:20){
  I[n+1]=10*I[n]-1/n
  }
I
plot(1:16,I[1:16])
lines(1:16,1/(9*(1:16)))
lines(1:16,1/(10*(1:16)))
plot(1:16,log(I[1:16]))


J=numeric()
J[1]=log(10/9)+1e-15
for(n in 1:20) {
  J[n+1]=10*J[n]-1/n
  }
ecart=abs(I-J); 
summary(ecart)
plot(1:16,ecart[1:16],pch='*')

.Machine$double.eps

#prouve que In  
