#Getting and Cleaning Data - Course Project
----------

There is one R script called **run_analysis.R**


As a prerequisite, the UCI HAR Dataset should be downloaded and unzipped to a directory called 'UCI HAR Dataset' which is found in the same location as the run_analysis.R script

1. Download from UCI HAR Dataset from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  "UCI HAR Dataset")
2. Unzip contents to folder 'UCI HAR Dataset'


 
This script does the following:

1. Merges the Training and the Test sets to create one dataset.
1. Extracts only the measurements on the mean and standard deviation for each measurement. 
1. Uses descriptive activity names to name the activities in the data set
1. Appropriately labels the data set with descriptive variable names.  
1. From the data set in step 5, creates a second, independent tidy data set with the average of each variable for each activity and each subject called **UCI-HAR-Tidy-Dataset.csv**.








A full description of the original data is available at the site where the data was obtained:


[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones "Human Activity Recognition Using Smartphones")
 
