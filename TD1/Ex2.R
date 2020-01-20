#une suite logistique est une suite simple, mais dont la récurrence n'est pas linéaire.



rm(list = ls(all = TRUE))
#Crée un vecteur x

x <- as.numeric(readline("Point d'initialisation: "))

for(n in 1:10^5){
  x = 4 * x[n]* (1-x[n])
}

#Présenter cette ligne avant le reste
plot(x[-length(x)], x[-1])
#Cela represente une parabole qui passe par tout les points d'absisse 0 et 1.
#Indice de vecteur:
# x[n] n^eme element 
# x[-n] tous sauf n^eme element
# x[1:n] de 1 à n
# x[-(1:n)] de n+1 à la fin
# x[c(1,4,8)] des élément specifique 