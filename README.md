---
title: "README"
author: "Vikas Vig"
date: "Saturday, July 25, 2015"
output: html_document
---


## Initial Required Set Up
Before Running the Script please ensure that following R-Packages are already installed in R-Environment:
1.  “downloader”
2.	“dplyr”  

**NOTE:The script inputs & outputs in the current working directory**

### STEP 1
Load the required R-packages "downloader" & "dplyr".    
_**The script assumes that these packages are already installed on user's R-Environment.**_  


### STEP 2
The script checks if the **"UCI HAR Dataset directory"** exists in the working directory of the user.  
If the directory does not exist, the database is downloaded from the given URL to the user’s current working directory.  
R-Package “downloader” is used to make the downloads compatible with all operating systems.  

### STEP 3
The UCI HAR Dataset is extracted into the current working directory of the user.

### STEP 4
Files from the UCI Har Dataset corresponding to "Training" observations (X, y & sub), "Features" and "Activity" are read into respective tables.

**NOTE:** _“Inertial Signals” have been ignored as they are not required for the current assignment_

##### X_Train = tablexTrain
##### y_Train = tableyTrain
##### subject_train = tablesubTrain
##### features = tableFeature
##### activity_labels = tableActivity

### STEP 5
Descriptive Variable Names are given to variables in respective tables.  

Names from "feature Table" are extracted and used for renaming the measurement variables in the Train X table (tablexTrain).  

The names from the original raw data have been used for meaurement variables for 2 reasons:  
   1. The names in the raw data are fairly descriptive and at the same time compact to fit in columns  
   2. It is easier to refer back to raw data if need arises in subsequent analysis  
  
The variable in the Subject Table (tablesubTrain) is renamed to “Subject”  
The variable in the Activity Table (tableyTrain) is renamed to “Activity”  
The descriptive Activity Names are extracted from Activity table.  

### STEP 6
The three Training Set tables - Subject, Y & X are bound together to get complete Train Table (tableCleanTrain)  

### STEP 7
STEPS 4, 5 & 6 are repeated for Test database to get a complete Test Table (tableCleanTest)  

### STEP 8
Finally the Complete Train Table (tableCleanTrain) and Complete Test Table (tableCleanTest) obtained above are bound together to get the complete database with all observations (tableCleanALL).

### STEP 9
All duplicated columns are removed.  
Only columns containing "mean() or "std()" are selected

**NOTE:** _Only the measurements of mean and standard deviation with parenthesis “()” have been selected. All other measurements even if they had “mean” and/ or "std" in their name have been excluded. Hence the total number of measurement columns selected are 66_

### STEP 10
Mean is calculated on the measurements for the columns selected in STEP 9 by grouping data into
“Subject-Activity” to get a WIDE FORM TIDY TABLE (tableCleanFinal). The dimension of this table is 180 X 68

**NOTE:** _Please note that both WIDE form and LONG Form are acceptable as per the requirement of the Course Project_

### STEP 11
As required by course project, Activity codes are replaced by descriptive Activity Names to get the FINAL CLEAN TIDY TABLE (tableCleanFinal)

### STEP 12
The Clean Tidy Table is outputted as text file **“CleanFinalData.txt”** in the current working directory of the user.  
The Clean Tidy Table opens up for viewing by the user.

