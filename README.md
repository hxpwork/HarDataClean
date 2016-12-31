#   Clean and get tidy data from 'Human Activity Recognition Using Smartphones Dataset'
##
## 1 Merges the training and the test sets to create one data set.
>  library(dplyr)  
>  train <- read.table("train\\X_train.txt")  
>  test <- read.table("test\\X_test.txt")  
>  dataset <- rbind(train, test) %>% tbl_df()  
`
