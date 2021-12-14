
# Hypothesis testing for two population means

# The sample data here is the cholesterol levels (mg/dl) for 10 men diagnosed with high cholesterol. 
#The first sample represents levels from 10 men who used the drug 
#and the second sample from 10 different men who did not use the drug. 
#Test the claim that the mean cholesterol level for all men who use the drug is less than the mean
#for all men who do not use it.


Drug=c(194, 220, 210, 186, 265, 222, 242, 211, 240, 212) # sample 1

No_Drug=c(237,289,257,228,303,275,262,304,244,233) # sample 2


#H_0:mu_1=mu_2 
#H_1:mu_1 < mu_2

t.test(Drug, No_Drug, alternative="less")

#############################################################

data=read.csv("course_evaluation.csv")
data

#H_0:mu_F=mu_M
#H_1:mu_F not = mu_M

t.test(data$Female, data$Male, alternative="two.sided")


#H_0:mu_1=mu_2
#H_1:mu_1 > mu_2

t.test(data$Female, data$Male, alternative="greater")


#H_0:mu_1=mu_2
#H_1:mu_1 < mu_2

t.test(data$Female, data$Male, alternative="less")

#############################################################
#Correlation & Regression


Blood_Pressure=read.csv("Blood_Pressure.csv")
Blood_Pressure

#Construct a scatter plot 

plot(Blood_Pressure$Age,Blood_Pressure$Blood.Pressure)

#Find a linear correlation coefficient between age and blood pressure.

cor.test( Blood_Pressure$Age,Blood_Pressure$Blood.Pressure)

#Find regression line for age (x-variable) and size blood pressure (y-variable)

regration_model=lm(Blood_Pressure$Blood.Pressure~Blood_Pressure$Age)
regration_model

# Construct a scatter plot and the regression line on the same plot. 


plot(Blood_Pressure$Age,Blood_Pressure$Blood.Pressure)

abline(regration_model)

##################


#Listed below are heights (in inches) and weights (in pounds) for models. 
#Is there a correlation? 
#Find the best predicted weight of a model who is 69 in. tall. 
x=c(70,71,71.5,75)
y=c(119,125,127,128)



############

#######
x=c(50,71,80,90)
y=c(119,125,127,128)



#########

x=c(70,73,74,75,77)
y=c(50,40,35,15,80)


#########


#######
x=c(50,71,80,85)
y=c(-119,-130,-127,-150)




