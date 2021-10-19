library(tidyverse) 

# selection des variables 
mtcars_num <- mtcars %>% 
  dplyr::select(mpg,disp:qsec) 

str(mtcars_num)
mtcars_num_sc <- scale(mtcars_num)
str(mtcars_num_sc)

km.out2 = kmeans(mtcars_num_sc,centers=2,nstart =20) 
km.out2$cluster

library(factoextra)
fviz_cluster(km.out2, mtcars_num_sc, ellipse.type = "norm") 