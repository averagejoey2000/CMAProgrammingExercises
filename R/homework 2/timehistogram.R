timedata=read.csv("fastfood.csv")
attach(timedata)
timedata


hist(timedata$ï..Times)


hist(timedata$ï..Times, freq=F)

# CONSTRUCT HISTOGRAM with n bins(classes). The length should be n+1 where n is the number of desired bins

hist(timedata$ï..Times, breaks =seq(min(timedata), max(timedata), length.out=8)) # histogram with 6 bins


hist(timedata$ï..Times,
     breaks =seq(min(timedata), max(timedata), length.out=8),
     main=" HISTOGRAM ",
     ylab="Number of Lunches",
     xlab="Service Times in seconds",
     col="blue",
     border="black",
     ylim=c(0,12))

