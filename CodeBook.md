# CodeBook

This code book describes the variables, the data, and processing of the data performed to arrive at the tidy data.

## Original dataset

* Samsung UCI HAR data: [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "Samsung UCI HAR Dataset")

* Description of the Samsung UCI HAR dataset:
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones "Description - Samsung UCI HAR dataset")
*


## Dataset Information

The experiments were conducted with a group of 30 volunteers ranging in age from 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a Samsung Galaxy S smartphone on their waist. The smartphone captured various data about their movements.

## The original data

The dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all **features**.

- 'activity_labels.txt': Links the class labels with their **activity** name.

- 'train/X_train.txt': **train** set.

- 'train/y_train.txt': **train** labels.

- 'test/X_test.txt': **test** set.

- 'test/y_test.txt': **test** labels.

The following files are available for the **train** and **test** data. Their descriptions are equivalent.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

##The tidy data

ID Fields

    subjectID - The participant ID ("subject") 
    activity - The label of the activity performed when the corresponding measurements were taken

Extracted Feature Measurements

    TimeDomain.BodyAcceleration.Mean.X
    TimeDomain.BodyAcceleration.Mean.Y
    TimeDomain.BodyAcceleration.Mean.Z
    TimeDomain.BodyAcceleration.StandardDeviation.X
    TimeDomain.BodyAcceleration.StandardDeviation.Y
    TimeDomain.BodyAcceleration.StandardDeviation.Z
    TimeDomain.GravityAcceleration.Mean.X
    TimeDomain.GravityAcceleration.Mean.Y
    TimeDomain.GravityAcceleration.Mean.Z
    TimeDomain.GravityAcceleration.StandardDeviation.X
    TimeDomain.GravityAcceleration.StandardDeviation.Y
    TimeDomain.GravityAcceleration.StandardDeviation.Z
    TimeDomain.BodyAccelerationJerk.Mean.X
    TimeDomain.BodyAccelerationJerk.Mean.Y
    TimeDomain.BodyAccelerationJerk.Mean.Z
    TimeDomain.BodyAccelerationJerk.StandardDeviation.X
    TimeDomain.BodyAccelerationJerk.StandardDeviation.Y
    TimeDomain.BodyAccelerationJerk.StandardDeviation.Z
    TimeDomain.BodyAngularSpeed.Mean.X
    TimeDomain.BodyAngularSpeed.Mean.Y
    TimeDomain.BodyAngularSpeed.Mean.Z
    TimeDomain.BodyAngularSpeed.StandardDeviation.X
    TimeDomain.BodyAngularSpeed.StandardDeviation.Y
    TimeDomain.BodyAngularSpeed.StandardDeviation.Z
    TimeDomain.BodyAngularAcceleration.Mean.X
    TimeDomain.BodyAngularAcceleration.Mean.Y
    TimeDomain.BodyAngularAcceleration.Mean.Z    TimeDomain.BodyAngularAcceleration.StandardDeviation.X
    TimeDomain.BodyAngularAcceleration.StandardDeviation.Y
    TimeDomain.BodyAngularAcceleration.StandardDeviation.Z
    TimeDomain.BodyAccelerationMagnitude.Mean
    TimeDomain.BodyAccelerationMagnitude.StandardDeviation
    TimeDomain.GravityAccelerationMagnitude.Mean
    TimeDomain.GravityAccelerationMagnitude.StandardDeviation
    TimeDomain.BodyAccelerationJerkMagnitude.Mean
    TimeDomain.BodyAccelerationJerkMagnitude.StandardDeviation
    TimeDomain.BodyAngularSpeedMagnitude.Mean
    TimeDomain.BodyAngularSpeedMagnitude.StandardDeviation
    TimeDomain.BodyAngularAccelerationMagnitude.Mean
    TimeDomain.BodyAngularAccelerationMagnitude.StandardDeviation
    FrequencyDomain.BodyAcceleration.Mean.X
    FrequencyDomain.BodyAcceleration.Mean.Y
    FrequencyDomain.BodyAcceleration.Mean.Z
    FrequencyDomain.BodyAcceleration.StandardDeviation.X
    FrequencyDomain.BodyAcceleration.StandardDeviation.Y
    FrequencyDomain.BodyAcceleration.StandardDeviation.Z
    FrequencyDomain.BodyAccelerationJerk.Mean.X
    FrequencyDomain.BodyAccelerationJerk.Mean.Y
    FrequencyDomain.BodyAccelerationJerk.Mean.Z
    FrequencyDomain.BodyAccelerationJerk.StandardDeviation.X
    FrequencyDomain.BodyAccelerationJerk.StandardDeviation.Y
    FrequencyDomain.BodyAccelerationJerk.StandardDeviation.Z
    FrequencyDomain.BodyAngularSpeed.Mean.X
    FrequencyDomain.BodyAngularSpeed.Mean.Y
    FrequencyDomain.BodyAngularSpeed.Mean.Z
    FrequencyDomain.BodyAngularSpeed.StandardDeviation.X
    FrequencyDomain.BodyAngularSpeed.StandardDeviation.Y
    FrequencyDomain.BodyAngularSpeed.StandardDeviation.Z
    FrequencyDomain.BodyAccelerationMagnitude.Mean
    FrequencyDomain.BodyAccelerationMagnitude.StandardDeviation
    FrequencyDomain.BodyBodyAccelerationJerkMagnitude.Mean
    FrequencyDomain.BodyBodyAccelerationJerkMagnitude.StandardDeviation
    FrequencyDomain.BodyBodyAngularSpeedMagnitude.Mean
    FrequencyDomain.BodyBodyAngularSpeedMagnitude.StandardDeviation
    FrequencyDomain.BodyBodyAngularAccelerationMagnitude.Mean
    FrequencyDomain.BodyBodyAngularAccelerationMagnitude.StandardDeviation

Activity Labels

    Walking (value 1)
    Walking Upstairs (value 2)
    Walking Downstairs (value 3)
    Sitting (value 4)
    Standing (value 5)
    Laying (value 6)




