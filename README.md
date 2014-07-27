==================================================================
Course project for Getting and Cleaning Data
Version 1.0
==================================================================
This project deals with data from some experiments in Smartlab. Following gives an full description of the data. 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This project does the following things:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

==================================================================


The dataset includes the following files:
=========================================
- 'CodeBook.md': defines the variables and some key information about the tidy data, and important steps during the process of cleaning up the data is also provide. 
- 'README.md': explains how all of the scripts work and how they are connected.
- 'run_analysis.R': the R source file that does the 5 things mentioned above.

Notes: 
======
1. Before running the run_analysis.R file, all the data files in 'UCI HAR Dataset' should be copy to the working directory, and their organization should not be changed. 
2. After running the run_analysis.R file, two result files are generated, "result1.txt" is the result data set for Step 1-4, and "result2.txt" is the result data set for Step 5. 
