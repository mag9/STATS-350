#Game 1
xx<-rbinom(n=200, 1, 1/6)
table (xx==1)

xx<-rbinom(n=400, 1, 1/6)
table (xx==1)

xx<-rbinom(n=500, 1, 1/6)
table (xx==1)

xx<-rbinom(n=800, 1, 1/6)
table (xx==1)

xx<-rbinom(n=1000, 1, 1/6)
table (xx==1)

#Game 2
xx<-rbinom(n=200, 4, 1/6)
table(xx>0)

xx<-rbinom(n=400, 4, 1/6)
table(xx>0)

xx<-rbinom(n=500, 4, 1/6)
table(xx>0)

xx<-rbinom(n=800, 4, 1/6)
table(xx>0)

xx<-rbinom(n=1000, 4, 1/6)
table(xx>0)

#Game 3
xx<-rbinom(n=200, 24, 1/36)
table(xx>0)

xx<-rbinom(n=400, 24, 1/36)
table(xx>0)

xx<-rbinom(n=500, 24, 1/36)
table(xx>0)

xx<-rbinom(n=800, 24, 1/36)
table(xx>0)

xx<-rbinom(n=1000, 24, 1/36)
table(xx>0)