# Tidy Data Project  
Final project for Getting and Cleaning Data course.
The repository contains the following files:

### run_analysis.R  
Before running this R script, the required data sets must be downloaded and saved in a sub-directory called "Data". The source of the data is
[Smartphone Activity Data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

This script loads and transforms the data to create a tidy data set.  
- Read the features and activity label information into data frames. Will be used to describe the various activity measurements.  
- Read the test and training data sets into data frames. These are the measurements of human activity.  
- Read the subject and activity into data frames. These ID's will link the descriptive labels to the test and training data.  
- Merge test and training data sets.  
- Label all variables (column names) of the merged data sets.  
- Combine the merged, labeled data sets.    
- Add the activity labels to the large data set.    
- Extract only mean and standard deviation measurements from the large data set.  
- Create more descriptive names for variables.    
- Create a tidy data set consisting of the means of the variables, by subject and activity.     
- Copy the tidy data set to a text file.    


### CodeBook.md  
A code book that describes the data, variables and transformations 
used in the analysis.

### TidyData.txt  
A text file containing the tidy data set. The output of run_analysis.R  
  
  



