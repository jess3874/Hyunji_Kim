#################
## assignment3 ##
#################

head(mtcars)

bad<-kmeans(mtcars, center=2)

plot(mtcars$mpg, mtcars$hp, col=bad$cluster, pch=16, cex=2, xlab="MPG", ylap="Horsepower")

########

install.packages("klaR")
install.packages("caret")
install.packages("class")
install.packages("e1071") #I cant install in this vergion

library("klaR")
library("caret")
library("class")
library("e1071")

#predicit 5th column
classifier<-naiveBayes(iris[,1:4], iris[,5])
table(predict(classifier,iris[,-5]), iris[,5])

#training
model = train(x,y,trControl=trainControl(method="cv",number=10))

predict(predict(model$finalModel,x)) #predict(model,data)



######

install.packages('ElemStatLearn')
library("ElemStatLearn")

sub=sample(nrow(spam),floor(nrow(spam)*0.9))
train=spam[sub,]
test=spam[-sub,]

xTrain = train[,-58] #no spam
yTrain = train$spam

xTest = test[,-58]
yTest = test$spam

model = train(xTrain,yTrain,'nb',trControl=trainControl(method="cv", number=10))
#10fold and it didn't work...........I should ask this later
summary(m)
model$finalModel

prop.table(table(predict(model,xTest)$class,yTest))



#################### any data #####################

data=read.csv(file.choose(),header=T)
dimnames(data)

model=lm(age~education.num, data=data)
predic=predict(model, data=data)
plot(age~education.num, data=data)
lines(data$age,data$education.num)
points(data$education.num,predic,col="blue",pch=16)



newsls <- data.frame(education.num=seq(1,25,0.5))
newsls$pred <- predict(model, newsls)
points(newsls$education.num, newsls$pred, col="green")
points(newsls$education.num,newsls$pred,col="green",pch=3)




