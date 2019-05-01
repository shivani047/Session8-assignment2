library(RcmdrPlugin.IPSUR)
data("RcmdrTestDrive")
summary(RcmdrTestDrive)

#Compute the measures of central tendency for salary and reduction which
#variable has highest center?

library(psych)
str(RcmdrTestDrive)
describe(RcmdrTestDrive)
mean(RcmdrTestDrive$salary)
mean(RcmdrTestDrive$reduction)

median(RcmdrTestDrive$salary)
median(RcmdrTestDrive$reduction)

#Histograms of salary and reduction
hist(RcmdrTestDrive$salary, main = ' Histogram of salary')
hist(RcmdrTestDrive$reduction, main = ' Histogram of reduction')

#Which measure of center is more appropriate for before and after?
describe(RcmdrTestDrive$before, RcmdrTestDrive$after)
par(mfrow = c(1,2))
hist(RcmdrTestDrive$before, xlab = 'life expectancy before exposure', main = 'frequency vs. before')
hist(RcmdrTestDrive$after, xlab = 'life expectancy after exposure', main = 'frequency vs. after')
