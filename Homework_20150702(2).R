k=read.csv(file.choose())
k
dimnames(k)
boxplot(k$value~k$region,col='bisque')
title("Kids in districts of Seoul over ages")

v2=tapply(k$value,k$age,sum)
plot(c(0:6),v2,main="The number of Kids in each age",ylab="number",xlab="age")

