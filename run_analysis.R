# Check for Prerequisite packages

ifelse(require("data.table"), 
       print(paste(c( "Package", "'data.table'", "checked"), collapse=' ')),  stop("Required packages (data.table) not found. Use install.packages('data.table')"))


ifelse(require("reshape2"), 
       print(paste(c( "Package", "'reshape2'", "checked"), collapse=' ')),  stop("Required packages (reshape2) not found. Use install.packages('reshape2')" ))

# Requirement 1: Merges the training and the test sets to create one data set
# print("Reading datasets")


subject_train <- read.table("./UCI HAR Data set/train/subject_train.txt")
subject_test <- read.table("./UCI HAR Data set/test/subject_test.txt")
X_train <- read.table("./UCI HAR Data set/train/X_train.txt")
X_test <- read.table("./UCI HAR Data set/test/X_test.txt")
y_train <- read.table("./UCI HAR Data set/train/y_train.txt")
y_test <- read.table("./UCI HAR Data set/test/y_test.txt")


#print("Adding subjectID")

names(subject_train) <- "subjectID"
names(subject_test) <- "subjectID"

#print("Reading feature names")
featureNames <- read.table("./UCI HAR Data set/features.txt")


#print("Adding featureNames")
names(X_train) <- featureNames$V2
names(X_test) <- featureNames$V2


#print("Adding activity")
names(y_train) <- "activity"
names(y_test) <- "activity"


#print("Combining train and test datasets")
train <- cbind(subject_train, y_train, X_train)
test <- cbind(subject_test, y_test, X_test)

#print("Merging train and test ds")
combined <- rbind(train, test)

print("Requirement 1 - Merges the training and the test sets to create one data set - DONE")




print("Requirement 2 - Extracts only the measurements on the mean and standard deviation for each measurement - DONE")
meanstdcols <- grepl("mean\\(\\)", names(combined)) |
        grepl("std\\(\\)", names(combined))


meanstdcols[1:2] <- TRUE





print("Requirement 3 - Uses descriptive activity names to name the activities in the data set - DONE")
combined$activity <- factor(combined$activity, labels=c("Walking",
                                                        "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying"))




 names(combined) <- gsub('\\(|\\)',"",names(combined), perl = TRUE)

 names(combined) <- make.names(names(combined))

 names(combined) <- gsub('Acc',"Acceleration",names(combined))
 names(combined) <- gsub('GyroJerk',"AngularAcceleration",names(combined))
 names(combined) <- gsub('Gyro',"AngularSpeed",names(combined))
 names(combined) <- gsub('Mag',"Magnitude",names(combined))
 names(combined) <- gsub('^t',"TimeDomain.",names(combined))
 names(combined) <- gsub('^f',"FrequencyDomain.",names(combined))
 names(combined) <- gsub('\\.mean',".Mean",names(combined))
 names(combined) <- gsub('\\.std',".StandardDeviation",names(combined))
 names(combined) <- gsub('Freq\\.',"Frequency.",names(combined))
 names(combined) <- gsub('Freq$',"Frequency",names(combined))




print("Requirement 4 - Appropriately labels the data set with descriptive variable name - DONE")
combined <- combined[, meanstdcols]
## combined ds now has friendly names


print("Requirement 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject - DONE")

#print("Melting combined dataset using subjectID and actvity")
melt_ds <- melt(combined, id=c("subjectID","activity"))
tidy <- dcast(melt_ds, subjectID + activity ~ variable, mean)

# write the tidy data set to a file
print("Tidy 'UCI-HAR-Tidy-Dataset.txt' created in working directory")
write.table(tidy, "UCI-HAR-Tidy-Dataset.txt", row.names=FALSE)

