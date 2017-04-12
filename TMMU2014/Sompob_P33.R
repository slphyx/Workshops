##################################################################################################
# Saralamba et al. Intrahost modeling of artemisinin resistance
#   in Plasmodium falciparum PNAS  397-402, 
#   doi: 10.1073/pnas.1006113108
# 
# R Version adapted from http://demonstrations.wolfram.com/AModelOfPlasmodiumFalciparumPopulationDynamicsInAPatientDuri/
# by sompob@tropmedres.ac
#
#################################################################################################


#age distribution of parasites on admission
distributeN <- function(initN,lifecycle,mu,sigma)
{
  distr<-dnorm(1:lifecycle,mu,sigma)
  tot<-sum(distr[1:lifecycle])
  distr*initN/tot  
}

# multiply the last with pmr and then
# shift the vector to the right one step
shiftonehour<-function(ls,pmr)
{
  n<-length(ls)
  c(ls[n]*pmr,ls[1:(n-1)])
}

#drug efficacy (killing rate)
eff<-function(c, gamma, ec50, emin, emax)
{
 emin+(emax-emin)*c^gamma/(c^gamma + ec50^gamma)
}

#sequestration function
pringfunc<-function(i,a1,a2)
{
  ifelse(i < a1, 1 ,exp(log(0.5)*(i-a1)/(a2-a1)))
}

#dot vector
lsdot<-function(ls1,ls2)
{
  n1<-length(ls1)
  n2<-length(ls2)
  ifelse(n1==n2,tmp<-ls1*ls2,tmp<-NULL)
  tmp
}

#the function for counting the circulate parasites
countring<-function(ls,age,fn)
{
  #   fn!=1  don't use the partition function
  #   fn=1 use the partition functio
  #   age=c(AgeBegin,AgeEnd) range of the ring stage
  agebegin=age[1]
  ageend=age[2]
  n<-length(ls)
  pls=pringfunc(1:n,agebegin,ageend)
  
  ifelse(fn==1,tot<-sum(ls*pls),tot<-sum(ls[agebegin:ageend]))
  tot
}

#return the list of constants for concentration function
concmod.const<-function(concdatname)
{
  dat<-matrix(scan(concdatname,0,quiet=TRUE),ncol=2,byrow=TRUE)
  maxpoint<-length(2)
  #position of max concentration
  maxpoint<-which.max(dat[1:nrow(dat),2])
  #max time 
  endtime<-dat[nrow(dat),1]
  #time @ max concentration
  tmaxconc<-dat[maxpoint,1]
  
  #absorption
  part1<-dat[1:maxpoint,2]
  time1<-dat[1:maxpoint,1]
  # y = mx
  lm.ab<-lm(part1~time1-1) 
  m<-as.vector(coef(lm.ab))
  
  #elimination
  eldat<-as.data.frame(dat[maxpoint:nrow(dat),1:2])
  #y = a exp(-ke t)
  lm.el<-nls(V2 ~ a*exp(-ke*V1),
    start=list(a=200,ke=0.5),data=eldat)
  a<-as.vector(coef(lm.el))[1]
  ke<-as.vector(coef(lm.el))[2]  
  
  #output
  c(m,a,ke,tmaxconc)
}

#calculate the concentration @ time t
concmod.fn<-function(m,a,ke,tmaxconc,t)
{
  ifelse(t<tmaxconc,fn<-m*t,fn<-a*exp(-ke*t))
  fn
}

#generate the list of concenstration and drug efficacies
concmod.list<-function(concdatname,ndrug,everyh,gamma,ec50,emin,emax)
{
  # concdatname = the file name of DHA data (tab delimited)
  # gamma = c(gamma@ring,gamma@trop,gamma@schi)
  # ec50 = c(ec50@ring,ec50@trop,ec50@schi)
  # emin = c(emin@ring,emin@trop,emin@schi)
  # emax = c(emax@ring,emax@trop,emax@schi)
  
  TIMEMAX=1000
  constls<-concmod.const(concdatname)
  
  output<-matrix(0,nrow=TIMEMAX,ncol=5)
  conc=0
  j=0
  nd=0
  for(i in c(1:(ndrug*everyh)))
  {
    conc<-concmod.fn(constls[1],constls[2],constls[3],constls[4],j)
    if(j!=everyh)
    {
      output[i,1]=i
      output[i,2]=conc
      output[i,3]=eff(conc, gamma[1], ec50[1], emin[1], emax[1])
      output[i,4]=eff(conc, gamma[2], ec50[2], emin[2], emax[2])
      output[i,5]=eff(conc, gamma[3], ec50[3], emin[3], emax[3])
    }
    
    if((j==everyh)&&(nd<ndrug))
    {
      nd=nd+1
      conc=conc+concmod.fn(constls[1],constls[2],constls[3],constls[4],j)
      output[i,1]=i
      output[i,2]=conc
      output[i,3]=eff(conc, gamma[1], ec50[1], emin[1], emax[1])
      output[i,4]=eff(conc, gamma[2], ec50[2], emin[2], emax[2])
      output[i,5]=eff(conc, gamma[3], ec50[3], emin[3], emax[3])
      j=0
    }
    j=j+1
  }

  j=everyh
  for(i in c((ndrug*everyh):TIMEMAX))
  {
    conc=conc+concmod.fn(constls[1],constls[2],constls[3],constls[4],j)
    output[i,1]=i
    output[i,2]=conc
    output[i,3]=eff(conc, gamma[1], ec50[1], emin[1], emax[1])
    output[i,4]=eff(conc, gamma[2], ec50[2], emin[2], emax[2])
    output[i,5]=eff(conc, gamma[3], ec50[3], emin[3], emax[3])
    j=j+1
  }
  output
}


ki<-function(t,concls)
{
  #concls = the matrix from concmod.list
  #t = 1/alpha see Saralamba, et al. PNAS (2011)
  
  lsk<-matrix(0,ncol=3,nrow=1000)
  for(i in c(1:1000))
  {
    lsk[i,]<-c((1/t)*log(100/(100-concls[i,3])),(1/t)*log(100/(100-concls[i,4])),(1/t)*log(100/(100-concls[i,5])))
  }
  lsk
}

# decay constant (see Saralamba ,et al. PNAS 2011)
fdecay<-function(ages,lst,attime,lsk,stages)
{
    i<-ages
    tmp<-lst[i]
    if(stages[i]==1){tmp<-lst[i]*exp(-lsk[attime,1])}
    if(stages[i]==2){tmp<-lst[i]*exp(-lsk[attime,2])}
    if(stages[i]==3){tmp<-lst[i]*exp(-lsk[attime,3])}
    tmp
}

# define the kill zone
whichRTS<-function(lst,KZ)
{
  #   (*0=not in the kill zone 1=Rings 2=Trophozoites 3=Schizonts*)
  #   (*KZ=c(BeginRing,EndRing,BeginTrop,EndTrop,BeginSchi,EndSchi)  
  tmp<-c(1:length(lst))*0
  for(i in c(1:length(lst)))
  {
    if(KZ[1]<=i&&i<=KZ[2]){tmp[i]<-1}
    if(KZ[3]<=i&&i<=KZ[4]){tmp[i]<-2}
    if(KZ[5]<=i&&i<=KZ[6]){tmp[i]<-3}
  }
  tmp
}

#resistance index
ri<-function(ec50,emax,gamma,t)
{
  # t = 1/alpha  see Saralamba et al., PNAS 2011
  t*ec50/(emax*gamma)
}

# main function 
ss.model<-function(initn,pmr,mu,sigma,lc,KZ,concfile,everyh,ndrug,
    gamma,ec50,emin,emax,t,runmax)
{ 
  ## t = 1/alpha
  time<-runmax
  
  biglst<-matrix(0,nrow=runmax,ncol=lc)
  
  concls = concmod.list(concfile, ndrug, everyh, gamma, ec50, emin, emax)
  lsk<-ki(t,concls)
  
  lst = distributeN(initn,lc,mu,sigma)
  stages <- whichRTS(lst, KZ)
  
  # biglst - the parasite age distribution over time 
  biglst[1,]<-lst
  i=1
  while(i<time)
  {
    i<-i+1
    lst<-shiftonehour(lst, pmr)
    
    for(j in c(1:lc))
    {
      lst[j]<-fdecay(j,lst,i,lsk,stages)
    }
    biglst[i,]<-lst    
  }
  # output - the circulating parasites 
  mod<-data.frame(time=seq(1,runmax),log10=log10(apply(biglst,1,function(x) countring(x,c(6,26),1))))
  #output for P33
  mod[c(0,2,4,6,8,12,18,24,30,36,42,48,54,60,66,72,78,84,90)+1,]
}


## testing 

library("manipulate")


plotX<-function(ls){
  plot(ls,type="l",xlim=c(0,100),ylim=c(0,15),xlab="time(hrs)",ylab="log10 parasitaemia",col="red",lty=1)
  abline(h=8,lty=2)
  obp<-read.csv("paraP33.csv")
  points(obp$time,obp$log.par,col="red")
}

# list of the parameters for ss.model
# initn,pmr,mu,sigma,lc,KZ,concfile,everyh,ndrug,gamma,ec50,emin,emax,t,runmax

manipulate(
  plotX(ss.model(1.89*(10^12),10,16,8,48,c(6,21,22,38,39,44),"dhaConcP33.txt",24,7,
                 c(2.86568,4.40752,4.407525),c(e50R,e50T,e50S),c(0,0,0),c(99.9453,76.2215,76.2215),3.96856,192)),                 
#  initn=slider(1,13,label="log10(init N)"),
#  pmr=slider(1,50,10,label="multiplication factor"),
#  mean=slider(1,48,10,label="mean age (hrs)"),
#  sd=slider(1,48,5,label="SD of age (hrs)"),
#  bR=slider(1,48,6,label="begin Ring"),
#  eR=slider(1,48,26,lable="end Ring"),
#  eT=slider(1,48,38,label="end Trop"),
#  eS=slider(1,48,44,label="end Schi"),
#  dinv=slider(1,48,24,label="drug interval"),
#  ndrg=slider(1,10,7,label="number of drugs"),
#  gR=slider(0.5,10,6.5,label="Ring gamma"),
#  gT=slider(0.5,10,6.5,label="Trop gamma"),
#  gS=slider(0.5,10,6.5,label="SChi gamma"),
  e50R=slider(0.001,100,label="Ring EC50"),
  e50T=slider(0.001,100,label="Trop EC50"),
  e50S=slider(0.001,100,label="Schi EC50")
#  emR=slider(50,99.999,99.999,label="Ring max eff"),
#  emT=slider(50,99.999,99.999,label="Trop max eff"),
#  emS=slider(50,99.999,99.999,label="Schi max eff"),
#  T4alpha=slider(1,10,6,label="1/alpha")
)


