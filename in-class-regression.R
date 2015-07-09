#1.
first=c(20,32,35,34,40,51,52,56,57,68)
second=c(23,34,36,44,42,51,54,57,54,62)
data=cbind(first,second)
dataa=as.data.frame(data)
output=lm(second~first,data=dataa)
summary(output)

#a.
plot(first,second) 
#b. strong positive linear
#c.
r=cor(first,second) #0.9690331
SE=sqrt((1-r^2)/(length(first)-2))
SE #0.0873
summary(output)
#second=first*0.80485+9.88406
#d.
#standard deviation of correlation coefficient
#e.
out=cor.test(first,second)
out$conf.int #interval:[0.8705612,0.9928768]

#2-a.
newsecond=second+30
cor(first,newsecond)
newdata=as.data.frame(cbind(first,newsecond))
output2=lm(newsecond~first,data=newdata)
summary(output2)
#it gave same coefficient of first and second data.(same slope)
#But the intercept was changed.

#2-b.
newfirst=first*100
cor(newfirst,second)
cor.test(newfirst,second)
newdata2=as.data.frame(cbind(newfirst,second))
output3=lm(second~newfirst,data=newdata2)
summary(output3)
#Estimate on newfirst was changed. It means the slope was changed.

#3.
#3-a.
home=c(-1.3,-0.5,-0.3,0.2,0.1,0.5,1,0.3,0.4,0.5,0.1,0.2,
0.4,1.3,1.2,1.4,1.6,1.6,1.8,3.1)
mortal=c(4,22,0,0,11,13,17,25,24,27,29,33,33,42,33,20,19,19,25,65)
mdata=as.data.frame(cbind(home,mortal))
plot(home,mortal)#weak positive linear
#3-b.
out2=lm(mortal~home)
abline(out2)
#3-c.
summary(out2)
a=out2$coefficients[1]
b=out2$coefficients[2]
a;b
#3-d.
newout=lm(mortal[-20]~home[-20])
abline(newout)
summary(newout)
