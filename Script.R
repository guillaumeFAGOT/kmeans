library(tidyverse) 

# selection des variables 
mtcars_num <- mtcars %>% 
  dplyr::select(mpg,disp:qsec) 

str(mtcars_num)
mtcars_num_sc <- scale(mtcars_num)
str(mtcars_num_sc)

km.out3 = kmeans(mtcars_num_sc,centers=3,nstart =20) 
km.out3$cluster

library(factoextra)
fviz_cluster(km.out3, mtcars_num_sc, ellipse.type = "norm") 
table(km.out3$cluster)

#test commentaire