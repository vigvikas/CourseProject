##This script runs on UCI HAR Dataset to produce a Clean Tidy Table as required by Course Project##

# STEP 1: Load the required R-packages "downloader" & "dplyr. 
# The script assumes that these packages are already installed on users R-Environment#

library(downloader)
library(dplyr)

# STEP 2 & 3: The script checks if the UCI HAR Dataset directory exists in the working directory of the user.
#             if the directory does not exist, the database is downloaded from the given URL
#             The database and UCI HAT Dataset directory is extracted to current working directory of the user. 

if(!file.exists("UCI HAR DATASET")) {
  fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download(fileUrl, dest = "Dataset.zip", mode = "wb")
  unzip("Dataset.zip")
}

# STEP 4: Files from the UCI Har Dataset corresponding to "Train" observations (X, y & sub), "Features" 
#         and "Activity" are read into respective tables

wrkdir <- getwd()
xTrainfile <- "/UCI HAR Dataset/train/X_train.txt"
xTrainfinal <- paste(as.character(wrkdir), xTrainfile, sep = "")
tablexTrain <- read.table(xTrainfinal, header = FALSE, sep = "", stringsAsFactors = FALSE)

yTrainfile <- "/UCI HAR Dataset/train/y_train.txt"
yTrainfinal <- paste(as.character(wrkdir), yTrainfile, sep = "")
tableyTrain <- read.table(yTrainfinal, header = FALSE, sep = "", stringsAsFactors = FALSE)

subTrainfile <- "/UCI HAR Dataset/train/subject_train.txt"
subTrainfinal <- paste(as.character(wrkdir), subTrainfile, sep = "")
tablesubTrain <- read.table(subTrainfinal, header = FALSE, sep = "", stringsAsFactors = FALSE)

featurefile <- "/UCI HAR Dataset/features.txt"
featurefinal <- paste(as.character(wrkdir), featurefile, sep = "")
tableFeature <- read.table(featurefinal, header = FALSE, sep = "", stringsAsFactors = FALSE)

activityfile <- "/UCI HAR Dataset/activity_labels.txt"
activityfinal <- paste(as.character(wrkdir), activityfile, sep = "")
tableActivity <- read.table(activityfinal, header = FALSE, sep = "", stringsAsFactors = FALSE)

# STEP 5: Descriptive Variable Names are given. 
#         Names from "feature Table" are extracted and used for renaming the measurement variables.
#         The other names used are "Subject" and "Activity".
#         The descriptive Activity Names are extracted from Activity table.

colNames <- tableFeature$V2
names(tablexTrain) <- colNames
names(tablesubTrain) <- "Subject"
names(tableyTrain) <- "Activity"
actNames <- tableActivity$V2

# STEP 6: The three Train tables - Subject, Y & X are bound together to get complete Train Table

tableCleanTrain1 <- cbind(tablesubTrain, tableyTrain)
tableCleanTrain <- cbind(tableCleanTrain1, tablexTrain)

# STEP 7: STEPS 4,5 & 6 are repeated for Test database to get a complete Test Table.

xTestfile <- "/UCI HAR Dataset/test/X_test.txt"
xTestfinal <- paste(as.character(wrkdir), xTestfile, sep = "")
tablexTest <- read.table(xTestfinal, header = FALSE, sep = "", stringsAsFactors = FALSE)

yTestfile <- "/UCI HAR Dataset/test/y_test.txt"
yTestfinal <- paste(as.character(wrkdir), yTestfile, sep = "")
tableyTest <- read.table(yTestfinal, header = FALSE, sep = "", stringsAsFactors = FALSE)

subTestfile <- "/UCI HAR Dataset/test/subject_test.txt"
subTestfinal <- paste(as.character(wrkdir), subTestfile, sep = "")
tablesubTest <- read.table(subTestfinal, header = FALSE, sep = "", stringsAsFactors = FALSE)

names(tablexTest) <- colNames
names(tablesubTest) <- "Subject"
names(tableyTest) <- "Activity"

tableCleanTest1 <- cbind(tablesubTest, tableyTest)
tableCleanTest <- cbind(tableCleanTest1, tablexTest)

# STEP 8: Finally the Complete Train Table & Complete Test Table obtained above are bound together
#         to get the complete database with all observations.

tableCleanAll <- rbind(tableCleanTrain, tableCleanTest)

# STEP 9: All duplicated columns are removed & only columns containing "mean() or "std()" are selected

tableCleanInt <- tableCleanAll[, !duplicated(colnames(tableCleanAll))]
tableCleanTidy <- select(tableCleanInt, Subject, Activity, contains("mean()"), contains("std()"))

# STEP 10: Mean is claculated on the selected measurement columns in Step 9 by grouping data into
#          Subject-Activity to get a WIDE FORM TIDY TABLE

grp <- c("Subject", "Activity")
dots <- lapply(grp, as.symbol)
tableCleanFinal <- tableCleanTidy %>% group_by_(.dots = dots) %>% summarise_each(funs(mean))

# STEP 11: As required by course project, Activity codes are replaced by descriptive Activity Names
#          to get the FINAL CLEAN TIDY TABLE

for(i in 1:length(actNames)) {tableCleanFinal$Activity[tableCleanFinal$Activity == i] <- actNames[i]}

#STEP 12: The Clean Tidy Table is outputted as text file in the current working directory
#         The Clean Tidy Table opens up for viewing by the user.

write.table(tableCleanFinal,"CleanFinalData.txt",row.name=FALSE )
View(tableCleanFinal)

# END of the Script#


