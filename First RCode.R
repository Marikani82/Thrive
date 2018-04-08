setwd("E:\Kaggle Project")
mydata = read.csv("Training.csv",stringsAsFactors=FALSE)
str(mydata)
table(Training$Survived) ##Summary statistics functions in R.Training set, 342 passengers survived, while 549 died.
prop.table(table(Training$Survived)) ## How about a proportion?

mydata1=read.csv("Test.CSV",stringsAsFactors = FALSE)

Test$Survived = rep(0,418) ##Since there was no "Survived" column in the dataframe, it will create one for us and repeat our "0" prediction 418 times, the number of rows we have
View(Test)
submit <- data.frame(PassengerId = Test$PassengerId, Survived = Test$Survived)
write.csv(submit, file = "FirstSubmission.csv", row.names = FALSE)
prop.table(table())
