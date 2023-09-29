library(dplyr)
library(tidyverse)


#Train
featurenames <- read.csv("/Users/sm/Desktop/UCI HAR Dataset/features.txt",header=FALSE, sep="") #names for X data
featurenames$V2 <- gsub("-", "_", featurenames[,2])
featurenames$V2 <- gsub("()","", featurenames[,2], fixed=TRUE)


trainpath <- c("/Users/sm/Desktop/UCI HAR Dataset/train/subject_train.txt",
                   "/Users/sm/Desktop/UCI HAR Dataset/train/y_train.txt",
                   "/Users/sm/Desktop/UCI HAR Dataset/train/X_train.txt")


subject_train <- read.csv(trainpath[1],header=FALSE,sep="") %>% select (subject=1) 
y_train <- read.csv(trainpath[2],header=FALSE,sep="") %>% select (class=1) #training labels
mapped_activity <- read.csv("/Users/sm/Desktop/UCI HAR Dataset/activity_labels.txt",header=FALSE, sep=" ") %>% 
  select(class=1, label=2)
mapped_activity <- mapped_activity %>% 
    mutate(label=tolower(label))

activity_train <- dplyr::left_join(y_train, mapped_activity, by="class", relationship="many-to-one")  %>% select(-"class")
  
X_train <- read.table(trainpath[3],header=FALSE,sep="", col.names= paste(featurenames[,2],sep="-")) #%>% select (X_train=1) #training set
tidy_X_train_ind <- grep("mean|std",names(X_train)) #get indices for mean, std measurements
tidy_X_train_names <- grep("mean|std",names(X_train), value=TRUE) #get values (names) 


X_train_subset <- X_train[,tidy_X_train_ind]
names(X_train_subset) <- tidy_X_train_names
  
traindata_all <- cbind(subject_train, activity_train, X_train_subset) %>% mutate(type="train") 


#TEST

testpath <- c("/Users/sm/Desktop/UCI HAR Dataset/test/subject_test.txt",
               "/Users/sm/Desktop/UCI HAR Dataset/test/y_test.txt",
               "/Users/sm/Desktop/UCI HAR Dataset/test/X_test.txt")


subject_test <- read.csv(testpath[1],header=FALSE,sep="") %>% select (subject=1) 
y_test <- read.csv(testpath[2],header=FALSE,sep="") %>% select (class=1) #testing labels

activity_test <- dplyr::left_join(y_test, mapped_activity, by="class", relationship="many-to-one")  %>% select(-"class")

X_test <- read.table(testpath[3],header=FALSE,sep="", col.names= paste(featurenames[,2],sep="-")) 

tidy_X_test_ind <- grep("mean|std",names(X_test)) #get indices for mean, std measurements
tidy_X_test_names <- grep("mean|std",names(X_test), value=TRUE) #get values (names) 

X_test_subset <- X_test[,tidy_X_test_ind]
names(X_test_subset) <- tidy_X_test_names

testdata_all <- cbind(subject_test, activity_test, X_test_subset) %>% mutate(type="test")  

#Merge Train and Test datasets
data_all <- rbind(traindata_all,testdata_all) %>% rename(activity=label) 

avg_dataset <- data_all %>% 
  group_by(subject,activity, type) %>%
  summarize(across(c(1:79),mean)) %>% 


tidy_measurement_names <- gsub("Acc","Accelerometer", names(data_all[3:81]))  
tidy_measurement_names <- gsub("Gyro","Gyroscope", tidy_measurement_names)
tidy_measurement_names <- gsub("^f","frequency_", tidy_measurement_names)
tidy_measurement_names <- gsub("_std","_standard_deviation", tidy_measurement_names)
tidy_measurement_names <- gsub("Mag","Magnitude", tidy_measurement_names)
tidy_measurement_names <- gsub("^t","time_", tidy_measurement_names)
tidy_measurement_names <- gsub("X$", "X_axis", tidy_measurement_names)
tidy_measurement_names <- gsub("Y$", "Y_axis", tidy_measurement_names)
tidy_measurement_names <- gsub("Z$", "Z_axis", tidy_measurement_names)

  
names(avg_dataset) <- c("subject_number","activity","subject_type",paste("avg_",tidy_measurement_names, sep=""))
avg_dataset$activity <- tolower(avg_dataset$activity)

write.table(avg_dataset, paste(getwd(),"avg_dataset.txt", sep="/"), sep=",",row.name=FALSE)

