# load R2WinBUGS package
library(R2WinBUGS)

###data
data<-data.frame(day=c(1,2,3,4,5,6,7),
                  asex=c(273,31,12160,60,24300,386,16040),
                  log=log10(c(273,31,12160,60,24300,386,16040)));


#####BUGS model
########  NJW7Bugs.txt  ######
#model{
#  mod[1:7] <- vector.NJWn.model(7,N0,mu,sig,pmr)
#  
#  for (i in 1:7){
#    y[i] ~ dnorm(mod[i], tau)
#    ob[i] ~ dnorm(mod[i], tau)
#  }
#  
#  tau ~ dgamma(1, 0.01)
#  N0 ~ dunif(1,4)
#  mu ~ dunif(1,48)
#  sig ~ dunif(1,48)
#  pmr ~ dunif(1,30)
#  
#  SD <-1/sqrt(tau)
#  
#  par[1]<-N0
#  par[2]<-mu
#  par[3]<-sig
#  par[4]<-pmr
#  par[5]<-tar
#  par[6]<-SD
#}
#########################################################

modelfile <- "E:/NJW7Bugs.txt"
y<-log10(c(273,31,12160,60,24300,386,16040))
data<-list("y")
par2keep <- list("ob","par","SD")
output <-bugs(model.file=file.path(modelfile),data=data,inits=NULL,
                parameters.to.save=par2keep,n.chains=2,n.iter=20000,summary.only=TRUE,
              bugs.directory="E:/WinBUGS14",
              working.directory="E:/")
