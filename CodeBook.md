# CodeBook.md
Getting and Cleaning Data Course Project.
The handybook of "tidy_data.csv"

## Original Data Source
The original data set collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Data Processing

The new data set tidy_data.txt is created by running the Run_Analysis.R script.

Run_Analysis.R script performs the following steps to generate tidy_data.csv:
* 1. Merges the training and the test sets to create one data set.
* 2. Extracts only the measurements on the mean and standard deviation. 
* 3. Uses the activity labels data set to assign descriptive activity names in the data set
* 4. Labels the data set with descriptive variable names obtained from the features data set. 
* 5. Creates a tidy data set with the average of each variable for each activity and each subject.

## Variables

### 1. Subject
    Integer values used to identify test volunteer.
    Levels: 1 to 30.

### 2. Activity  
    Character values denoting the type of activity.
    Levels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING.

### 3. Measurements on the mean and standard deviation for each measurement extracted from .

* [1] "subject"
* [2] "label"                      
* [3] "tBodyAcc-std()-X"
* [4] "tBodyAcc-std()-Y"           
* [5] "tBodyAcc-std()-Z"
* [6] "tBodyAcc-mad()-X"           
* [7] "tBodyAcc-mad()-Y"
* [8] "tBodyAcc-mad()-Z"           
* [9] "tGravityAcc-std()-X"
*[10] "tGravityAcc-std()-Y"        
*[11] "tGravityAcc-std()-Z"
*[12] "tGravityAcc-mad()-X"        
*[13] "tGravityAcc-mad()-Y"
*[14] "tGravityAcc-mad()-Z"        
*[15] "tBodyAccJerk-std()-X"
*[16] "tBodyAccJerk-std()-Y"       
*[17] "tBodyAccJerk-std()-Z"
*[18] "tBodyAccJerk-mad()-X"       
*[19] "tBodyAccJerk-mad()-Y"
*[20] "tBodyAccJerk-mad()-Z"       
*[21] "tBodyGyro-std()-X"
*[22] "tBodyGyro-std()-Y"          
*[23] "tBodyGyro-std()-Z"
*[24] "tBodyGyro-mad()-X"          
*[25] "tBodyGyro-mad()-Y"
*[26] "tBodyGyro-mad()-Z"          
*[27] "tBodyGyroJerk-std()-X"
*[28] "tBodyGyroJerk-std()-Y"      
*[29] "tBodyGyroJerk-std()-Z"
*[30] "tBodyGyroJerk-mad()-X"      
*[31] "tBodyGyroJerk-mad()-Y"
*[32] "tBodyGyroJerk-mad()-Z"      
*[33] "tBodyAccMag-max()"
*[34] "tBodyAccMag-min()"          
*[35] "tGravityAccMag-max()"
*[36] "tGravityAccMag-min()"       
*[37] "tBodyAccJerkMag-max()"
*[38] "tBodyAccJerkMag-min()"      
*[39] "tBodyGyroMag-max()"
*[40] "tBodyGyroMag-min()"         
*[41] "tBodyGyroJerkMag-max()"
*[42] "tBodyGyroJerkMag-min()"     
*[43] "fBodyAcc-std()-X"
*[44] "fBodyAcc-std()-Y"           
*[45] "fBodyAcc-std()-Z"
*[46] "fBodyAcc-mad()-X"           
*[47] "fBodyAcc-mad()-Y"
*[48] "fBodyAcc-mad()-Z"           
*[49] "fBodyAcc-skewness()-X"
*[50] "fBodyAcc-kurtosis()-X"      
*[51] "fBodyAcc-skewness()-Y"
*[52] "fBodyAccJerk-std()-X"       
*[53] "fBodyAccJerk-std()-Y"
*[54] "fBodyAccJerk-std()-Z"       
*[55] "fBodyAccJerk-mad()-X"
*[56] "fBodyAccJerk-mad()-Y"       
*[57] "fBodyAccJerk-mad()-Z"
*[58] "fBodyAccJerk-skewness()-X"  
*[59] "fBodyAccJerk-kurtosis()-X"
*[60] "fBodyAccJerk-skewness()-Y"  
*[61] "fBodyGyro-std()-X"
*[62] "fBodyGyro-std()-Y"          
*[63] "fBodyGyro-std()-Z"
*[64] "fBodyGyro-mad()-X"          
*[65] "fBodyGyro-mad()-Y"
*[66] "fBodyGyro-mad()-Z"          
*[67] "fBodyGyro-skewness()-X"
*[68] "fBodyGyro-kurtosis()-X"     
*[69] "fBodyGyro-skewness()-Y"
*[70] "fBodyAccMag-max()"          
*[71] "fBodyAccMag-min()"
*[72] "fBodyBodyAccJerkMag-mean()" 
*[73] "fBodyBodyAccJerkMag-max()"
*[74] "fBodyBodyAccJerkMag-min()"  
*[75] "fBodyBodyGyroMag-mean()"
*[76] "fBodyBodyGyroMag-max()"     
*[77] "fBodyBodyGyroMag-min()"
*[78] "fBodyBodyGyroJerkMag-mean()"
*[79] "fBodyBodyGyroJerkMag-max()"
*[80] "fBodyBodyGyroJerkMag-min()" 
*[81] "angle(tBodyAccMean,gravity)"

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation

The above variables where choosen as they included either mean or std in their original names:
    tBodyAcc, tGravityAcc, tBodyAccJerk, tBodyGyro, tBodyGyroJerk, tBodyAccMag, 
    tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag, fBodyAcc, fBodyAccJerk, 
    fBodyGyro, fBodyAccMag, fBodyBodyAccJerkMag, fBodyBodyGyroMag, fBodyBodyGyroJerkMag.
A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


