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

pnorm((70-65.2)/5)