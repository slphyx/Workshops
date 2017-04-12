# Ref. White NJ, Chapman D, Watt G (1992) The effects of multiplication and synchronicity 
# on the vascular distribution of parasites in falciparum malaria. Trans R Soc Trop Med Hyg 86:590-597.

#age distribution of parasites
InitAgeDistribution <- function(initN,lifecycle,mu,sigma)
{
  distr<-dnorm(1:lifecycle,mu,sigma)
  tot<-sum(distr[1:lifecycle])
  distr*initN/tot  
}

# aging
ShiftOneHour<-function(ls,pmf)
{
  n<-length(ls)
  c(ls[n]*pmf,ls[1:(n-1)])
}

# for comparing with the observed
countrings<-function(lst){
  MaxAge<-26   #maximum age that can be observed
  sum(lst[1:MaxAge])
}

## NJW model main function
NJW7<-function(par){
  
 initn <- par[1]
  mu <- par[2]
  sig <- par[3]
  pmf <- par[4]
  
  lc<-48
  runtime<-240
    
  biglst<-matrix(0,nrow=runtime,ncol=lc)
  
  lst <- InitAgeDistribution(initn,lc,mu,sig)
  
  biglst[1,]<-lst
  i=2
  while(i <= runtime)
  {
    lst<-ShiftOneHour(lst,pmf)
    biglst[i,]<-lst
    i<-i+1   
  }
  
  tmp<-data.frame(time=seq(1,runtime),log10=log10(apply(biglst,1,countrings)))[seq(1,7)*24,]
  data.frame(day=seq(1,7),log10=tmp$log10)  
}

## Note: data is in day but NJWout is in hour
# asex in data must be in log10 scale
# Log Likelihood
LL1<-function(data,NJWout,X){
  den<-log(dnorm(data[,2]-NJWout[,2],mean=X,sd=1))
  sum(den)
}

LL2<-function(data,NJWout,X){
  den<-0
  for(i in 1:7){
    den<-den+log(dnorm(NJWout[i,2],mean=data[i,2],sd=X)) 
  }
  den
}

#for using with optim
LLNJW<-function(x){  
  initn<-x[1]
  mu<-x[2]
  sig<-x[3]
  pmf<-x[4]
  X<-x[5]
  
    # data
    logdata<-data[,c(1,3)]  
    #model output
    njwout<-NJW7(x[1:4])    
  
    #calculate the likelihood 
    #like<-LL1(logdata,njwout,X)
    like<-LL2(logdata,njwout,X)

  #(not like in Facebook)
  like
}

#for plotting the output from NJW model and the data
ShowFits<-function(data,NJWout){
  plot(data[,c(1,3)],type="b",xlim=c(0,8),ylim=c(0,8),ylab="",xlab="")
  par(new=TRUE)
  plot(NJWout,type="l",xlim=c(0,8),ylim=c(0,8),col = "red",xlab="day",ylab="log10(parasitaemia)")
}



#########
data1<-data.frame(day=c(1,2,3,4,5,6,7),
                 asex=c(273,31,12160,60,24300,386,16040),
                  log=log10(c(273,31,12160,60,24300,386,16040)));

#par(initN, mu, sd, pmf)
data<-data1
inits<-c(10^2,10,3,7,0.1)
fits<-optim(inits,LLNJW,method=c("Nelder-Mead"),control=list("fnscale"=-1))
ShowFits(data,NJW7(fits$par))


