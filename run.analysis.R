#########################
## Data Import Section ##
#########################
      set.seed(525)
          ## Set seed for computations that may be affected by seed choice.

      activity_labels <- read.table("./activity_labels.txt")
          ## import activity labels (number = activity)

      features <- read.table("./features.txt")
          ## import feature labels which fill in the column names for XtestRaw and XtrainRaw
      
      subject_testRaw <- read.table("./test/subject_test.txt")
          ## Import subject label (number) for each row in test group

      XtestRaw <- read.table("./test/X_test.txt")
          ## import  data set for test group

      YtestRaw <- read.table("./test/y_test.txt")
          ## import test labels for test group (match to activity_labels)
        
      subject_trainRaw <- read.table("./train/subject_train.txt")
          ## Import subject label (number) for each row in training group

      XtrainRaw <- read.table("./train/X_train.txt")
          ## import  data set for training group        

      YtrainRaw <- read.table("./train/y_train.txt")
          ## import test labels for training group (match to activity_labels)

###########################
## Data Assembly Section ##
###########################

      testRaw <- cbind(subject_testRaw, cbind(YtestRaw, XtestRaw))
      trainRaw <- cbind(subject_trainRaw, cbind(YtrainRaw, XtrainRaw))
          ## add subject labels and activity ID as first and second column (respectively) of test and training

      fullRaw <- rbind(trainRaw, testRaw)
          ## add test to training as new rows

      fullRaw<- cbind(Activity_Description = NA , fullRaw)
          ## Create a new column beginning (called Activity_Description) 
      fullRaw[[1]] <- activity_labels$V2[ match(fullRaw[[3]], activity_labels$V1)]
          ## and label values with activity descriptor in activity_labels data.frame

      colnames(fullRaw) <- c("Activity_Description", "SubjectID", "ActivityID", as.character(features$V2))
          ## Add a column labeling the activity by the test label         

      meanstdindices <- grep(pattern = "([M|m]ean)|(std)", names(fullRaw))
      meanstdRaw <- fullRaw[, c(1:2, meanstdindices)]
          ## Extract, into a new data.frame(meanstdRaw), the columns where the values are 
          ## a mean or standard deviation of the measurements (e.g. label contains mean, Mean, or std)
          ## using regex to identify the column indices, then passing those indices (plus additional ones) 
          ## to the new data.frame.

#######################################
## Tidy Data Sets and Export Section ##
#######################################

      tidy <- meanstdRaw %>% group_by(Activity_Description, SubjectID) %>% summarise_each(funs(mean))
          ## Create tidy data set containing the average of each variable by subject and their activity. 
      
      write.table(x = tidy, file = "./tidy.txt", sep = ",", row.names = FALSE)
          ## Write the new data.frame "tidy" to a comma separated formatted file called "tidy.csv"
          ## to the working directory.
