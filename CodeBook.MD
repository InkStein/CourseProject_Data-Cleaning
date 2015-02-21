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
1. First ordered list item
2. Another item
⋅⋅* Unordered sub-list. 
1. Actual numbers don't matter, just that it's a number
⋅⋅1. Ordered sub-list
4. And another item.

1.tBodyAcc-mean()-X
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Units:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Axis: X
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Statistical Summary: Mean
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Description: Body Linear Acceleration

*tBodyAcc-mean()-Y
*tBodyAcc-mean()-Z
*tBodyAcc-std()-X
*tBodyAcc-std()-Y
*tBodyAcc-std()-Z
*tGravityAcc-mean()-X
*tGravityAcc-mean()-Y
*tGravityAcc-mean()-Z
*tGravityAcc-std()-X
*tGravityAcc-std()-Y
*tGravityAcc-std()-Z
*tBodyAccJerk-mean()-X
*tBodyAccJerk-mean()-Y
*tBodyAccJerk-mean()-Z
*tBodyAccJerk-std()-X
*tBodyAccJerk-std()-Y
*tBodyAccJerk-std()-Z
*tBodyGyro-mean()-X
*tBodyGyro-mean()-Y
*tBodyGyro-mean()-Z
*tBodyGyro-std()-X
*tBodyGyro-std()-Y
*tBodyGyro-std()-Z
*tBodyGyroJerk-mean()-X
*tBodyGyroJerk-mean()-Y
*tBodyGyroJerk-mean()-Z
*tBodyGyroJerk-std()-X
*tBodyGyroJerk-std()-Y
*tBodyGyroJerk-std()-Z
*tBodyAccMag-mean()
*tBodyAccMag-std()
*tGravityAccMag-mean()
*tGravityAccMag-std()
*tBodyAccJerkMag-mean()
*tBodyAccJerkMag-std()
*tBodyGyroMag-mean()
*tBodyGyroMag-std()
*tBodyGyroJerkMag-mean()
*tBodyGyroJerkMag-std()
*fBodyAcc-mean()-X
*fBodyAcc-mean()-Y
*fBodyAcc-mean()-Z
*fBodyAcc-std()-X
*fBodyAcc-std()-Y
*fBodyAcc-std()-Z
*fBodyAcc-meanFreq()-X
*fBodyAcc-meanFreq()-Y
*fBodyAcc-meanFreq()-Z
*fBodyAccJerk-mean()-X
*fBodyAccJerk-mean()-Y
*fBodyAccJerk-mean()-Z
*fBodyAccJerk-std()-X
*fBodyAccJerk-std()-Y
*fBodyAccJerk-std()-Z
*fBodyAccJerk-meanFreq()-X
*fBodyAccJerk-meanFreq()-Y
*fBodyAccJerk-meanFreq()-Z
*fBodyGyro-mean()-X
*fBodyGyro-mean()-Y
*fBodyGyro-mean()-Z
*fBodyGyro-std()-X
*fBodyGyro-std()-Y
*fBodyGyro-std()-Z
*fBodyGyro-meanFreq()-X
*fBodyGyro-meanFreq()-Y
*fBodyGyro-meanFreq()-Z
*fBodyAccMag-mean()
*fBodyAccMag-std()
*fBodyAccMag-meanFreq()
*fBodyBodyAccJerkMag-mean()
*fBodyBodyAccJerkMag-std()
*fBodyBodyAccJerkMag-meanFreq()
*fBodyBodyGyroMag-mean()
*fBodyBodyGyroMag-std()
*fBodyBodyGyroMag-meanFreq()
*fBodyBodyGyroJerkMag-mean()
*fBodyBodyGyroJerkMag-std()
*fBodyBodyGyroJerkMag-meanFreq()
*angle(tBodyAccMean,gravity)
*angle(tBodyAccJerkMean),gravityMean)
*angle(tBodyGyroMean,gravityMean)
*angle(tBodyGyroJerkMean,gravityMean)
*angle(X,gravityMean)
*angle(Y,gravityMean)
*angle(Z,gravityMean)
