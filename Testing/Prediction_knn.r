ProjDirPath = "C:\\xampp\\htdocs\\Testing\\"



#Loading Necessary Packages for Prediction
library(caret)
library(kknn)


#Loading Stock data CSV File saved as table.csv for stock ticker entered by user
DataPath = paste0(ProjDirPath,"table.csv")
stockData=read.csv(DataPath)


stockData["Distance"] <- NA
no_of_row <- nrow(stockData)
for(n in 1:no_of_row){
stockData$Distance[n] <- stockData$Open[n] - stockData$Close[n+1]  
}

stockData["Polarity"] <- NA
stockData$Polarity <- ifelse(stockData$Distance>0, "Up", "Down")


PartitionData <- createDataPartition(y= stockData$Volume,p=0.40,list=FALSE)      

TrainData <- stockData[-PartitionData,]
TestData <- stockData[PartitionData,]
dim(TrainData)
dim(TestData)


model <- kknn(Polarity~.,TrainData,TestData,k=13)
prediction <- summary(model)

result <- as.matrix(prediction)
result[1]

fit <- fitted(m1)
table(TestData$Polarity, fit)

confusionMatrix(fit,TestData$Polarity)