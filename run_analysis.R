
##
#   Clean and get tidy data from 'Human Activity Recognition Using Smartphones Dataset'
#
#
##

## 1 Merges the training and the test sets to create one data set.
library(dplyr)
train <- read.table("train\\X_train.txt")
test <- read.table("test\\X_test.txt")
dataset <- rbind(train, test) %>% tbl_df()

## 2 Extracts only the measurements on the mean and standard deviation for each measurement.
##      1st: read the meaning of each measure from features.txt
##      2nd: get the mean and standard deviation's index by mean() and std()
##      3rd: extract the mean and standard deviation data
features <- read.table("features.txt")
names(features) <- c("col","desc")
meanstd <- dataset[,features$col[grep("(mean|std)\\(", features$desc)]]

## 3 Uses descriptive activity names to name the activities in the data set
trainLabel <- read.table("train\\y_train.txt")
trainSubject <- read.table("train\\subject_train.txt")
testLabel <- read.table("test\\y_test.txt")
testSubject <- read.table("test\\subject_test.txt")
actLabel <- read.table("activity_labels.txt")
label <- rbind(trainLabel, testLabel)
actName <- sapply(label,function(code){ actLabel$V2[as.numeric(code)]})
subject <- rbind(trainSubject, testSubject)
actMeanStd <- cbind(subject, actName, meanstd)

## 4 Appropriately labels the data set with descriptive variable names
actFields <- gsub("\\(\\)","",features$desc[grep("(mean|std)\\(", features$desc)])
groupFields <- c("Subject", "Activity")
names(actMeanStd) <- c( groupFields, actFields )

## 5 From the data set in step 4, creates a second, 
## independent tidy data set with the average of each variable for each activity and each subject.
#actMeanStdGroup <- group_by(actMeanStd, Subject, Activity)
#summarize(actMeanStdGroup, avg=mean("tBodyAcc-mean-X":"fBodyBodyGyroJerkMag-std"))
final <- aggregate(actMeanStd[actFields], by = actMeanStd[groupFields], FUN=mean)
