############L6###################
#What we learned from here?
#Big sample's random variable follows CLT!
#percentile norm function shows us where the exact number is in percentile.
#function things? 

#dicefunction
roll=function(x){
dice1=sample(c(1,2,3,4,5,6),size=x,rep=T)
dice2=sample(c(1,2,3,4,5,6),size=x,rep=T)
ss=dice1+dice2
print(ss)
}
c=roll(10000)
plot(c)
hist(c)
par(mfrow=c(1,2))
hist(c,freq=F)
plot(ecdf(c))

#rnorm and pnorm
r=rnorm(10000,mean=0,sd=1)
hist(r)
#
pnorm((70-65.2)/5)
#
1-pnorm((1-3)/sqrt(5))