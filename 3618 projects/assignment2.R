options(scipen = 200) #cancel the scientific notation
#Initialization.
n <- 10
L <- 200000
i <- 0.03
monthly_rate <- (1+i)^(1/12)-1
monthly_rate
payment_size <- L*monthly_rate/(1-(1/(1+monthly_rate)^n))
payment_size
amortization_table <- matrix(c(0,0,L),n+1,3,TRUE) #create a matrix
amortization_table[1,3] <- L
# Compute values and place then in the matrix.
for (time in 1:n) {
  amortization_table[time+1,1]<-amortization_table[time,3]*monthly_rate
  amortization_table[time+1,2]<-payment_size - amortization_table[time+1,1]
  amortization_table[time+1,3]<-amortization_table[time,3]-amortization_table[time+1,2]
}
#Display the results.
colnames(amortization_table)<-c("Interest Paid","Principal Repaid","Outstanding Balance")
amortization_table



