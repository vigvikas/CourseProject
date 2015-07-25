---
title: "CODEBOOK"
author: "Vikas Vig"
date: "Saturday, July 25, 2015"
output: html_document
---

## Background
The raw data for this analysis was obtained from the UCI HAR Dataset where the experiments had been carried out with a group of 30 volunteers within age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.  

Using the embedded accelerometer and gyroscope, 3-axial (x, y, z) linear acceleration and 3-axial (x, y, z) angular velocity at a constant rate of 50Hz were captured. Various filters were applied and 561 different measurements were recorded for each volunteer with each activity.  

## Current Analysis
In the current analysis, out of these 561 variables only the mean and standard deviation measurements were selected and average of these selected measurements based on Subject-Activity Group (each activity and each subject) has been extracted in a Clean Tidy Table.

## Features of the extracted Clean Tidy Table
**Number of Rows = 180** (30 volunteers with 6 activities each (30 * 6 = 180))  
**Number of Columns = 68** (1 for Subject, 1 for Activity and 66 for average measurement per group)  

## Variable Information & Description

**All measurement variables are normalized and bounded within [-1,1].**

### The Variable description is as per table below:

**Variable Name**               | **Description**  
--------------------------      | -----------------------------
Subject                         | Unique identifier for each volunteer with unique ID from 1 to 30  
Activity                        | 6 activities performed by each Subject - (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
tBodyAcc-mean()-X               | Mean of time domain measure of Body Acceleration in X axis  
tBodyAcc-mean()-Y	              | Mean of time domain measure of Body Acceleration in Y axis  
tBodyAcc-mean()-Z	              | Mean of time domain measure of Body Acceleration in Z axis  
tGravityAcc-mean()-X	          | Mean of time domain measure of Gravity Acceleration in X axis  
tGravityAcc-mean()-Y	          | Mean of time domain measure of Gravity Acceleration in Y axis  
tGravityAcc-mean()-Z	          | Mean of time domain measure of Gravity Acceleration in Z axis  
tBodyAccJerk-mean()-X	          | Mean of time domain measure of Body linear Jerk in X axis  
tBodyAccJerk-mean()-Y	          | Mean of time domain measure of Body linear Jerk in Y axis  
tBodyAccJerk-mean()-Z	          | Mean of time domain measure of Body linear Jerk in Z axis  
tBodyGyro-mean()-X	            | Mean of time domain measure of Body linear acceleration & angular velocity in X axis  
tBodyGyro-mean()-Y	            | Mean of time domain measure of Body linear acceleration & angular velocity in Y axis  
tBodyGyro-mean()-Z	            | Mean of time domain measure of Body linear acceleration & angular velocity in Z axis 
tBodyGyroJerk-mean()-X          | Mean of time domain measure of Body angular Jerk in X axis  
tBodyGyroJerk-mean()-Y          | Mean of time domain measure of Body angular Jerk in Y axis  
tBodyGyroJerk-mean()-Z          | Mean of time domain measure of Body angular Jerk in Z axis  
tBodyAccMag-mean()              | Mean of time domain measure of Euclidean Norm of Body Acceleration  
tGravityAccMag-mean()	          | Mean of time domain measure of Euclidean Norm of Gravity Acceleration  
tBodyAccJerkMag-mean()          | Mean of time domain measure of Euclidean Norm of Body linear Jerk Signal  
tBodyGyroMag-mean()	            | Mean of time domain measure of Euclidean Norm of Body linear acceleration & angular velocity  
tBodyGyroJerkMag-mean()         | Mean of time domain measure of Euclidean Norm of Body linear & angular Jerk signals  
fBodyAcc-mean()-X               | Mean of frequency domain measure of Body Acceleration in X axis  
fBodyAcc-mean()-Y	              | Mean of frequency domain measure of Body Acceleration in Y axis  
fBodyAcc-mean()-Z	              | Mean of frequency domain measure of Body Acceleration in Z axis  
fBodyAccJerk-mean()-X	          | Mean of frequency domain measure of Body linear Jerk in X axis  
fBodyAccJerk-mean()-Y	          | Mean of frequency domain measure of Body linear Jerk in Y axis  
fBodyAccJerk-mean()-Z	          | Mean of frequency domain measure of Body linear Jerk in Z axis  
fBodyGyro-mean()-X	            | Mean of frequency domain measure of Body linear acceleration & angular velocity in X axis  
fBodyGyro-mean()-Y	            | Mean of frequency domain measure of Body linear acceleration & angular velocity in Y axis  
fBodyGyro-mean()-Z	            | Mean of frequency domain measure of Body linear acceleration & angular velocity in Z axis  
fBodyAccMag-mean()	            | Mean of frequency domain measure of Euclidean Norm of Body Acceleration  
fBodyBodyAccJerkMag-mean()      |Mean of frequency domain measure of Euclidean Norm of Body linear Jerk Signal  
fBodyBodyGyroMag-mean()         |Mean of frequency domain measure of Euclidean Norm of Body linear acceleration & angular velocity  
fBodyBodyGyroJerkMag-mean()     |Mean of frequency domain measure of Euclidean Norm of Body linear & angular Jerk signals    
tBodyAcc-std()-X                | Standard Deviation of time domain measure of Body Acceleration in X axis  
tBodyAcc-std()-Y	              | Standard Deviation of time domain measure of Body Acceleration in Y axis  
tBodyAcc-std()-Z	              | Standard Deviation of time domain measure of Body Acceleration in Z axis  
tGravityAcc-std()-X	            | Standard Deviation of time domain measure of Gravity Acceleration in X axis  
tGravityAcc-std()-Y	            | Standard Deviation of time domain measure of Gravity Acceleration in Y axis  
tGravityAcc-std()-Z	            | Standard Deviation of time domain measure of Gravity Acceleration in Z axis  
tBodyAccJerk-std()-X	          | Standard Deviation of time domain measure of Body linear Jerk in X axis  
tBodyAccJerk-std()-Y	          | Standard Deviation of time domain measure of Body linear Jerk in Y axis  
tBodyAccJerk-std()-Z	          | Standard Deviation of time domain measure of Body linear Jerk in Z axis  
tBodyGyro-std()-X	              | Standard Deviation of time domain measure of Body linear acceleration & angular velocity in X axis  
tBodyGyro-std()-Y	              | Standard Deviation of time domain measure of Body linear acceleration & angular velocity in Y axis  
tBodyGyro-std()-Z	              | Standard Deviation of time domain measure of Body linear acceleration & angular velocity in Z axis  
tBodyGyroJerk-std()-X	          | Standard Deviation of time domain measure of Body angular Jerk in X axis  
tBodyGyroJerk-std()-Y	          | Standard Deviation of time domain measure of Body angular Jerk in Y  axis  
tBodyGyroJerk-std()-Z	          | Standard Deviation of time domain measure of Body angular Jerk in Z axis  
tBodyAccMag-std()	              | Standard Deviation of time domain measure of Euclidean Norm of Body Acceleration  
tGravityAccMag-std()	          | Standard Deviation of time domain measure of Euclidean Norm of Gravity Acceleration  
tBodyAccJerkMag-std()	          | Standard Deviation of time domain measure of Euclidean Norm of Body linear Jerk Signal  
tBodyGyroMag-std()	            | Standard Deviation of time domain measure of Euclidean Norm of Body linear acceleration & angular velocity  
tBodyGyroJerkMag-std()          | Standard Deviation of time domain measure of Euclidean Norm of Body linear & angular Jerk signals  
fBodyAcc-std()-X                | Standard Deviation of frequency domain measure of Body Acceleration in X axis  
fBodyAcc-std()-Y	              | Standard Deviation of frequency domain measure of Body Acceleration in Y axis  
fBodyAcc-std()-Z	              | Standard Deviation of frequency domain measure of Body Acceleration in Z axis  
fBodyAccJerk-std()-X	          | Standard Deviation of frequency domain measure of Body linear Jerk in X axis  
fBodyAccJerk-std()-Y	          | Standard Deviation of frequency domain measure of Body linear Jerk in Y axis  
fBodyAccJerk-std()-Z	          | Standard Deviation of frequency domain measure of Body linear Jerk in Z axis  
fBodyGyro-std()-X	              | Standard Deviation of frequency domain measure of Body linear acceleration & angular velocity in X axis  
fBodyGyro-std()-Y	              | Standard Deviation of frequency domain measure of Body linear acceleration & angular velocity in Y axis  
fBodyGyro-std()-Z	              | Standard Deviation of frequency domain measure of Body linear acceleration & angular velocity in Z axis  
fBodyAccMag-std()	              | Standard Deviation of frequency domain measure of Euclidean Norm of Body Acceleration  
fBodyBodyAccJerkMag-std()       | Standard Deviation of frequency domain measure of Euclidean Norm of Body linear Jerk Signal  
fBodyBodyGyroMag-std()          | Standard Deviation of frequency domain measure of Euclidean Norm of Body linear acceleration & angular velocity  
fBodyBodyGyroJerkMag-std()      | Standard Deviation of frequency domain measure of Euclidean Norm of Body linear & angular Jerk signals  





