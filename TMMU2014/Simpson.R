#Ref.Simpson, J.A., et al., Population dynamics of untreated Plasmodium falciparum malaria 
#    within the adult human host during the expansion phase of the infection. 
#    Parasitology, 2002. 124(Pt 3): p. 247-63
# R version by Sompob Saralamba

Simpson<-function(a,PMR,c,period,k,t){
  log10Y<-a+(0.5*log10(PMR)*t+c*sin((2*pi/period)*t+k))  
  log10Y  
}

manipulate(
  plot(data.frame(time=seq(1,7,0.01),log10Y=Simpson(a,PMR,c,period,k,seq(1,7,0.01)))
  ,xlim=c(0,8),ylim=c(0,8),type=show,xlab="time(days)",ylab='log10Y'),
  a=slider(0,12,label="density at day 0"),
  PMR=slider(1,50,label="multiplication rate"),
  c=slider(0.01,2,0.01,label="amplitude"),
  period=slider(0.01,7,0.01,label="period"),
  k=slider(0.01,7,0.01,label="phase"),
  show=picker("line"="l", "points"="p")
  )
