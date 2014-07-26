X_test <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt", quote="\"")
Y_test <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Y_test.txt", quote="\"")
X_train <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt", quote="\"")
Y_train <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Y_train.txt", quote="\"")
subject_test <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt", quote="\"")
subject_train <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt", quote="\"")
labels <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt", quote="\"")
features <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt", quote="\"")
X <- rbind(X_train,X_test)
Y <- rbind(Y_train,Y_test)
subject <- rbind(subject_train,subject_test)
colnames(subject) <- 'subject'
colnames(X) <- features[,2]
ptd <- '.*-mean\\(\\).*|.*-std\\(\\).*'
ndx = grep(ptd, features$V2, perl=T)
X <- X[,ndx]
activity <- factor(Y$V1,labels=labels$V2)
Z <- cbind(activity,subject,X)
W <- aggregate(Z[,3:50],list(Z$activity,Z$subject),mean)
write.table(Z,"tidy1.txt")
write.table(W,"tidy2.txt")
Z
