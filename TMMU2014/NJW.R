# Ref. White NJ, Chapman D, Watt G (1992) The effects of multiplication 
# and synchronicity on the vascular distribution of parasites in 
# falciparum malaria. Trans R Soc Trop Med Hyg 86:590-597.

#age distribution of parasites
InitAgeDistribution <- function(initN,lifecycle,mu,sigma)
{
  distr<-dnorm(1:lifecycle,mu,sigma)
  tot<-sum(distr[1:lifecycle])
  distr*initN/tot  
}

# parasite aging
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
NJW<-function(initn,lc,mu,sig,pmf,runtime){
  # empty (zeros) matrix for storing the age distribution at each time step 
  biglst<-matrix(0,nrow=runtime,ncol=lc)
  #initial age distribution of the parasites  
  lst <- InitAgeDistribution(initn,lc,mu,sig)
  
  biglst[1,]<-lst
  i=2
  while(i <= runtime)
  {
    lst<-ShiftOneHour(lst,pmf)
    biglst[i,]<-lst
    i<-i+1   
  }
  
  data.frame(time=seq(1,runtime),log10=log10(apply(biglst,1,countrings)))
}


#library("manipulate",lib.loc="PATH TO RSTUDIO LIBRARY")
#library("manipulate", lib.loc="C:/Program Files/RStudio/R/library")
library("manipulate", lib.loc="C:/Users/Sompob/Documents/R/win-library/3.0")

manipulate(plot(NJW(initn,48,mu,sig,pmf,240),xlim=c(0,245),ylim=c(1,8),xlab="time(hrs)",ylab="log10(parasite density per microliter)",type=show),
           initn=slider(10,1000),
           mu=slider(1,48),
           sig=slider(1,48),
           pmf=slider(1,30),
           show=picker("line"="l", "points"="p")
           )


### plot model output and data
PlotDatNJW<-function(data,initn,mu,sig,pmf){
  
  tmp<-NJW(initn,48,mu,sig,pmf,240)[seq(1,7)*24,]
  NJWout<-data.frame(day=seq(1,7),log10=tmp$log10)
  
  plot(data[,c(1,3)],type="b",xlim=c(0,8),ylim=c(0,8),ylab="",xlab="")
  par(new=TRUE)
  plot(NJWout,type="l",xlim=c(0,8),ylim=c(0,8),col = "red",xlab="day",
       ylab="log10(parasitaemia)")
  
  legend(6,7,c("data","model"),lty=c(1,1), lwd=c(1,1), col=c("black","red") )
  
}

data1<-data.frame(day=c(1,2,3,4,5,6,7),
                  asex=c(273,31,12160,60,24300,386,16040),
                  log=log10(c(273,31,12160,60,24300,386,16040)));

manipulate(  
  PlotDatNJW(data1,initn,mu,sig,pmf),
      initn=slider(10,1000),
      mu=slider(1,48),
      sig=slider(1,48),
      pmf=slider(1,30)
)

