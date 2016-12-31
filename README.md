#   Clean and get tidy data from 'Human Activity Recognition Using Smartphones Dataset'
##
## 1 Merges the training and the test sets to create one data set.
\# combine train and test data by row
>  library(dplyr)  
>  train <- read.table("train\\X_train.txt")  
>  test <- read.table("test\\X_test.txt")  
>  dataset <- rbind(train, test) %>% tbl_df()  
  
## 2 Extracts only the measurements on the mean and standard deviation for each measurement.
\# 1st: read the meaning of each measure from features.txt
\# 2nd: use regular expression to get the mean and standard deviation's index by mean() and std()
\# 3rd: extract the mean and standard deviation data to variable meanstd
>  features <- read.table("features.txt")
>  names(features) <- c("col","desc")
>  meanstd <- dataset[,features$col[grep("(mean|std)\\(", features$desc)]]

