data=read.csv("score.csv")
attach(data)
data


hist(data$Score)


hist(data$Score, freq=F)

# CONSTRUCT HISTOGRAM with n bins(classes). The length should be n+1 where n is the number of desired bins

hist(data$Score,
     breaks =seq(min(data$Score),
                 max(data$Score), length.out=7)) # histogram with 6 bins


hist(data$Score,
     breaks =seq(min(data), max(data), length.out=7),
     main=" HISTOGRAM ",
     ylab="Number of Students",
     xlab="Test Scores",
     col="green",
     border="black",
     ylim=c(0,12))


###############################################


demodata=read.csv("DemographicData.csv")

summary(demodata)


head(demodata,2)
tail(demodata,1)


#To create a bar plot: 
#First create FREQUENCY DISTRIBUTION TABLE
income_freq=table(demodata$Income.Group)

income_freq

#Then create Bar plot

barplot(income_freq,
        ylim=c(0,70), 
        col="blue",
        border="black",
        ylab="frequency",
       
)


#pie chart
pie(income_freq, main = "Income", col = rainbow(length(demodata)))
