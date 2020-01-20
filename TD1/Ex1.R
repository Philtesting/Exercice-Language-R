nes <- c()
for(r in (20:60/10)){
  n= 10^r
  Num <- rep(x = 1, n)
  Den <- ((1:n)^2)
  In <- Num/Den
  nes <- c(nes, sum(In))
}
plot(10^(20:60/10),nes)

Num <- rep(x = 1, 10^6)
Den <- ((1:10^6)^2)
n <- Num/Den
sum(n)