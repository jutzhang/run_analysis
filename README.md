# run_analysis
Getting and Cleaning Data Course Project.

## Backgroud
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. the data is collected from the accelerometers from the Samsung Galaxy S smartphone. 

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

There are two files in this repo:

* run_analysis.R
* CodeBook.md

##run_analysis.R

This file includes all the required scripts to downlod and process the files and then saves teh tidy datasets into the disk:

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


##CodeBook.md

This file will indicate all the variables and summaries calculated, along with units, and any other relevant information.