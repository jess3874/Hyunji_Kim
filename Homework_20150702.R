# SKKU ISS 2015, Lecture 4 Assignments
# Hyunji Kim, Statistics

#clean variables
rm(list=ls(all=TRUE))

# read in data
p <- read.csv(file.choose()) 
dimnames(p)

# (1) Compare the precipitation from 1999 to 2005.  Are they different?
five=p[p$Year==2005,]
nine=p[p$Year==1999,]
mm=t.test(five$Value,nine$Value)
mm

boxplot(log10(Value)~Year,data=rbind(five,nine))
lol=p[p$Year>=1999,]
plot(lol$Year,lol$Value)
boxplot(lol$Value~lol$Year)

m=aov(Value~Year,data=p[p$Year>=1999,])
summary(m)

# (2) Precipitation for all countries over time.

fit=lm(Value~Year,data=p)
newYear=c(1991:1994)
newValue=newYear*9935-19630987
names(newValue)=c(1991:1994)

meannn=tapply(P$Value,P$Year,mean)
yy=as.vector(c(meannn[1],newValue,meannn[-1]))

plot(x=c(1990:2009), y=yy, main='Precipitation for all countries over time',xlab='Year',ylab='Precipitation')
abline(lm(Value ~ Year, data=P))
