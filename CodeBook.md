
CODE BOOK

Study Design Details
The details of the study design and raw data are contained within the zip file "UCI HAR Dataset" and also provided below.

==================================================================
Human Activity Recognition Using Smartphones Dataset
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

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 


More details on the study design can be found here:  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

For more information about this dataset contact: activityrecognition@smartlab.ws



The UCI HAR dataset includes the following variables:
====================================================

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features. There is a total of 561-features with time and frequency domain variables for each activity. 

- 'activity_labels.txt': Links the class labels (range: 1-6) with their corresponding activity name (values: walking, walking_upstairs, walking_downstairs, sitting, standing, laying) 

- 'train/X_train.txt': Training set measurements 

Units: 

The acceleration signal (measurements with "Accelerometer" in the name) from the smartphone accelerometer X,Y, and Z axes: 
units: standard gravity units 'g'. 

The body acceleration signal obtained by subtracting the gravity from the total acceleration.
units: standard gravity units 'g'. 

The angular velocity vector (measurements with "Gyroscope" in the name) measured by the gyroscope for each window sample:
units: radians/second.

Features are normalized and bounded within [-1,1].


- 'train/y_train.txt': Activity class labels for train dataset (range: 1-6)

- 'test/X_test.txt': Test set measurements 

The acceleration signal (measurements with "Accelerometer" in the name) from the smartphone accelerometer X,Y, and Z axes: 
units: standard gravity units 'g'. 

The body acceleration signal obtained by subtracting the gravity from the total acceleration.
units: standard gravity units 'g'. 

The angular velocity vector (measurements with "Gyroscope" in the name) measured by the gyroscope for each window sample:
units: radians/second.



- 'test/y_test.txt': Activity class labels for test dataset (range: 1-6)

The following files are available for the train and test data. Their descriptions are equivalent.Features are normalized and bounded within [-1,1]. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample (range: 1 - 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 







The avg_dataset.txt dataset includes the following variables:
============================================================

subject_number 
Subject who performed the activity
Range of values: 1 to 30

subject_type
Indicates whether the subject's measurements are from the training or test data
Values: 
1. test 
2. train 

activity
Refers to one of six activities the subjects performed when the measurements were collected. The activities each subject performed included the following: 
1. walking 
2. walking_upstairs 
3. walking_downstairs 
4. sitting 
5. standing 
6. laying


Features
The features from the UCI HAR dataset come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The means and standard deviations of the sensor gyroscope and accelerometer measurements (79 elements total) in the raw data files were averaged in this analysis for each subject as a function of activity and train/test status. The resultant values are labeled with the prefix "avg" in the name. The remainder of the measurement name corresponds to the name in the raw data (features.txt), but with abbreviations written out and hyphens replaced with underscores.	

Values
1	avg_time_BodyAccelerometer_mean_X_axis
2	avg_time_BodyAccelerometer_mean_Y_axis
3	avg_time_BodyAccelerometer_mean_Z_axis
4	avg_time_BodyAccelerometer_standard_deviation_X_axis
5	avg_time_BodyAccelerometer_standard_deviation_Y_axis
6	avg_time_BodyAccelerometer_standard_deviation_Z_axis
7	avg_time_GravityAccelerometer_mean_X_axis
8	avg_time_GravityAccelerometer_mean_Y_axis
9	avg_time_GravityAccelerometer_mean_Z_axis
10	avg_time_GravityAccelerometer_standard_deviation_X_axis
11	avg_time_GravityAccelerometer_standard_deviation_Y_axis
12	avg_time_GravityAccelerometer_standard_deviation_Z_axis
13	avg_time_BodyAccelerometerJerk_mean_X_axis
14	avg_time_BodyAccelerometerJerk_mean_Y_axis
15	avg_time_BodyAccelerometerJerk_mean_Z_axis
16	avg_time_BodyAccelerometerJerk_standard_deviation_X_axis
17	avg_time_BodyAccelerometerJerk_standard_deviation_Y_axis
18	avg_time_BodyAccelerometerJerk_standard_deviation_Z_axis
19	avg_time_BodyGyroscope_mean_X_axis
20	avg_time_BodyGyroscope_mean_Y_axis
21	avg_time_BodyGyroscope_mean_Z_axis
22	avg_time_BodyGyroscope_standard_deviation_X_axis
23	avg_time_BodyGyroscope_standard_deviation_Y_axis
24	avg_time_BodyGyroscope_standard_deviation_Z_axis
25	avg_time_BodyGyroscopeJerk_mean_X_axis
26	avg_time_BodyGyroscopeJerk_mean_Y_axis
27	avg_time_BodyGyroscopeJerk_mean_Z_axis
28	avg_time_BodyGyroscopeJerk_standard_deviation_X_axis
29	avg_time_BodyGyroscopeJerk_standard_deviation_Y_axis
30	avg_time_BodyGyroscopeJerk_standard_deviation_Z_axis
31	avg_time_BodyAccelerometerMagnitude_mean
32	avg_time_BodyAccelerometerMagnitude_standard_deviation
33	avg_time_GravityAccelerometerMagnitude_mean
34	avg_time_GravityAccelerometerMagnitude_standard_deviation
35	avg_time_BodyAccelerometerJerkMagnitude_mean
36	avg_time_BodyAccelerometerJerkMagnitude_standard_deviation
37	avg_time_BodyGyroscopeMagnitude_mean
38	avg_time_BodyGyroscopeMagnitude_standard_deviation
39	avg_time_BodyGyroscopeJerkMagnitude_mean
40	avg_time_BodyGyroscopeJerkMagnitude_standard_deviation
41	avg_frequency_BodyAccelerometer_mean_X_axis
42	avg_frequency_BodyAccelerometer_mean_Y_axis
43	avg_frequency_BodyAccelerometer_mean_Z_axis
44	avg_frequency_BodyAccelerometer_standard_deviation_X_axis
45	avg_frequency_BodyAccelerometer_standard_deviation_Y_axis
46	avg_frequency_BodyAccelerometer_standard_deviation_Z_axis
47	avg_frequency_BodyAccelerometer_meanFreq_X_axis
48	avg_frequency_BodyAccelerometer_meanFreq_Y_axis
49	avg_frequency_BodyAccelerometer_meanFreq_Z_axis
50	avg_frequency_BodyAccelerometerJerk_mean_X_axis
51	avg_frequency_BodyAccelerometerJerk_mean_Y_axis
52	avg_frequency_BodyAccelerometerJerk_mean_Z_axis
53	avg_frequency_BodyAccelerometerJerk_standard_deviation_X_axis
54	avg_frequency_BodyAccelerometerJerk_standard_deviation_Y_axis
55	avg_frequency_BodyAccelerometerJerk_standard_deviation_Z_axis
56	avg_frequency_BodyAccelerometerJerk_meanFreq_X_axis
57	avg_frequency_BodyAccelerometerJerk_meanFreq_Y_axis
58	avg_frequency_BodyAccelerometerJerk_meanFreq_Z_axis
59	avg_frequency_BodyGyroscope_mean_X_axis
60	avg_frequency_BodyGyroscope_mean_Y_axis
61	avg_frequency_BodyGyroscope_mean_Z_axis
62	avg_frequency_BodyGyroscope_standard_deviation_X_axis
63	avg_frequency_BodyGyroscope_standard_deviation_Y_axis
64	avg_frequency_BodyGyroscope_standard_deviation_Z_axis
65	avg_frequency_BodyGyroscope_meanFreq_X_axis
66	avg_frequency_BodyGyroscope_meanFreq_Y_axis
67	avg_frequency_BodyGyroscope_meanFreq_Z_axis
68	avg_frequency_BodyAccelerometerMagnitude_mean
69	avg_frequency_BodyAccelerometerMagnitude_standard_deviation
70	avg_frequency_BodyAccelerometerMagnitude_meanFreq
71	avg_frequency_BodyBodyAccelerometerJerkMagnitude_mean
72	avg_frequency_BodyBodyAccelerometerJerkMagnitude_standard_deviation
73	avg_frequency_BodyBodyAccelerometerJerkMagnitude_meanFreq
74	avg_frequency_BodyBodyGyroscopeMagnitude_mean
75	avg_frequency_BodyBodyGyroscopeMagnitude_standard_deviation
76	avg_frequency_BodyBodyGyroscopeMagnitude_meanFreq
77	avg_frequency_BodyBodyGyroscopeJerkMagnitude_mean
78	avg_frequency_BodyBodyGyroscopeJerkMagnitude_standard_deviation
79	avg_frequency_BodyBodyGyroscopeJerkMagnitude_meanFreq

Units: 

The acceleration signal (measurements with "Accelerometer" in the name) from the smartphone accelerometer X,Y, and Z axes: 
units: standard gravity units 'g'. 

The body acceleration signal obtained by subtracting the gravity from the total acceleration.
units: standard gravity units 'g'. 

The angular velocity vector (measurements with "Gyroscope" in the name) measured by the gyroscope for each window sample:
units: radians/second.


