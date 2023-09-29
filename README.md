# Samsung-Data-Project
Analysis of Smartphone Data

run_analysis.R 
=================
This script analyzes data from the Human Activity Recognition Using Smartphones Dataset. Details about this dataset can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. All of the input files from this dataset are contained within the zip file "UCI HAR Dataset." The script loads the training and test data and extracts the mean and standard deviation for each measurement and applies descriptive names and labels to the variables. The training and test data are merged to create a single data set. Finally, it calculates the average of the mean and standard deviation of the accelerometer and gyroscope measurements for each activity and each subject (for training and test subjects separately). When the code is run average data are saved to the current working directory in a file called "avg_dataset.txt." 

The run_analysis script was developed using R version 4.3.0 (2023-04-21) on the platform aarch64-apple-darwin20. 

STEPS TO PERFORM ANSLYSIS
1. After unzipping the UCI HAR dataset folder, set the working directory to the unzipped folder "UCI HAR Dataset" (in the folder ".../UCI HAR Dataset." )
2. Save the run_analysis script in the working directory
3. Open R Studio and install the following packages: dplyr (version: 1.13 or higher) , tidyverse (version: 2.00 or higher). Use the following command to install each package: install.packages("package_name").
4. Open and run the script run_analysis.R. It will the load the relevant raw files from UCI HAR folder.
5. Run the run_analysis.R script to generate the output file "avg_dataset.txt"

Details about the Human Activity Recognition Using Smartphones Dataset 
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

--------------

Input files

The necessary input files to run run_analysis.R include the following:
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

Train and test data (their descriptions are equivalent) 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

- Each feature vector is a row on the text file.

Output file
The output of the run_analysis.R code is the "dataset avg_dataset.txt." The dataset includes the subject number, a subject_type variable to indicate whether the measurement is from the training or test data, the specific activity performed (e.g., walking), and the average of the mean and standard deviation gyroscope and accelerometer measurements. 
