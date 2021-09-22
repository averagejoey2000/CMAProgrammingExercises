#take in data from sample
data=read.csv("phone.csv")
#prob 2a, find 42nd & 80th percentiles
quantile(data$speed, c(.42, .80))
#prob 1b find percentile for 150

#prob 1c, construct box & whisker diagram
# Find IQR
IQR(data$speed)

#Find outliers:
# 1) outliers<Q_1-1.5*IQR
outlier_min_value=quantile(data$speed, 0.25)-1.5*IQR(data$speed)
outlier_min_value
data[data<outlier_min_value]

# 2)outliers<Q_3+1.5*IQR
outlier_max_value=quantile(data$speed, 0.75)+1.5*IQR(data$speed)
outlier_max_value

data[data>outlier_max_value]

boxplot(data$speed,

	col="slateblue",
	notch = T,

	main="Cell Phone Data Speeds",
	ylab="Speeds in Mbps")
quantile(data$speed, c(.25, .50, .75))
