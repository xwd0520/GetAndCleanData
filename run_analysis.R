## remove existing data
rm(list = ls())

################ Step 1 ################
## read train data, bind observations and labels into one single data.frame
X_train <- read.table("./train/X_train.txt", header = FALSE)
y_train <- read.table("./train/y_train.txt", header = FALSE)
data_train <- cbind(X_train, y_train)

## read test data, bind observations and labels into one single data.frame
X_test <- read.table("./test/X_test.txt", header = FALSE)
y_test <- read.table("./test/y_test.txt", header = FALSE)
data_test <- cbind(X_test, y_test)

## Merges the training and the test sets to create one data set
data <- rbind(data_train, data_test)

## read activity labels data
features <- read.table("./features.txt", header = FALSE)

## get indexes of measurements only on the mean and standard deviation
meanandstd_index <- grep("mean|std", features[, 2])


################ Step 2 ################
## Extracts only the measurements on the mean and standard deviation 
## for each measurement from the combine train and test data

extractData <- data[, c(meanandstd_index, ncol(data_train))]


################ Step 3 ################
## read activity labels data
activity_labels <- read.table("./activity_labels.txt", header = FALSE)

## Uses descriptive activity names to name the activities in the data set
mergedData <- merge(extractData, activity_labels, by.x = ncol(extractData), by.y="V1", sort=FALSE)
result1 <- mergedData[, 2:ncol(mergedData)]


################ Step 4 ################
## Appropriately labels the data set with descriptive variable names
colnames(result1) <- c(as.character(features[meanandstd_index, 2]), "label")

## output the result data
write.table(result1, file="./result1.txt")


################ Step 5 ################
## read subject data, both for train and test
subject_train <- read.table("./train/subject_train.txt", header = FALSE)
subject_test <- read.table("./test/subject_test.txt", header = FALSE)

## bind them
subject <- rbind(subject_train, subject_test)

## bind with the data
data <- cbind(subject, data)

## alter colname of the data set
colnames(data) <- c("subject", as.character(features[, 2]), "activity")

## aggregate the average of each variable for each activity and each subject
aggdata <-aggregate(data, by=list(data$subject, data$activity), FUN=mean, na.rm=TRUE)
result2 <- aggdata[, c(-3, -ncol(aggdata))]
colnames(result2) <- c("subject", "activity", as.character(features[, 2]))

## output the result data
write.table(result2, file="./result2.txt")
