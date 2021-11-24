# test de base de l'algo KMEANS
library(tidyverse) 

# selection des variables 
mtcars_num <- mtcars %>% 
  dplyr::select(mpg,disp:qsec) 

str(mtcars_num)
# la réalisation du kmeans demande de faire la mise à l'échelle des données
mtcars_num_sc <- scale(mtcars_num)
str(mtcars_num_sc)

# lancement de l algorithme en définissant 3 centres de depart avec 2
km.out3 = kmeans(mtcars_num_sc,centers=3,nstart =20) 
km.out3$cluster

library(factoextra)
# affichage de la selection des elements
fviz_cluster(km.out3, mtcars_num_sc, ellipse.type = "norm") 
# denombrement des elements par cluster
table(km.out3$cluster)

#test commentaire
