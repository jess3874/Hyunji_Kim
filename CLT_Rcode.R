mdice=NULL
jess=function(x,y){
for(i in 1:y){
dice<-sample(c(1,2,3,4,5,6),size=x,rep=T)
mdice[i]<-mean(dice)
}
return(mdice)
}

clt=jess(10000,10000)
hist(clt)

a=jess(100000)
plot(a)
hist(a)