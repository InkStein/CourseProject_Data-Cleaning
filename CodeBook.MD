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
##### (86 total)

_Please note, these descriptions may not be entirely accurate due to lack of field experience. Please refer to the UCI link above for more details._


**Variable**|**Axis**|**Statistical Summary**|**Description**
------------|--------|-----------------------|---------------
**tBodyAcc-mean()-X**|X|Mean|Time Domain of Body Acceleration
**tBodyAcc-mean()-Y**|Y|Mean|Time Domain of Body Acceleration
**tBodyAcc-mean()-Z**|Z|Mean|Time Domain of Body Acceleration
**tBodyAcc-std()-X**|X|Standard Deviation|Time Domain of Body Acceleration
**tBodyAcc-std()-Y**|Y|Standard Deviation|Time Domain of Body Acceleration
**tBodyAcc-std()-Z**|Z|Standard Deviation|Time Domain of Body Acceleration
**tGravityAcc-mean()-X**|X|Mean|Time Domain of Gravity Acceleration
**tGravityAcc-mean()-Y**|Y|Mean|Time Domain of Gravity Acceleration
**tGravityAcc-mean()-Z**|Z|Mean|Time Domain of Gravity Acceleration
**tGravityAcc-std()-X**|X|Standard Deviation|Time Domain of Gravity Acceleration
**tGravityAcc-std()-Y**|Y|Standard Deviation|Time Domain of Gravity Acceleration
**tGravityAcc-std()-Z**|Z|Standard Deviation|Time Domain of Gravity Acceleration
**tBodyAccJerk-mean()-X**|X|Mean|Jerk signals derived from the body linear acceleration and angular velocity of the Time Domain of Body Acceleration
**tBodyAccJerk-mean()-Y**|Y|Mean|Jerk signals derived from the body linear acceleration and angular velocity of the Time Domain of Body Acceleration
**tBodyAccJerk-mean()-Z**|Z|Mean|Jerk signals derived from the body linear acceleration and angular velocity of the Time Domain of Body Acceleration
**tBodyAccJerk-std()-X**|X|Standard Deviation|Jerk signals derived from the body linear acceleration and angular velocity of the Time Domain of Body Acceleration
**tBodyAccJerk-std()-Y**|Y|Standard Deviation|Jerk signals derived from the body linear acceleration and angular velocity of the Time Domain of Body Acceleration
**tBodyAccJerk-std()-Z**|Z|Standard Deviation|Jerk signals derived from the body linear acceleration and angular velocity of the Time Domain of Body Acceleration
**tBodyGyro-mean()-X**|X|Mean|Time Domain of Body Gyroscopic
**tBodyGyro-mean()-Y**|Y|Mean|Time Domain of Body Gyroscopic
**tBodyGyro-mean()-Z**|Z|Mean|Time Domain of Body Gyroscopic
**tBodyGyro-std()-X**|X|Standard Deviation|Time Domain of Body Gyroscopic
**tBodyGyro-std()-Y**|Y|Standard Deviation|Time Domain of Body Gyroscopic
**tBodyGyro-std()-Z**|Z|Standard Deviation|Time Domain of Body Gyroscopic
**tBodyGyroJerk-mean()-X**|X|Mean|Jerk signals derived from the body linear acceleration and angular velocity of the Time Domain of Body Gyroscopic
**tBodyGyroJerk-mean()-Y**|Y|Mean|Jerk signals derived from the body linear acceleration and angular velocity of the Time Domain of Body Gyroscopic
**tBodyGyroJerk-mean()-Z**|Z|Mean|Jerk signals derived from the body linear acceleration and angular velocity of the Time Domain of Body Gyroscopic
**tBodyGyroJerk-std()-X**|X|Standard Deviation|Jerk signals derived from the body linear acceleration and angular velocity of the Time Domain of Body Gyroscopic
**tBodyGyroJerk-std()-Y**|Y|Standard Deviation|Jerk signals derived from the body linear acceleration and angular velocity of the Time Domain of Body Gyroscopic
**tBodyGyroJerk-std()-Z**|Z|Standard Deviation|Jerk signals derived from the body linear acceleration and angular velocity of the Time Domain of Body Gyroscopic
**tBodyAccMag-mean()**|NA|Mean|Magnitude, calculated using the Euclidean norm, from Time Domain of Body Acceleration
**tBodyAccMag-std()**|NA|Standard Deviation|Magnitude, calculated using the Euclidean norm, from Time Domain of Body Acceleration
**tGravityAccMag-mean()**|NA|Mean|Magnitude, calculated using the Euclidean norm, from Time Domain of Body Acceleration
**tGravityAccMag-std()**|NA|Standard Deviation|Magnitude, calculated using the Euclidean norm, from Time Domain of Body Acceleration
**tBodyAccJerkMag-mean()**|NA|Mean|Magnitude, calculated using the Euclidean norm, from Time Domain of Body Acceleration
**tBodyAccJerkMag-std()**|NA|Standard Deviation|Magnitude, calculated using the Euclidean norm, from Time Domain of Body Acceleration
**tBodyGyroMag-mean()**|NA|Mean|Magnitude, calculated using the Euclidean norm, from Time Domain of Body Gyroscopic
**tBodyGyroMag-std()**|NA|Standard Deviation|Magnitude, calculated using the Euclidean norm, from Time Domain of Body Gyroscopic
**tBodyGyroJerkMag-mean()**|NA|Mean|Magnitude, calculated using the Euclidean norm, from Time Domain of Body Gyroscopic
**tBodyGyroJerkMag-std()**|NA|Standard Deviation|Magnitude, calculated using the Euclidean norm, from Time Domain of Body Gyroscopic
**fBodyAcc-mean()-X**|X|Mean|Fast Fourier Transformation of Body Acceleration
**fBodyAcc-mean()-Y**|Y|Mean|Fast Fourier Transformation of Body Acceleration
**fBodyAcc-mean()-Z**|Z|Mean|Fast Fourier Transformation of Body Acceleration
**fBodyAcc-std()-X**|X|Standard Deviation|Fast Fourier Transformation of Body Acceleration
**fBodyAcc-std()-Y**|Y|Standard Deviation|Fast Fourier Transformation of Body Acceleration
**fBodyAcc-std()-Z**|Z|Standard Deviation|Fast Fourier Transformation of Body Acceleration
**fBodyAcc-meanFreq()-X**|X|Mean|Fast Fourier Transformation of Body Acceleration
**fBodyAcc-meanFreq()-Y**|Y|Mean|Fast Fourier Transformation of Body Acceleration
**fBodyAcc-meanFreq()-Z**|Z|Mean|Fast Fourier Transformation of Body Acceleration
**fBodyAccJerk-mean()-X**|X|Mean|Jerk signals derived from the body linear acceleration and angular velocity of the Fast Fourier Transformation of Body Acceleration
**fBodyAccJerk-mean()-Y**|Y|Mean|Jerk signals derived from the body linear acceleration and angular velocity of the Fast Fourier Transformation of Body Acceleration
**fBodyAccJerk-mean()-Z**|Z|Mean|Jerk signals derived from the body linear acceleration and angular velocity of the Fast Fourier Transformation of Body Acceleration
**fBodyAccJerk-std()-X**|X|Standard Deviation|Jerk signals derived from the body linear acceleration and angular velocity of the Fast Fourier Transformation of Body Acceleration
**fBodyAccJerk-std()-Y**|Y|Standard Deviation|Jerk signals derived from the body linear acceleration and angular velocity of the Fast Fourier Transformation of Body Acceleration
**fBodyAccJerk-std()-Z**|Z|Standard Deviation|Jerk signals derived from the body linear acceleration and angular velocity of the Fast Fourier Transformation of Body Acceleration
**fBodyAccJerk-meanFreq()-X**|X|Mean|Jerk signals derived from the body linear acceleration and angular velocity of the Fast Fourier Transformation of Body Acceleration
**fBodyAccJerk-meanFreq()-Y**|Y|Mean|Jerk signals derived from the body linear acceleration and angular velocity of the Fast Fourier Transformation of Body Acceleration
**fBodyAccJerk-meanFreq()-Z**|Z|Mean|Jerk signals derived from the body linear acceleration and angular velocity of the Fast Fourier Transformation of Body Acceleration
**fBodyGyro-mean()-X**|X|Mean|Fast Fourier Transformation of Body Gyroscopic
**fBodyGyro-mean()-Y**|Y|Mean|Fast Fourier Transformation of Body Gyroscopic
**fBodyGyro-mean()-Z**|Z|Mean|Fast Fourier Transformation of Body Gyroscopic
**fBodyGyro-std()-X**|X|Standard Deviation|Fast Fourier Transformation of Body Gyroscopic
**fBodyGyro-std()-Y**|Y|Standard Deviation|Fast Fourier Transformation of Body Gyroscopic
**fBodyGyro-std()-Z**|Z|Standard Deviation|Fast Fourier Transformation of Body Gyroscopic
**fBodyGyro-meanFreq()-X**|X|Mean|Fast Fourier Transformation of Body Gyroscopic
**fBodyGyro-meanFreq()-Y**|Y|Mean|Fast Fourier Transformation of Body Gyroscopic
**fBodyGyro-meanFreq()-Z**|Z|Mean|Fast Fourier Transformation of Body Gyroscopic
**fBodyAccMag-mean()**|NA|Mean|Magnitude, calculated using the Euclidean norm, from Fast Fourier Transformation of Body Acceleration
**fBodyAccMag-std()**|NA|Standard Deviation|Magnitude, calculated using the Euclidean norm, from Fast Fourier Transformation of Body Acceleration
**fBodyAccMag-meanFreq()**|NA|Mean|Magnitude, calculated using the Euclidean norm, from Fast Fourier Transformation of Body Acceleration
**fBodyBodyAccJerkMag-mean()**|NA|Mean|Magnitude, calculated using the Euclidean norm, from Fast Fourier Transformation of Body Acceleration
**fBodyBodyAccJerkMag-std()**|NA|Standard Deviation|Magnitude, calculated using the Euclidean norm, from Fast Fourier Transformation of Body Acceleration
**fBodyBodyAccJerkMag-meanFreq()**|NA|Mean|Magnitude, calculated using the Euclidean norm, from Fast Fourier Transformation of Body Acceleration
**fBodyBodyGyroMag-mean()**|NA|Mean|Magnitude, calculated using the Euclidean norm, from Fast Fourier Transformation of Body Acceleration
**fBodyBodyGyroMag-std()**|NA|Standard Deviation|Magnitude, calculated using the Euclidean norm, from Fast Fourier Transformation of Body Acceleration
**fBodyBodyGyroMag-meanFreq()**|NA|Mean|Magnitude, calculated using the Euclidean norm, from Fast Fourier Transformation of Body Acceleration
**fBodyBodyGyroJerkMag-mean()**|NA|Mean|Jerk Signal Magnitude calculated from Fast Fourier Transformation of Body Gyroscopic
**fBodyBodyGyroJerkMag-std()**|NA|Standard Deviation|Jerk Signal Magnitude calculated from Fast Fourier Transformation of Body Gyroscopic
**fBodyBodyGyroJerkMag-meanFreq()**|NA|Mean|Jerk Signal Magnitude calculated from Fast Fourier Transformation of Body Gyroscopic
**angle(tBodyAccMean,gravity)**|NA|Mean|Angle between vectors of Time Domain Body Acceleration
**angle(tBodyAccJerkMean),gravityMean)**|NA|Mean|Angle between vectors of Jerk signals of Time Domain Body Acceleration
**angle(tBodyGyroMean,gravityMean)**|NA|Mean|Angle between vectors of Time Domain Body Gyroscopic
**angle(tBodyGyroJerkMean,gravityMean)**|NA|Mean|Angle between vectors of Jerk signals of Time Domain Body Gyroscopic
**angle(X,gravityMean)**|NA|Mean|Angle between vectors of  Gravity
**angle(Y,gravityMean)**|NA|Mean|Angle between vectors of  Gravity
**angle(Z,gravityMean)**|NA|Mean|Angle between vectors of  Gravity
