#Getting and Cleaning Data - Course Project
----------

There is a single R script called **run_analysis.R**

As a prerequisite, the Samsung UCI HAR Data set should be downloaded and unzipped to a directory folder called 'UCI HAR Data set' which should be in the same working directory as this **run_analysis.R** script.

1. Download the Samsung UCI HAR Data set from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  "UCI HAR Data set")
1. Create a directory folder called **UCI HAR Data set** in same working directory as this script.
1. Unzip contents of the downloaded zipped file to **UCI HAR Data set** directory folder.


 
Per requirements in the course project, this **run_analysis.R** script does the following:

1. Merges the **train** and the **test** data sets to create one data set.
1. Extracts only the measurements on the **mean** and **standard deviation** for each measurement. 
1. Uses descriptive **activity names** to name the activities in the data set
1. Appropriately labels the data set with descriptive **variable names**.  
1. From the data set in step 4, creates a second, independent tidy data set called **UCI-HAR-Tidy-Dataset.txt** with the average of each variable for each activity and each subject called.


The output of this script is the tidy dataset called **UCI-HAR-Tidy-Dataset.txt** found in the working directory.


##References
A full description of the original data is available at the site where the data was obtained: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones "Human Activity Recognition Using Smartphones")

Aside from Coursera lecture videos and swirl assignments, these other sources were consulted:

[https://class.coursera.org/getdata-015/forum/thread?thread_id=26](https://class.coursera.org/getdata-015/forum/thread?thread_id=26 "David's personal course project FAQ")

[https://class.coursera.org/getdata-015/forum/thread?thread_id=27](https://class.coursera.org/getdata-015/forum/thread?thread_id=27 "Tidy data and the Assignment")

[https://class.coursera.org/getdata-015/forum/thread?thread_id=112](https://class.coursera.org/getdata-015/forum/thread?thread_id=112 "How to apply activity labels")

[http://cran.r-project.org/doc/FAQ/R-FAQ.html#What-are-valid-names_003f](http://cran.r-project.org/doc/FAQ/R-FAQ.html#What-are-valid-names_003f "R FAQ What are valid names")

[http://stackoverflow.com/questions/9195718/variable-name-restrictions-in-r](http://stackoverflow.com/questions/9195718/variable-name-restrictions-in-r "Variable name restrictions in R")

[http://stackoverflow.com/questions/28549045/dplyr-select-error-found-duplicated-column-name](http://stackoverflow.com/questions/28549045/dplyr-select-error-found-duplicated-column-name "dplyr Duplicated column name")



[http://vita.had.co.nz/papers/tidy-data.pdf](http://vita.had.co.nz/papers/tidy-data.pdf "Tidy Data by Hadley Wickham")
 


