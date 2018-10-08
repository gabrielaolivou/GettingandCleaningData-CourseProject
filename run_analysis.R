##STEP 0 -- Download and Read the data into R.
    
    #Download and Unzip source data
    pd.zipUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    if(!file.exists("UCI HAR Dataset.zip")){download.file(pd.zipUrl, "UCI HAR Dataset.zip", mode = "wb")}
    if (!file.exists("UCI HAR Dataset")) {unzip("UCI HAR Dataset.zip")}
    
    #reading names of files
    list.files("./UCI HAR Dataset")
    list.files("./UCI HAR Dataset/test")
    list.files("./UCI HAR Dataset/train")
    
    #read activity labels
    ActivityLabels<-read.table(file.path("UCI HAR Dataset", "activity_labels.txt"))
    colnames(ActivityLabels)<- c("activityID","activityLABEL")
    
    #read features
    Features<-read.table(file.path("UCI HAR Dataset", "features.txt"),as.is = TRUE)
    
    #read test data
    TestSubjects <- read.table(file.path("UCI HAR Dataset", "test", "subject_test.txt"))
    TestValues <- read.table(file.path("UCI HAR Dataset", "test", "X_test.txt"))
    TestActivity <- read.table(file.path("UCI HAR Dataset", "test", "y_test.txt"))
    
    #read train data
    TrainSubjects <- read.table(file.path("UCI HAR Dataset", "train", "subject_train.txt"))
    TrainValues <- read.table(file.path("UCI HAR Dataset", "train", "X_train.txt"))
    TrainActivity <- read.table(file.path("UCI HAR Dataset", "train", "y_train.txt"))

##STEP 1 -- Merges the training and the test set to create one data set.

    Testdata<-cbind(TestSubjects,TestValues,TestActivity)
    Traindata<-cbind(TrainSubjects,TrainValues,TrainActivity)
    HumanActivity<-rbind(Testdata,Traindata)
    #assign column names
    colnames(HumanActivity)<-c("subject",Features[,2],"activity")

##STEP 2 -- Extracts only the measurements on the mean and standard deviation for each measurement.

    #Step2.1 - Determine the columns that measurements on the mean and standard deviation by 
    #          subject and activity
    ColumnsToExtract<-grepl("subject|activity|mean|std", colnames(HumanActivity))
    
    #Step2.2 - Extract the columns that satisfy with the indications, identified in Step2.1
    HumanActivity<-HumanActivity[,ColumnsToExtract]

##STEP 3 -- Uses descriptive activity names to name the activities in the data set.
   
    HumanActivity$activity<-factor(HumanActivity$activity, levels = ActivityLabels$activityID, 
                                   labels = ActivityLabels$activityLABEL)
    
##STEP 4 -- Appropriately labels the data set with descriptive variable names.
    
    #look column variables names
    ColumnVariableNames<-colnames(HumanActivity)
    ColumnVariableNames
    #Formating variables names
    ColumnVariableNames <- gsub("^f", "frequencyDomain", ColumnVariableNames)
    ColumnVariableNames <- gsub("^t", "timeDomain", ColumnVariableNames)
    ColumnVariableNames <- gsub("Acc", "Accelerometer", ColumnVariableNames)
    ColumnVariableNames <- gsub("Gyro", "Gyroscope", ColumnVariableNames)
    ColumnVariableNames <- gsub("Mag", "Magnitude", ColumnVariableNames)
    ColumnVariableNames <- gsub("Freq", "Frequency",ColumnVariableNames)
    ColumnVariableNames <- gsub("mean", "Mean", ColumnVariableNames)
    ColumnVariableNames <- gsub("std", "StandardDeviation", ColumnVariableNames)
    ColumnVariableNames <- gsub("BodyBody", "Body", ColumnVariableNames)
    ColumnVariableNames <- gsub("subject", "Subject", ColumnVariableNames)
    ColumnVariableNames <- gsub("activity", "Activity", ColumnVariableNames)
    ColumnVariableNames <- gsub("\\(|\\)|-", "", ColumnVariableNames)
    #Update in "HumanActivity" data, the column names of the formatted variables.
    colnames(HumanActivity) <-ColumnVariableNames

##STEP 5 -- From the data set in step 4, creates a second, independent tidy data set with the 
##          average of each variable for each activity and each subject.
    
    library(dplyr)
    #create the second data set
    HumanActivityMeans<-HumanActivity %>% 
    #group by each activity and each subject
    group_by(Activity,Subject) %>% 
    #calc the mean by group
    summarise_each(funs(mean))
    
##output to file "tidy_data.txt"
    write.table(HumanActivityMeans, "tidy_data.txt", row.names = FALSE, quote = FALSE)
    