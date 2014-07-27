Code book for result1.txt:
=========================================
The column names are self-descriptive. Column 1-561 are the 561 features appeared in "features.txt", the last column is the activity name. 
Every row is a single record. 


Code book for result2.txt:
=========================================
The column names are self-descriptive. 
Column 1 is the subject ID, column 2 is the activity ID, and the remaining column are the 561 features appeared in "features.txt"
Every row is the average of each variable for each activity and each subject. 


Key steps in run_analysis.R:
=========================================
Step 1
1. read train data, bind observations and labels into one single data.frame
2. read test data, bind observations and labels into one single data.frame
3. Merges the training and the test sets to create one data set
4. read activity labels data
5. get indexes of measurements only on the mean and standard deviation

Step 2
Extracts only the measurements on the mean and standard deviation for each measurement from the combine train and test data

Step 3
1. read activity labels data
2. Uses descriptive activity names to name the activities in the data set

Step 4
1. Appropriately labels the data set with descriptive variable names.
2. output the result data

Step 5
1. read subject data, both for train and test
2. bind them
3. bind with the data
4. alter column name of the data set
5. aggregate the average of each variable for each activity and each subject
6. output the result data
