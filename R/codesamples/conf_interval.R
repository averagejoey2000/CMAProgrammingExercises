# Confidence interval for a population proportion. 

prop.test(x=135, n=420000, conf.level=0.95)

# Confidence interval for a population mean if sigma is Known.
 

z.test = function(mu,sigma,n,conf_lev){
  
  L= mu-qnorm(conf_lev, lower.tail=TRUE)*sigma/sqrt(n)
  U= mu+qnorm(conf_lev, lower.tail=TRUE)*sigma/sqrt(n)
  return(list(L, U))
  

  
}
z.test(152.16,30.84,45,0.92)


# Confidence interval for a population mean if sigma is NOT Known.



data=read.csv("hours_sleep.csv")
data

t.test(data$x, conf.level=0.95)



################


t.test = function(mu,sd,n,conf_lev){
  
  L= mu-qt(1-(1-conf_lev)/2, lower.tail=TRUE, df=n-1)*sd/sqrt(n)
  U= mu+qt(1-(1-conf_lev)/2, lower.tail=TRUE, df=n-1)*sd/sqrt(n)
  return(list(L, U))
  
  
  
}
t.test(98.9, 0.67, 184, 0.95)
