data1=c(3, 4, 4, 5, 5, 5, 5, 6, 6, 7)

data1
length(data1)


data2=c(2, 3, 4, 5, 5, 6, 6, 6, 7)
data2

data3=c(3, 4, 4, 4, 5, 5, 6, 7)
data3



# CONSTRUCT HISTOGRAM 

hist(data1, freq=TRUE, 
     breaks =seq(min(data1), max(data1), length.out=6),
     main=" HISTOGRAM ",
     ylab="freq",
     xlab="value", 
     col="blue")  # 5 bins


#Find median

median(data1)

#Find mean

mean(data1)

#Find mode

mode=table(as.vector(data1))
names(mode)[mode==max(mode)]
