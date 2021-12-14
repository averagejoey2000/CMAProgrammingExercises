# random variable from uniform distribution

#Draw 500 random numbers from a uniform distribution
x=runif(500, min = 2, max = 4)

x
hist(x,prob=TRUE)

curve(dunif(x,min=2, max=4), 2, 4, add=TRUE)



# Calculate the mean of the sample drawn fromm the uniform distribution

mean(x)




# Create an empty vector of zeroes with 500 elements. (Create 500 samples from population)

sample=rep(0,500) # this is sample with 500 zeroes elements

# Create 500 samples and find mean of each sample with size =n

n=31  # sample size
for(i in 1:500){
 
  sample[i]=mean(runif(n, min=2, max=4))
  }

sample 
 
 #Construct a histogram of the sample means
 
 hist(sample, prob=TRUE, breaks =12)
 
 mean(sample)
 
 #######################################################
 
 ######random number from normal distribution
 
 #Draw 500 random numbers from a normal distribution
 x=rnorm(500, mean=100, sd=10)
 
 x
 hist(x,prob=TRUE)
 
 curve(dnorm(x,mean=100, sd=10), add=TRUE)
 
 
 
 # Calculate the mean of the sample drawn fromm the uniform distribution
 
 mean(x)
 
 
 
 
 # Create an empty vector of zeroes with 500 elements. (Create 500 samples from population)
 
 sample=rep(0,500) # this is sample with 500 zeroes elements
 
 # Create 500 samples and find mean of each sample with size =n
 
 n=5  # sample size
 for(i in 1:500){
    
    sample[i]=mean(rnorm(n,mean=100, sd=10))
 }
 
 sample 
 
 #Construct a histogram of the sample means
 
 hist(sample, prob=TRUE, breaks =12)
 
 mean(sample)

