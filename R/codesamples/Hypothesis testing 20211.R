

# Hypothesis testing for a population mean if sigma is NOT Known.

#H_0:mu=162
#H_1:mu>162
data=read.csv("heights_supermodels.csv")
data

t.test(data$heights,mu=162, alternative="greater")



#H_0:mu=162
#H_1:mu<162
data=read.csv("heights_supermodels.csv")
data

t.test(data$heights,mu=162, alternative="less")



#H_0:mu=162
#H_1:mu not =162
data=read.csv("heights_supermodels.csv")
data

t.test(data$heights,mu=162, alternative="two.sided")


# Hypothesis testing for two population means

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



