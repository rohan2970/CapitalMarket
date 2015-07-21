library(caret)
library(kknn)
rp = read.csv("C:/xampp/htdocs/Server/table.csv")


rp["Distance"] <- NA
nrow<- nrow(rp)
for(n in 1:nrow){
rp$Distance[n] <- rp$Open[n] - rp$Close[n+1]  
}

rp["Polarity"] <- NA
rp$Polarity <- ifelse(rp$Distance>0, "Up", "Down")


Train <- createDataPartition(y= rp$Volume,p=0.40,list=FALSE)      

train1 <- rp[-Train,]
test1 <- rp[Train,]
dim(train1)
dim(test1)


m1 <- kknn(Polarity~.,train1,test1,k=13)
prediction <- summary(m1)

result <- as.matrix(prediction)
result[1]

fit <- fitted(m1)
table(test1$Polarity, fit)

confusionMatrix(fit,test1$Polarity)