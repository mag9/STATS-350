M <- 1000
n <- 36
XSamples <- matrix(rep(0,n*M), M, n)

for(j in 1:M)
{
  XSamples[j , ]<- rnorm(n, mean=20, sd=(3^2))
}

Xbars<-apply(XSamples, 1, mean)

hist(Xbars, nclass=30, freq=F, main="Sampling Distribution of Xbar when n=16")
dens<-density(Xbars)
lines(dens$x, dens$y, col=2)

mean(Xbars)
var(Xbars)
sd(Xbars)
summary(Xbars)