

#P(x<1) if mean=0 and sd=1
pnorm(1)

#or
pnorm(1, mean=0, sd=1)



#P(x<2.75)
pnorm(115, mean=100, sd=15)



#P(x>131.5)
1-pnorm(131.5, mean=100, sd=15)
pnorm(131.5, mean=100, sd=15, lower=FALSE)




#P(X<x)=0.85
qnorm(0.85, mean=268, sd=15)
qnorm(0.15, mean=268, sd=15, lower=FALSE)
