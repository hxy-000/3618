options(scipen = 200) #cancel the scientific notation
#Initialization.
n <- 10
C <- 10000
r <- 0.06
i <- 0.04
yield_rate <-(1+i/2)^2-1#comoute the annually yield rate
coupon_size <- C*r
book_value <-coupon_size*(1-(1/(1+yield_rate)^n))/yield_rate+C*1/(1+yield_rate)^n#compute the first book value
amortization_table <- matrix(c(0,0,0,book_value),n+1,4,TRUE) #create a matrix with 4 columns and 11 rows
amortization_table[1,4] <- book_value
# Compute values and place then in the matrix.
for (time in 1:n) {
  amortization_table[time+1,1]<-coupon_size
  amortization_table[time+1,2]<-amortization_table[time,4]*annual_rate
  amortization_table[time+1,3]<-coupon_size - amortization_table[time+1,2]
  amortization_table[time+1,4]<-amortization_table[time,4]-amortization_table[time+1,3]
}
#Display the results.
colnames(amortization_table)<-c("Coupon","Interest","Amount for Amort. of Premium","Book Value")
amortization_table

