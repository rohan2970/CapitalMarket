library(quantmod)
library(xts)
library(caret)
library(ggplot2)
library(forecast)
data1=read.csv("nestle.csv")
data2 = data1[1:10,5]
weighted = 100
sumer = 0
emasum = 0
for(i in seq(1,10,1)){
  emasum = emasum + data2[i]
}
emasum
result = emasum/10

result
