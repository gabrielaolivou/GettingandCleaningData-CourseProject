# GettingandCleaningData-CourseProject

## **Getting and Cleaning Data** Course Project

In this course project the objective is show the obtained skill to collect, work with, and clean a data set. 

In this project, the data collected by a group of 30 volunteers from the the accelerometer and gyroscope of the Samsung Galaxy S smartphone was retrieved, worked with, and cleaned, to prepare a tidy data that can be used for later analysis.

This repository contains:
* 'README.md', this file, which provides an overview of the data set and how it was created.
* 'CodeBook.md', the code book, which describes all contents of the data set (the raw data, the tidy data with their respective variables and transformations used to convert the raw data to a tidy data).
* 'tidy_data.txt', which contains the data set.
* 'run_analysis.R', the R script that was used to create the data set (see the Creating the data set section below)

### Source

The source data set that this project was based on was obtained from the Human Activity Recognition Using Smartphones Data Set built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors

The Data Set Information obtained by the official page of this study said: "The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain." 

### Steps to creatind the data set

The R script 'run_analysis.R' can be used to create this data set. Under this steps:

* Download and unzip source data.
* Read data.
* Merge the training and the test sets to create one data set.
* Extract only the measurements on the mean and standard deviation for each measurement.
* Use descriptive activity names to name the activities in the data set.
* Appropriately label the data set with descriptive variable names.
* Create a second, independent tidy set with the average of each variable for each activity and each subject.
* Write the data set to the tidy_data.txt file.
