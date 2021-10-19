library(tidyverse) 

# selection des variables 
mtcars_num <- mtcars %>% 
  dplyr::select(mpg,disp:qsec) 

str(mtcars_num)
mtcars_num_sc <- scale(mtcars_num)
str(mtcars_num_sc)