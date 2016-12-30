##Tidy data for 'Human Activity Recognition Using Smartphones Data Set'

| Variable Name | Description   |
| ------------- |:--------------|
|Subject        | The subject who performed the activity for each window sample. Its range is from 1 to 30. Coming from train\subject_train.txt and test\subject_test.txt |
|Activity       | Activity name. Coming from train\y_train.txt and test\y_test.txt, and transform by the data in activity_labels.txt.|
|tBodyAcc-mean-X| Get the avarage value of body acceleration signal in X-axial, than compute the avarage value by Subject and Activity. |
|tBodyAcc-mean-Y| Y-axial, other like up.|
|tBodyAcc-mean-Z| Z-axial, other like up.|
|tBodyAcc-std-X | Get the standard deviation value of body acceleration signal in X-axial, than compute the standard deviation value by Subject and Activity. |
|tBodyAcc-std-Y | Y-axial, other like up.|
|tBodyAcc-std-Z | Z-axial, other like up.|
|tGravityAcc-mean-X | Get the avarage value of gravity acceleration signal in X-axial, than compute the avarage value by Subject and Activity.  | 
 | tGravityAcc-mean-Y  |  Y-axial, other like up. | 
 | tGravityAcc-mean-Z  |  Z-axial, other like up. | 
 | tGravityAcc-std-X  |  Get the standard deviation value of gravity acceleration signal in X-axial, than compute the standard deviation value by Subject and Activity.  | 
 | tGravityAcc-std-Y  |  Y-axial, other like up. | 
 | tGravityAcc-std-Z  |  Z-axial, other like up. | 
 | tBodyAccJerk-mean-X  |  Get the avarage value of  body acceleration Jerk signal in X-axial, than compute the avarage value by Subject and Activity. |
 | tBodyAccJerk-mean-Y  | Y-axial, other like up. | 
 | tBodyAccJerk-mean-Z  |  Z-axial, other like up. | 
 | tBodyAccJerk-std-X |  Get the avarage value of body acceleration Jerk signal in X-axial, than compute the standard deviation value by Subject and Activity.
 | tBodyAccJerk-std-Y  |  Y-axial, other like up. | 
 | tBodyAccJerk-std-Z  |  Z-axial, other like up. | 
 | tBodyGyro-mean-X |  Get the avarage value of the gyro's angular velocity in X-axial, than compute the mean value by Subject and Activity. |
 | tBodyGyro-mean-Y  |  Y-axial, other like up. | 
 | tBodyGyro-mean-Z  |  Z-axial, other like up. | 
 | tBodyGyro-std-X | Get the avarage value of the gyro's angular velocity in X-axial, than compute the standard deviation value by Subject and Activity. |
 | tBodyGyro-std-Y  |  Y-axial, other like up. | 
 | tBodyGyro-std-Z  |  Z-axial, other like up. | 
 | tBodyGyroJerk-mean-X | Get the avarage value of the gyro's angular velocity Jerk signal in X-axial, than compute the mean value by Subject and Activity. |
 | tBodyGyroJerk-mean-Y  |  Y-axial, other like up. | 
 | tBodyGyroJerk-mean-Z   |  Z-axial, other like up. | 
 | tBodyGyroJerk-std-X | Get the avarage value of the gyro's angular velocity Jerk signal in X-axial, than compute the standard deviation value by Subject and Activity. |
 | tBodyGyroJerk-std-Y |  Y-axial, other like up. | 
 | tBodyGyroJerk-std-Z  |  Z-axial, other like up. | 
 | tBodyAccMag-mean | Get the magnitude of body acceleration three-dimensional signals using Euclidean norm, than compute the mean value by Subject and Activity. |
 | tBodyAccMag-std | Get the magnitude of body acceleration three-dimensional signals using Euclidean norm, than compute the standard deviation value by Subject and Activity. |
 | tGravityAccMag-mean | Get the magnitude of gravity acceleration three-dimensional signals using Euclidean norm, than compute the mean value by Subject and Activity. |
 | tGravityAccMag-std| Get the magnitude of gravity acceleration three-dimensional signals using Euclidean norm, than compute the standard deviation value by Subject and Activity. |
 | tBodyAccJerkMag-mean| Get the magnitude of body acceleration three-dimensional Jerk signals using Euclidean norm, than compute the mean value by Subject and Activity. |
 | tBodyAccJerkMag-std| Get the magnitude of body acceleration three-dimensional Jerk signals using Euclidean norm, than compute the standard deviation value by Subject and Activity. |
 | tBodyGyroMag-mean| Get the magnitude of gyro's angular velocity three-dimensional signals using Euclidean norm, than compute the mean value by Subject and Activity. |
 | tBodyGyroMag-std| Get the magnitude of gyro's angular velocity three-dimensional signals using Euclidean norm, than compute the standard deviation value by Subject and Activity. |
 | tBodyGyroJerkMag-mean| Get the magnitude of gyro's angular velocity three-dimensional Jerk signals using Euclidean norm, than compute the mean value by Subject and Activity. |
 | tBodyGyroJerkMag-std| Get the magnitude of gyro's angular velocity three-dimensional Jerk signals using Euclidean norm, than compute the standard deviation value by Subject and Activity. |
 | fBodyAcc-mean-X |  Fast Fourier Transform used, other like tBodyAcc-mean-X. |
 | fBodyAcc-mean-Y |  Y-axial, other like up. | 
 | fBodyAcc-mean-Z  |  Z-axial, other like up. | 
 | fBodyAcc-std-X |  Fast Fourier Transform used, other like tBodyAcc-std-X. |
 | fBodyAcc-std-Y |  Y-axial, other like up. | 
 | fBodyAcc-std-Z  |  Z-axial, other like up. | 
 | fBodyAccJerk-mean-X |  Fast Fourier Transform used, other like tBodyAccJerk-mean-X. |
 | fBodyAccJerk-mean-Y |  Y-axial, other like up. | 
 | fBodyAccJerk-mean-Z  |  Z-axial, other like up. | 
 | fBodyAccJerk-std-X |  Fast Fourier Transform used, other like tBodyAccJerk-std-X. |
 | fBodyAccJerk-std-Y |  Y-axial, other like up. | 
 | fBodyAccJerk-std-Z  |  Z-axial, other like up. | 
 | fBodyGyro-mean-X |  Fast Fourier Transform used, other like tBodyGyro-mean-X. |
 | fBodyGyro-mean-Y |  Y-axial, other like up. | 
 | fBodyGyro-mean-Z  |  Z-axial, other like up. | 
 | fBodyGyro-std-X |  Fast Fourier Transform used, other like tBodyGyro-std-X. |
 | fBodyGyro-std-Y |  Y-axial, other like up. | 
 | fBodyGyro-std-Z  |  Z-axial, other like up. | 
 | fBodyAccMag-mean|  Fast Fourier Transform used, other like tBodyAccMag-mean. |
 | fBodyAccMag-std|  Fast Fourier Transform used, other like tBodyAccMag-std. |
 | fBodyBodyAccJerkMag-mean|  Fast Fourier Transform used, other like tBodyBodyAccJerkMag-mean. |
 | fBodyBodyAccJerkMag-std|  Fast Fourier Transform used, other like tBodyBodyAccJerkMag-std. |
 | fBodyBodyGyroMag-mean|  Fast Fourier Transform used, other like tBodyBodyGyroMag-mean. |
 | fBodyBodyGyroMag-std|  Fast Fourier Transform used, other like tBodyBodyGyroMag-std. |
 | fBodyBodyGyroJerkMag-mean|  Fast Fourier Transform used, other like tBodyBodyGyroJerkMag-mean. |
 | fBodyBodyGyroJerkMag-std|  Fast Fourier Transform used, other like tBodyBodyGyroJerkMag-std. |
