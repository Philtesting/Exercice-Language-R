#pour verifier qu'un nb est premier il faut voir si les nb inferieur ou égaux a sa sqrt sont des diviseur ou non
rm(list = ls(all = TRUE))
x <- as.numeric(readline("Donné moi un chiffre: "))
res<- rep(x, floor(sqrt(x))-1)

if (!0 %in% (res%%(2:floor(sqrt(x)))))    # %% = c'est le modulo
  print("ce nb est premier")

else 
  print("ce nb est non premier")
