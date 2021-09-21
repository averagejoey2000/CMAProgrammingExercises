data=read.csv("score.csv")


# Find quartile


quantile(data$Score)


quantile(data$Score, 0.33)

quantile(data$Score, 0.75)

# Find IQR
IQR(data$Score)

#Find outliers:
# 1) outliers<Q_1-1.5*IQR
outlire_min_value=quantile(data$Score, 0.25)-1.5*IQR(data$Score)
outlire_min_value
data[data<outlire_min_value]

# 2)outliers<Q_3+1.5*IQR
outlire_max_value=quantile(data$Score, 0.75)+1.5*IQR(data$Score)
outlire_max_value

data[data>outlire_max_value]



# CONSTRUCT BOXPLOT

boxplot(data$Score)

#vertical
boxplot(data$Score, 
        
        col="magenta",
        notch = T,
        
        main=" Boxplot of Score ",
        ylab="Exam Scores" )


#horizontally

boxplot(data$Score,
        col ="tan2" ,
        notch = T,
        border=  "tomato1"  ,
      
        horizontal = T,
        main = "Boxplot of Score",
        xlab = "Exam Scores")


