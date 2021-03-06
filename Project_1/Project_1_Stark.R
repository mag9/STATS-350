#Task 2
MHW <- read.table('MHW.txt', header=TRUE, sep=',')
head(MHW)
MHW[1:10, ]
attach(MHW)

#Task 3
summary(MHW)
summary(grain)
summary(straw)
min(grain)
max(grain)
mean(grain)
median(grain)
var(grain)
sd(grain)
quantile(grain)
IQR(grain)

min(straw)
max(straw)
mean(straw)
median(straw)
var(straw)
sd(straw)
quantile(straw)
IQR(straw)

yield.ratio=grain/straw

#Task 4
stem(grain)
stem(straw)
hist(grain)
hist(straw)

hist(straw, nclass=30, col = "lightblue", border = "red", main = "The MHW Data", xlab = "Straw yield per plot")
hist(grain, breaks = seq(2.6, 5.2, by = 0.1), col = "lightblue", border = "red", main = "The MHW Data", xlab = "Grain yield per plot")

boxplot(grain)
boxplot(straw)
boxplot(grain, straw)

plot(grain, straw)