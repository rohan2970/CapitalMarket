library(e1071)
library(ggplot2)
setwd("C:/Users/Rohan/Desktop/CapitalMarket")
dataset <- read.csv("infy.csv", sep = ";", header=TRUE)
nb <-ncol(dataset)
ids <- dataset[,1]
class <-as.character(dataset[,nb])
attribs <- dataset[,c(-1,-nb)]
model <- svm(attribs, class,type="C-classification")
prediction <- predict(model,attribs)
prediction
tab <- table(pred = prediction, true = class)