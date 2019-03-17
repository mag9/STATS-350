#Task 1
XX <- 1:10

PP <- c(.01,.12,.13,.14,.2,.2,.1,.05,.04,.01)

sum(PP)

require(graphics)
par(mfrow = c(2,1))

plot(XX,PP,type="h",col=2,main="Pmf list",xlab="x",ylab="p(x)")
points(XX,PP,col=2);abline(h=0,col=3)

QQ <- cumsum(PP)

c(XX, PP, QQ)

plot(c(1,XX),c(0,QQ),type="s", ylab="F(x)",col=2,xlab="x",main="Cdf for user defined dist.")
abline (h=0:1, col=4)

#Task 2
Bin_pmf <- pbinom(XX, size = 10, prob = 0.6) # n stands for 'size'
Bin_cdf <- dbinom(XX, size = 10, prob = 0.6) # n stands for 'size'

require(graphics)
par(mfrow = c(2,1))

plot(XX,Bin_pmf,type="h",col=2,main="Pmf for Binomial",xlab="x",ylab="p(x)")
points(XX,Bin_pmf,col=2);abline(h=0,col=3)

plot(XX,Bin_cdf,type="s", ylab="F(x)",col=2,xlab="x",main="Cdf for Binomial")
abline (h=0:1, col=4)

Pois_pmf <- ppois(XX, lambda = 6)
Pois_cdf <- dpois(XX, lambda = 6)

plot(XX,Pois_pmf,type="h",col=2,main="Pmf for Poisson",xlab="x",ylab="p(x)")
points(XX,Bin_pmf,col=2);abline(h=0,col=3)

plot(XX,Pois_cdf,type="s", ylab="F(x)",col=2,xlab="x",main="Cdf for Poisson")
abline (h=0:1, col=4)