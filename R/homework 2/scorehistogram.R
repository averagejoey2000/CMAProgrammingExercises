timedata=read.csv("time.csv")
attach(data)
data

hist(data$Score)


hist(data$Score, freq=F)

# CONSTRUCT HISTOGRAM with n bins(classes). The length should be n+1 where n is the number of desired bins

hist(data$Score, breaks =seq(min(data), max(data), length.out=8)) # histogram with 6 bins


hist(data$Score,
     breaks =seq(min(data), max(data), length.out=7),
     main=" HISTOGRAM ",
     ylab="Number of Lunches",
     xlab="Service Times",
     col="red",
     border="black",
     ylim=c(0,12))
