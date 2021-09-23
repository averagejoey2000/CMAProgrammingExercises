#take in data from sample
data=read.csv("hospital.csv")
#prob 1a, find 71st percentile
quantile(data$pressure, c(.71))
#prob 1b find percentile for 150

#prob 1c, construct box & whisker diagram
# Find IQR
IQR(data$pressure)

#Find outliers:
# 1) outliers<Q_1-1.5*IQR
outlier_min_value=quantile(data$pressure, 0.25)-1.5*IQR(data$pressure)
outlier_min_value
data[data<outlier_min_value]

# 2)outliers<Q_3+1.5*IQR
outlier_max_value=quantile(data$pressure, 0.75)+1.5*IQR(data$pressure)
outlier_max_value

data[data>outlier_max_value]

boxplot(data$pressure,

	col="tomato",
	notch = F,

	main="Plot of Blood Pressures of Patient",
	ylab="Blood Pressure in mm Hg")
quantile(data$pressure, c(.25, .50, .75))
