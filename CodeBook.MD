##Study Design
Conducted by Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz, and published to the UCI Machine Learning Repository. The study focused on compiling accelerometer and gyroscopic data and translate them into known human activities.

Consisting of 30 volunteers (ages 19 to 48), 6 activities were performed (Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, and Laying) while collecting accelerometer and gryoscopic data from Samsung Galaxy S II smartphones. Data collected is listed in greater detail under the "Variables" section.


Additional information, details, and data can be found at the following link: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones



##Data Clean Up Description
Individual files from the project were imported into R. These files include activity_labels.txt, features.txt, subject_test.txt, X_test.txt, y_test.txt, subject_train.txt, X_train.txt, and y_train.txt.

Data from y_test.txt and X_test.txt were merged using cbind(), the resulting data.frame was then merged with subject_test.txt using cbind() as well.

Data from y_train.txt and X_train.txt were merged using cbind(). The resulting data.frame was then merged with subject_train.txt using cbind() as well.

The activity id numbers from the y_test.txt and y_train.txt were then matched to the key in activity_labels.txt - allowing for a new column to be created with description activity labels.

Descriptive column names were then added, changing from R's default "Vx" labeling, to descriptive names provided by the study itself. The column names by the study creators were used, as they are not adequately detailed in the original study for someone unfamiliar with the project to rename appropriately and accurately. Contacting the study creators would be ideal before renaming. At which time, a key file can be created between the current labels and the more descriptive replacements.

Column labels containing "Mean", "mean" or "std" were selected to be included in the file data.frame for analysis. As the nuance of which "mean" was needed was not specified, it was the judgement of this student to include all so that it would be easier to drop unwanted columns later rather than to pull in columns missed from earlier steps. These columns were selected using a regex expression to do the matching and minimize human error in missing a column.

A final data.frame was written to "tidy.txt". It contains the average values of each column by participating subject (all 30) and activity. 

Exact R Scripting used, as well as per line comments are included in the "run_analysis.R" file.


##Variable Details 
### (86 total)

tBodyAcc-mean()-X
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration

tBodyAcc-mean()-Y
  * Units:
  * Axis: Y
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
tBodyAcc-mean()-Z
  * Units:
  * Axis: Z
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
tBodyAcc-std()-X
  * Units:
  * Axis: X
  * Statistical Summary: Standard Deviation
  * Description: Body Linear Acceleration
  
tBodyAcc-std()-Y
  * Units:
  * Axis: Y
  * Statistical Summary: Standard Deviation
  * Description: Body Linear Acceleration
  
tBodyAcc-std()-Z
  * Units:
  * Axis: Z
  * Statistical Summary: Standard Deviation
  * Description: Body Linear Acceleration

tGravityAcc-mean()-X
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration

tGravityAcc-mean()-Y
  * Units:
  * Axis: Y
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
tGravityAcc-mean()-Z
  * Units:
  * Axis: Z
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
tGravityAcc-std()-X
  * Units:
  * Axis: X
  * Statistical Summary: Standard Deviation
  * Description: Body Linear Acceleration

tGravityAcc-std()-Y
  * Units:
  * Axis: Y
  * Statistical Summary: Standard Deviation
  * Description: Body Linear Acceleration
  
tGravityAcc-std()-Z
  * Units:
  * Axis: Z
  * Statistical Summary: Standard Deviation
  * Description: Body Linear Acceleration
  
tBodyAccJerk-mean()-X
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration

tBodyAccJerk-mean()-Y
  * Units:
  * Axis: Y
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration

tBodyAccJerk-mean()-Z
  * Units:
  * Axis: Z
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration

tBodyAccJerk-std()-X
  * Units:
  * Axis: X
  * Statistical Summary: Standard Deviation
  * Description: Body Linear Acceleration

tBodyAccJerk-std()-Y
  * Units:
  * Axis: Y
  * Statistical Summary: Standard Deviation
  * Description: Body Linear Acceleration

tBodyAccJerk-std()-Z
  * Units:
  * Axis: Z
  * Statistical Summary: Standard Deviation
  * Description: Body Linear Acceleration
  
tBodyGyro-mean()-X
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Angular Velocity
  
tBodyGyro-mean()-Y
  * Units:
  * Axis: Y
  * Statistical Summary: Mean
  * Description: Angular Velocity
  
tBodyGyro-mean()-Z
  * Units:
  * Axis: Z
  * Statistical Summary: Mean
  * Description: Angular Velocity
  
tBodyGyro-std()-X
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Angular Velocity
  
tBodyGyro-std()-Y
  * Units:
  * Axis: Y
  * Statistical Summary: Standard Deviation
  * Description: Angular Velocity
  
  ## RESUME HERE
*tBodyGyro-std()-Z
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration

*tBodyGyroJerk-mean()-X
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
*tBodyGyroJerk-mean()-Y
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
*tBodyGyroJerk-mean()-Z
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
*tBodyGyroJerk-std()-X
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
*tBodyGyroJerk-std()-Y
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
*tBodyGyroJerk-std()-Z
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
*tBodyAccMag-mean()
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
*tBodyAccMag-std()
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
*tGravityAccMag-mean()
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
*tGravityAccMag-std()
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
*tBodyAccJerkMag-mean()
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
*tBodyAccJerkMag-std()
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
*tBodyGyroMag-mean()
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
*tBodyGyroMag-std()  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
*tBodyGyroJerkMag-mean()
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
*tBodyGyroJerkMag-std()
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
*fBodyAcc-mean()-X
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
*fBodyAcc-mean()-Y
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
*fBodyAcc-mean()-Z
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration

*fBodyAcc-std()-X
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration

*fBodyAcc-std()-Y
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration

*fBodyAcc-std()-Z
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration

*fBodyAcc-meanFreq()-X
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyAcc-meanFreq()-Y
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
*fBodyAcc-meanFreq()-Z
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyAccJerk-mean()-X
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration

fBodyAccJerk-mean()-Y
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyAccJerk-mean()-Z
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyAccJerk-std()-X
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyAccJerk-std()-Y
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyAccJerk-std()-Z
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyAccJerk-meanFreq()-X
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyAccJerk-meanFreq()-Y
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyAccJerk-meanFreq()-Z
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyGyro-mean()-X
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyGyro-mean()-Y
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyGyro-mean()-Z
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyGyro-std()-X
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyGyro-std()-Y
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyGyro-std()-Z
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyGyro-meanFreq()-X
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyGyro-meanFreq()-Y
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyGyro-meanFreq()-Z
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyAccMag-mean()
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyAccMag-std()
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyAccMag-meanFreq()
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyBodyAccJerkMag-mean()
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyBodyAccJerkMag-std()
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyBodyAccJerkMag-meanFreq()
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyBodyGyroMag-mean()
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyBodyGyroMag-std()
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyBodyGyroMag-meanFreq()
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyBodyGyroJerkMag-mean()
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyBodyGyroJerkMag-std()
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
fBodyBodyGyroJerkMag-meanFreq()
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
angle(tBodyAccMean,gravity)
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
angle(tBodyAccJerkMean),gravityMean)
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
angle(tBodyGyroMean,gravityMean)
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
angle(tBodyGyroJerkMean,gravityMean)
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
angle(X,gravityMean)
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
angle(Y,gravityMean)
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
  
angle(Z,gravityMean)
  * Units:
  * Axis: X
  * Statistical Summary: Mean
  * Description: Body Linear Acceleration
