library(neuralnet)

#Loading the dataset
creditrisk_data<-read.csv("cleansed_dataset.csv",header = TRUE)
creditrisk_data$final_mark_dummy<-as.factor(creditrisk_data$final_mark_dummy)
head(creditrisk_data)
names(creditrisk_data)
str(creditrisk_data)
tail(creditrisk_data)
summary(creditrisk_data)
nrow(creditrisk_data)
ncol(creditrisk_data)
dim(creditrisk_data)

#Good exploration dcode
skimr::skim(creditrisk_data)

#Following codde will be used to determine the important variables to be considered
install.packages("Boruta")
library(Boruta)

boruta_output<-Boruta(final_mark_dummy~.,data=na.omit(creditrisk_data),doTrace=0)
print(boruta_output)
plot(boruta_output)
#Sampling the original dataset
#We have a problem in class imbalance
set.seed(1234)
pd <- sample(2, nrow(creditrisk_data), replace=TRUE, prob=c(0.7,0.3))
trainingdata<-creditrisk_data[pd==1,]
testdata<-creditrisk_data[pd==2,]

dim(trainingdata)
dim(testdata)

#Applying the ANN on the training dataset
creditnet<-neuralnet(final_mark_dummy~.,trainingdata,hidden = 4,lifesign = "minimal",linear.output = FALSE,threshold = 0.1)

#Plotting the created neurla network
plot(creditnet,rep="best")

#Testing the output accuracy
#Selecting only AGE and LTIR from the testing dataset
head(testdata)
temp_test<-subset(testdata,select=c("age","LTIR"))
head(temp_test)

#predicting the output of the testing dataset based on the trained model (creditnet)
creditnet_results<-compute(creditnet,testdata)
names(creditnet_results)
head(creditnet_results,5)
str(creditnet_results)

#Checking the accuracy of the generated results on test dataset
results<-data.frame(actual=testdata$final_mark_dummy,prediction=creditnet_results$net.result)
head(results)
results[90:105,]
#Rounding the predicted results
results$prediction<-sapply(creditnet_results$net.result,round,digit=0)
results
#Building a confusion matrix 
confusionmatrix1<-table(testdata$final_mark_dummy,results$prediction)
print(confusionmatrix1)
#Model accuracy percentage
sum(diag(confusionmatrix1))/sum(confusionmatrix1)
#Model Error percentage
1-sum(diag(confusionmatrix1))/sum(confusionmatrix1)
