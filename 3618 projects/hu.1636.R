x<-c(1,2,3,4,5,6)
y<-c(7,8,9,10,11,12)
M_1 <- matrix(x, nrow=1);M_1
rownames = c("Werewolf")
colnames = c("Chocolate","Gummies","Hard Candies","Licorice","Sours","lollipops")
dimnames = list(rownames, colnames)
halloween <- matrix(x, nrow=1, dimnames=dimnames)
halloween
halloween <-rbind(halloween,Vampire)
dimnames(halloween) = list(c("Werewolf","Vampire"),c("Chocolate","Gummies","Hard Candies","Licorice","Sours","lollipops"))
halloween

