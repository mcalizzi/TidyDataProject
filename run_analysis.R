##Getting and Cleaning Data  - Week 4 Project
##Create a Tidy Data Set

##Assumptions made before analysis:
##Data is downloaded from the UCI Machine Learning Repository at the following URL:
##https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
##Data files are stored in a sub-directory called "Data"

##Read descriptive label files 
features <- read.table("./Data/features.txt")
activity.labels <- read.table("./Data/activity_labels.txt")

##Read data files
data.test <- read.table("./Data/test/X_test.txt")
data.train <- read.table("./Data/train/X_train.txt")

##Read activity files
activity.test <- read.table("./Data/test/y_test.txt")
activity.train <- read.table("./Data/train/y_train.txt")

##Read subject files
subject.test <- read.table("./Data/test/subject_test.txt")
subject.train <- read.table("./Data/train/subject_train.txt")

##Merge the test and training data frames
data.all <- rbind(data.test,data.train)
activity.all <- rbind(activity.test,activity.train)
subject.all <- rbind(subject.test,subject.train)

##Label the columns of each data frame
colnames(data.all) <- features[,2]
colnames(activity.all) <- "ActivityID"
colnames(subject.all) <- "SubjectID"

##Merge the data frames
data.merge <- cbind(subject.all,activity.all,data.all)

##Add in the activity labels next to the activity ID number
colnames(activity.labels) <- c("ActivityID","ActivityName")
data.merge2 <- merge(activity.labels,data.merge,by="ActivityID")

##Extract only the mean and standard deviation measurements
names.subset <- grepl("*mean\\(\\)|*std\\(\\)|ActivityName|SubjectID", 
                      names(data.merge2))
data.subset <- data.merge2[,names.subset]

##Create more descriptive variable names and assign them to data frame
names(data.subset) <- gsub("^t", "Time", names(data.subset))
names(data.subset) <- gsub("^f", "Frequency", names(data.subset))
names(data.subset) <- gsub("Acc","Accelerator",names(data.subset))
names(data.subset) <- gsub("Gyro","Gyroscope",names(data.subset))
names(data.subset) <- gsub("Mag","Magnitude",names(data.subset))
names(data.subset) <- gsub("BodyBody","Body",names(data.subset))
names(data.subset) <- gsub("mean\\(\\)","Mean",names(data.subset))
names(data.subset) <- gsub("std\\(\\)","StDev",names(data.subset))

##Create an independent tidy data set of means by subject and by activity type
tidy.data <- aggregate(. ~SubjectID + ActivityName, data.subset, mean)
tidy.data <- tidy.data[order(tidy.data$SubjectID,tidy.data$ActivityName),]

##Copy the tidy data set to a text file
write.table(tidy.data, file = "TidyData.txt", row.names = FALSE, quote = FALSE)















