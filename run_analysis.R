cleandata<- function()
{
##step 1 reading and merging
trainx<-read.table("./UCI HAR Dataset/train/X_train.txt")
trainy<-read.table("./UCI HAR Dataset/train/y_train.txt")
trainz<-read.table("./UCI HAR Dataset/train/subject_train.txt")
a<-cbind(trainx,trainz)
b<-cbind(a,trainy)
testx<-read.table("./UCI HAR Dataset/test/X_test.txt")
testy<-read.table("./UCI HAR Dataset/test/y_test.txt")
testz<-read.table("./UCI HAR Dataset/test/subject_test.txt")
c<-cbind(testx,testz)
d<-cbind(c,testy)
e<-rbind(b,d)
##step 2 mean and the standard deviation
meanv<-apply(e,2,mean,na.rm=TRUE)
sdv<-apply(e,2,sd,na.rm=TRUE)
##step 3 replacing with activity
f<-read.table("./UCI HAR Dataset/activity_labels.txt")
h<-e[563]
h<-sapply(h,function(x) h$x<-f[x,2])
e[563]<-h
##step 4 adding column names 
m<-read.table("./UCI HAR Dataset/features.txt")
n<-unlist(m[,2])
o<-as.vector(n)
p<-c(o,"subject","activity")
colnames(e)<-(p)
##step 5 tidying up the data
q<-melt(e,id=c("subject","activity"))
r<-dcast(q,subject+activity~variable,mean)
write.table(r,file="tidydata.txt",row.names=FALSE,col.names=TRUE,sep=" ")
}