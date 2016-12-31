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

## 3 Uses descriptive activity names to name the activities in the data set
\# create the subject column  
>  trainSubject <- read.table("train\\subject_train.txt")  
>  testSubject <- read.table("test\\subject_test.txt")  
>  subject <- rbind(trainSubject, testSubject)  

\# create the activity name column, after read the number of activity to the variable label,   
\# change it to the description by the definition in activity_labes.txt, and save to the variable actName  
>  trainLabel <- read.table("train\\y_train.txt")  
>  testLabel <- read.table("test\\y_test.txt")  
>  actLabel <- read.table("activity_labels.txt")  
>  label <- rbind(trainLabel, testLabel)  
>  actName <- sapply(label,function(code){ actLabel$V2[as.numeric(code)]})  

\# combine subject and activiy name with the measurement by column
>  actMeanStd <- cbind(subject, actName, meanstd) 

## 4 Appropriately labels the data set with descriptive variable names
\# use regular expression to identify the mean or standard deviation measurements  
\# save the name of these measurements to the variable actFields  
\# create subject and activity name vector to the variable groupFields
\# use groupFields and actFields to set descriptive variable names for groupFields
>  actFields <- gsub("\\(\\)","",features$desc[grep("(mean|std)\\(", features$desc)])  
>  groupFields <- c("Subject", "Activity")  
>  names(actMeanStd) <- c( groupFields, actFields )  

## 5 From the data set in step 4, creates a second, 
## independent tidy data set with the average of each variable for each activity and each subject.
>  final <- aggregate(actMeanStd[actFields], by = actMeanStd[groupFields], FUN=mean)
>  write_csv(final, "final.csv")  
