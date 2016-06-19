# Getting and Cleaning Data Course Project.
# This script is to prepare tidy data that can be used for later analysis.

# This script can acheive the follwing functions
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set.
# 4. Appropriately labels the data set with descriptive activity names. 
# 5. Creates a second, independent tidy data set with the average of each variable for each 
#    activity and each subject.

getwd()
setwd("I:\\Getting and Cleaning Data\\Getting and Cleaning Data Course Project\\UCI HAR Dataset")

## read data on test file
readLines("./test/subject_test.txt", n = 2L)
test_subject <- read.table("./test/subject_test.txt")

readLines("./test/X_test.txt", n = 2L)
test_x <- read.table("./test/X_test.txt")

readLines("./test/y_test.txt", n = 2L)
test_y <- read.table("./test/y_test.txt")

## read data on train file
readLines("./train/subject_train.txt", n = 2L)
train_subject <- read.table("./train/subject_train.txt")

readLines("./train/X_train.txt", n = 2L)
train_x <- read.table("./train/X_train.txt")

readLines("./train/y_train.txt", n = 2L)
train_y <- read.table("./train/y_train.txt")

##  library(reshape2)

## read the labels
features <- read.table("./features.txt")
activity_labels <- read.table("./activity_labels.txt")

## make the identification for different files
test_subject$from <- rep("test", nrow(test_subject))
train_subject$from <- rep("train", nrow(train_subject))

## merge the subject data
subject <- rbind(test_subject, train_subject)
colnames(subject) <- c("subject","from")
subject$from <- as.factor(subject$from)

# merge the labels from test and train with activitity names
label <- rbind(test_y, train_y)
label$neworder <- 1:nrow(label)
labels <- merge(label, activity_labels, by.x = "V1", by.y = "V1", sort = F)
labels <- labels[order(labels$neworder),]
label <- factor(labels$V2, levels = c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))

# Merge the dataset with applying the textual headings
data <- rbind(test_x, train_x)
colnames(data) <- features[, 2] 

# Merge all three datasets
data <- cbind(subject, label, data)

# Extracts only the measurements on the mean and standard deviation for each measurement.
search <- grep("-mean|-std", colnames(data))
data_extract <- data[,c(1,2,3,search)]

# convert the data_extract into data frame in dplyr
library(data.table)
library(dplyr)

dataframe <- tbl_df(data_extract)
data_tidy <- select(dataframe, -from)

# Compute the means, grouped by subject and label
group <- group_by(data_tidy, subject, label)
tidydata <- summarise_each(group, funs(mean))

# Save the resulting dataset
setwd("I:\\Getting and Cleaning Data\\Getting and Cleaning Data Course Project")
write.csv(tidydata, "tidy_data.csv", row.names = F)
