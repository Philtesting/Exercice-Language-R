
rm(list = ls(all = TRUE))

n = 10^3
w = 1

for(i in 1:n){
  w[i+1] = 0.5 * w[i] + 1/w[i]
}
w

#on definie le reste

r = abs(w  - sqrt(2))

pos = min(which(r<10^(-10)))
pos
plot (1:n, log(r[-1]), "l")