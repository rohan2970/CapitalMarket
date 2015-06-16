stockInfo2 <- read.csv('infy.csv')

library(ggplot2)
library(caret)
inTrain <- createDataPartition(y=stockInfo2$Number.Of.Trades,p=0.75,list=FALSE)


training <- stockInfo2[inTrain,]
testing <- stockInfo2[-inTrain,]

dim(training)
dim(testing)

#featurePlot(x=training[,c("Open.Price","Close.Price","High.Price")],y=training$Number.Of.Trades,plot="pairs")


qplot(Price.Date,Number.Of.Trades,data=training)

#qq + geom_smooth(method='lm', formula= y~x)

#ggplot(aes(Price.Date,Number.Of.Trades),data=training)+ geom_point(alph=0.05,position=position_jitter(h=0),color='orange')
               
nsv <- nearZeroVar(training,saveMetrics=TRUE)
nsv
                                                                  

