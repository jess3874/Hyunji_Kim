#[1]##################################
scores=c(90,95,89,71,73,96,87,95,107,89,96,80,97,95
,102,97,93,101,82,83,74,91,83,98,95,111,99,120,93,84)

#a
sample_mean=mean(scores)
#b
#It wouldn't be likely to exactly equal to the population parameter.
#c
se=sd(scores)/sqrt(30)
#d
The spread of the samping distribution of the sample mean.
standard error is the approximate level of error of your data from a population mean.
#e
mean(scores)-(1.96*sd(scores)/sqrt(30))
mean(scores)+(1.96*sd(scores)/sqrt(30))
t.test(scores)
#f
The interval represents the most plausible values for the population mean.
In roughly 95% of the random samples from the population, 
the interval will include the true pop mean.
The interval of estimate is narrow enough.  

#[2]##################################
Male=c(220.1,218.6,229.6,228.8,222.0,224.1,226.5)
Female=c(223.4,221.5,230.2,224.3,223.8,230.8)
t.test(Male,Female) 
#Null hypothesis: Male and Female have same mean cholesterol concentrations.
#P-value = 0.5405>0.05, so that we can not reject the null hypothesis.
#Base on the data we have, there are no difference between Male and Female mean cholesterol level.
#95 percent confidence interval: (-6.386747,3.539128)

#[3]##################################
#a. The treatment has small effect. 
#False. The p-value doesn't say the size of the effect.
#b. The treatment has some effect. 
#True. The null hypothesis rejected. so there would be.
#c. The probability of commiting a Type 1 error is 0.04.
#False. alpha is 0.05 for this test.
#d. The probability of commiting a Type 2 error is 0.04.
#False. Type2 error depended on the effect size, so we can not know about the beta.
#e. The null hypothesis would not have been rejected if the significance levl was 
alpha=0.01.
#True.

#[4]##################################
A=c(248,236,269,254,249,251,260,245,239,255)
B=c(380,391,377,392,398,374)
wilcox.test(1.5*A,B)

#[5]##################################
Standard deviation is a measure of dispersion within your data set, 
so it is just a decriptive statistic from data set.
Whereas standard error is the level of error (dispersion) of your data from 
a population mean, so the standard error for sample mean is an similarity 
between statistic of sample and statistic of population.
Also, we could know if N become bigger, then the standard error became small and it means
the sample mean and population mean are very similar. 
