# Code Book  

## Project Description  

The goal of this analysis is to obtain raw data and create a tidy data set.

## Data Source  

The growth of wearable computing has made available large amounts of data on human activity. This data set represents measurements from the accelerometers and gyroscopes of a smartphone for 30 subjects (individual people).  

The 30 individuals performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, measurements were captured for 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The data set has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The original study description may be read at [Smartphone Activity](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)  
The data source is [Smartphone Activity Data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)  

**Citation:** Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.  


## Raw Data Files

- **activity_labels.txt** Descriptive labels and numnerical ID for the 6 activities  
- **features.txt** Labels for the raw data  
- **featuresinfo.txt** Explains the feature labels    
- **train/X_train.txt** Training set of measurements  
- **train/y_train.txt** Labels for training set  
- **test/X_test.txt** Test set of measurements  
- **test/y_test.txt** Labels for test set

## Data Transformations  

Details of the tranformations can be found in **README.md**  

- The test and training data sets were combined.  
- The variables were labeled using the **features.txt** file.   
- Descriptive activity labels were added using the **activity_labels.txt** file.  
- A subset containing mean and standard deviation measurements was created.  
- Variable names are changed to be more descriptive.    

## Tidy Data Set  

The tidy data set is created by calculating the mean by subject and by activity type. The result is a data frame with 180 rows and 68 columns. This data set is saved as a text file TidyData.txt.

## Variables of the Tidy Data Set  

 [1] SubjectID                                    
 [2] ActivityName                    
 [3] TimeBodyAccelerator-Mean-X                  
 [4] TimeBodyAccelerator-Mean-Y                  
 [5] TimeBodyAccelerator-Mean-Z                 
 [6] TimeBodyAccelerator-StDev-X                 
 [7] TimeBodyAccelerator-StDev-Y                 
 [8] TimeBodyAccelerator-StDev-Z               
 [9] TimeGravityAccelerator-Mean-X               
[10] TimeGravityAccelerator-Mean-Y               
[11] TimeGravityAccelerator-Mean-Z              
[12] TimeGravityAccelerator-StDev-X              
[13] TimeGravityAccelerator-StDev-Y              
[14] TimeGravityAccelerator-StDev-Z              
[15] TimeBodyAcceleratorJerk-Mean-X              
[16] TimeBodyAcceleratorJerk-Mean-Y              
[17] TimeBodyAcceleratorJerk-Mean-Z             
[18] TimeBodyAcceleratorJerk-StDev-X             
[19] TimeBodyAcceleratorJerk-StDev-Y             
[20] TimeBodyAcceleratorJerk-StDev-Z            
[21] TimeBodyGyroscope-Mean-X                    
[22] TimeBodyGyroscope-Mean-Y                    
[23] TimeBodyGyroscope-Mean-Z                    
[24] TimeBodyGyroscope-StDev-X                    
[25] TimeBodyGyroscope-StDev-Y                   
[26] TimeBodyGyroscope-StDev-Z                  
[27] TimeBodyGyroscopeJerk-Mean-X                
[28] TimeBodyGyroscopeJerk-Mean-Y                 
[29] TimeBodyGyroscopeJerk-Mean-Z                
[30] TimeBodyGyroscopeJerk-StDev-X                
[31] TimeBodyGyroscopeJerk-StDev-Y                
[32] TimeBodyGyroscopeJerk-StDev-Z              
[33] TimeBodyAcceleratorMagnitude-Mean          
[34] TimeBodyAcceleratorMagnitude-StDev         
[35] TimeGravityAcceleratorMagnitude-Mean       
[36] TimeGravityAcceleratorMagnitude-StDev       
[37] TimeBodyAcceleratorJerkMagnitude-Mean      
[38] TimeBodyAcceleratorJerkMagnitude-StDev      
[39] TimeBodyGyroscopeMagnitude-Mean             
[40] TimeBodyGyroscopeMagnitude-StDev          
[41] TimeBodyGyroscopeJerkMagnitude-Mean         
[42] TimeBodyGyroscopeJerkMagnitude-StDev        
[43] FrequencyBodyAccelerator-Mean-X             
[44] FrequencyBodyAccelerator-Mean-Y             
[45] FrequencyBodyAccelerator-Mean-Z             
[46] FrequencyBodyAccelerator-StDev-X             
[47] FrequencyBodyAccelerator-StDev-Y             
[48] FrequencyBodyAccelerator-StDev-Z            
[49] FrequencyBodyAcceleratorJerk-Mean-X         
[50] FrequencyBodyAcceleratorJerk-Mean-Y         
[51] FrequencyBodyAcceleratorJerk-Mean-Z         
[52] FrequencyBodyAcceleratorJerk-StDev-X        
[53] FrequencyBodyAcceleratorJerk-StDev-Y        
[54] FrequencyBodyAcceleratorJerk-StDev-Z         
[55] FrequencyBodyGyroscope-Mean-X               
[56] FrequencyBodyGyroscope-Mean-Y                
[57] FrequencyBodyGyroscope-Mean-Z               
[58] FrequencyBodyGyroscope-StDev-X              
[59] FrequencyBodyGyroscope-StDev-Y               
[60] FrequencyBodyGyroscope-StDev-Z              
[61] FrequencyBodyAcceleratorMagnitude-Mean      
[62] FrequencyBodyAcceleratorMagnitude-StDev     
[63] FrequencyBodyAcceleratorJerkMagnitude-Mean   
[64] FrequencyBodyAcceleratorJerkMagnitude-StDev  
[65] FrequencyBodyGyroscopeMagnitude-Mean         
[66] FrequencyBodyGyroscopeMagnitude-StDev        
[67] FrequencyBodyGyroscopeJerkMagnitude-Mean     
[68] FrequencyBodyGyroscopeJerkMagnitude-StDev   
  
    
  
  
  
