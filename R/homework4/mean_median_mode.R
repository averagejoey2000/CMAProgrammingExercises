data1=read.csv("marina.csv")
data2=read.csv("prob3.csv")
data3=read.csv("prob4.csv")
data4=read.csv("prob5.csv")
data5=read.csv("prob6.csv")
data6=read.csv("prob7.csv")
#Problem 3
#Find mean

mean(data2$data)
#Find median

median(data2$data)

#Find mode

mode=table(as.vector(data2$data))
names(mode)[mode==max(mode)]
# CONSTRUCT HISTOGRAM 

hist(data2$data, freq=TRUE, 
     breaks =seq(min(data2$data), max(data2$data), length.out=6),
     main=" HISTOGRAM ",
     ylab="freq",
     xlab="value", 
     col="blue")  # 5 bins


