## **Code Book**

This code book modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.

### Raw Data
The raw data for this procject was obtained http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones, and correspond to Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. The raw data is in this repository under the name "UCI HAR Dataset.zip".

The raw dataset included the following files:
* 'README.txt'
* 'features_info.txt': Shows information about the variables used on the feature vector.
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.
* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
* 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
* 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
* 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

### Tidy Data
The tidy data is a text file under the name tidy_data.txt.

* The data had space-separated values. 
* The first row contains the names of the variables.
* Each row represent a combination of one Activity with one Subject, and these variables are found in the first two columns.
	*Activity: The type of activity perdormed by the subject for which the 	measurements were taken.
		*'WALKING': subject was walking
		*'WALKING_UPSTAIRS': subject was walking upstairs
		*'WALKING_DOWNSTAIRS': subject was walking downstairs
		*'SITTING': subject was sitting
		*'STANDING': subject was standing
		*'LAYING': subject was standing
	*Subject: The ID for the subject participaiting in the experiment.Correspond in a range from 1 to 30.
*The measurement variables are found from 3 to 81 columns, under the names:
	* timeDomainBodyAccelerometerMeanX                              
	* timeDomainBodyAccelerometerMeanY                              
	* timeDomainBodyAccelerometerMeanZ                              
	* timeDomainBodyAccelerometerStandardDeviationX                 
	* timeDomainBodyAccelerometerStandardDeviationY                 
	* timeDomainBodyAccelerometerStandardDeviationZ                 
	* timeDomainGravityAccelerometerMeanX                          
	* timeDomainGravityAccelerometerMeanY                           
	* timeDomainGravityAccelerometerMeanZ                           
	* timeDomainGravityAccelerometerStandardDeviationX              
	* timeDomainGravityAccelerometerStandardDeviationY              
	* timeDomainGravityAccelerometerStandardDeviationZ              
	* timeDomainBodyAccelerometerJerkMeanX                          
	* timeDomainBodyAccelerometerJerkMeanY                          
	* timeDomainBodyAccelerometerJerkMeanZ                          
	* timeDomainBodyAccelerometerJerkStandardDeviationX             
	* timeDomainBodyAccelerometerJerkStandardDeviationY             
	* timeDomainBodyAccelerometerJerkStandardDeviationZ             
	* timeDomainBodyGyroscopeMeanX                                  
	* timeDomainBodyGyroscopeMeanY                                  
	* timeDomainBodyGyroscopeMeanZ                              
	* timeDomainBodyGyroscopeStandardDeviationX                     
	* timeDomainBodyGyroscopeStandardDeviationY                     
	* timeDomainBodyGyroscopeStandardDeviationZ                     
	* timeDomainBodyGyroscopeJerkMeanX                              
	* timeDomainBodyGyroscopeJerkMeanY                              
	* timeDomainBodyGyroscopeJerkMeanZ                              
	* timeDomainBodyGyroscopeJerkStandardDeviationX                 
	* timeDomainBodyGyroscopeJerkStandardDeviationY                 
	* timeDomainBodyGyroscopeJerkStandardDeviationZ                 
	* timeDomainBodyAccelerometerMagnitudeMean                      
	* timeDomainBodyAccelerometerMagnitudeStandardDeviation
	* timeDomainGravityAccelerometerMagnitudeMean                   
	* timeDomainGravityAccelerometerMagnitudeStandardDeviation      
	* timeDomainBodyAccelerometerJerkMagnitudeMean                  
	* timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation     
	* timeDomainBodyGyroscopeMagnitudeMean                          
	* timeDomainBodyGyroscopeMagnitudeStandardDeviation            
	* timeDomainBodyGyroscopeJerkMagnitudeMean              
	* timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation         
	* frequencyDomainBodyAccelerometerMeanX          
	* frequencyDomainBodyAccelerometerMeanY                         
	* frequencyDomainBodyAccelerometerMeanZ                         
	* frequencyDomainBodyAccelerometerStandardDeviationX            
	* frequencyDomainBodyAccelerometerStandardDeviationY            
	* frequencyDomainBodyAccelerometerStandardDeviationZ            
	* frequencyDomainBodyAccelerometerMeanFrequencyX                
	* frequencyDomainBodyAccelerometerMeanFrequencyY                
	* frequencyDomainBodyAccelerometerMeanFrequencyZ                
	* frequencyDomainBodyAccelerometerJerkMeanX                     
	* frequencyDomainBodyAccelerometerJerkMeanY                     
	* frequencyDomainBodyAccelerometerJerkMeanZ                     
	* frequencyDomainBodyAccelerometerJerkStandardDeviationX        
	* frequencyDomainBodyAccelerometerJerkStandardDeviationY        
	* frequencyDomainBodyAccelerometerJerkStandardDeviationZ        
	* frequencyDomainBodyAccelerometerJerkMeanFrequencyX            
	* frequencyDomainBodyAccelerometerJerkMeanFrequencyY            
	* frequencyDomainBodyAccelerometerJerkMeanFrequencyZ            
	* frequencyDomainBodyGyroscopeMeanX                             
	* frequencyDomainBodyGyroscopeMeanY                             
	* frequencyDomainBodyGyroscopeMeanZ                             
	* frequencyDomainBodyGyroscopeStandardDeviationX                
	* frequencyDomainBodyGyroscopeStandardDeviationY                
	* frequencyDomainBodyGyroscopeStandardDeviationZ                
	* frequencyDomainBodyGyroscopeMeanFrequencyX                    
	* frequencyDomainBodyGyroscopeMeanFrequencyY                    
	* frequencyDomainBodyGyroscopeMeanFrequencyZ                    
	* frequencyDomainBodyAccelerometerMagnitudeMean                 
	* frequencyDomainBodyAccelerometerMagnitudeStandardDeviation    
	* frequencyDomainBodyAccelerometerMagnitudeMeanFrequency        
	* frequencyDomainBodyAccelerometerJerkMagnitudeMean             
	* frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation
	* frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency    
	* frequencyDomainBodyGyroscopeMagnitudeMean                     
	* frequencyDomainBodyGyroscopeMagnitudeStandardDeviation        
	* frequencyDomainBodyGyroscopeMagnitudeMeanFrequency            
	* frequencyDomainBodyGyroscopeJerkMagnitudeMean                 
	* frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation    
	* frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency

### From a Raw data to Tidy data -  Transformation

The transformation process is a string of steps required and described in the assignment. That we listed below
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
	* For the identification of these measures we identify the variations of the mean which was represented by mean () and the standard deviation
 represented by std ().
3. Uses descriptive activity names to name the activities in the data set
	* Replace by the activity identificators, as correspond
		*'WALKING': subject was walking
		*'WALKING_UPSTAIRS': subject was walking upstairs
		*'WALKING_DOWNSTAIRS': subject was walking downstairs
		*'SITTING': subject was sitting
		*'STANDING': subject was standing
		*'LAYING': subject was standing
4. Appropriately labels the data set with descriptive variable names.
	* The initial f and t were expanded to frequencyDomain and timeDomain respectively.
	* The 'Acc', 'Gyro', 'Mag', 'Freq', 'mean', and 'std' were replaced with 'Accelerometer', 'Gyroscope', 'Magnitude', 'Frequency', 'Mean', and 'StandardDeviation' respectively.
	* Replaced duplicity of 'BodyBody' with 'Body'
	* Capitalize the first letter of the variables 'activity' and 'subject'
	* Were removed special characters  (i.e. '(', ')', and '-')
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
