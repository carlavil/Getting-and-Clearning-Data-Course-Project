Getting-and-Clearning-Data-Course-Project
=========================================
Variables:
1) activity - activity being performed
2) subject - subject preforming the activity
3 - 68) mean and standard deviation for each reading:

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

=============================================================================

Code

1) Loads all needed data sets to R:
X_test.txt
X_train.txt
Y_test.txt
Y_train.txt
subject_test.txt
subject_train.txt
activity_labels.txt
features.txt

2) Combines train and test data for each X, Y , and subject using rbind
3) assigns the name subject to the signle column in the subject data set
4) assigns the names contained in the features file to the columns in the X data set
5) By ppplying a Regular expression with grep to the column name, selects only colums with medians and standard deviations from X
6) Converts Y into a factor using activity_label as the level
7) Combines activity, subject and X into a tidy data set using cbind
8) Uses the aggregate function with the function mean as argument and activity,subject as  the indexes to create another tidy data set with means of readings by activity/subject
9) It write both files as text files in the working directory. (tidy1.txt and tidy2.txt)



