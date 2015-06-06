#replicate data by rep() http://www.endmemo.com/program/R/rep.php
x<- rep(1:5)
x<- rep(1:5, 2) # replicate data 2 times
x<-rep(1:5, each=2)
dim(x)  = 10
class(x) #its an array
dim(x) = c(2, 5)
class(x) #its a matrix
rats<- data.frame(id = paste("rat",1:10),
                  sex = rep(c("Femate", "Male"), 5),
                  weight = c(2,4,1,11,18,12,7,12,19,20),
                  length = c(100,105,115,130,95,150,165,180,190,175))
rats
rats[order(rats$weight), ] #print increasing order
rats[order(-rats$weight), ] #print deccreasing order. in R - reverse the as usual process 
summary(rats$weight)
#loading another data.frame
ratsTable <- data.frame(id = paste0("rat",c(6,9,7,3,5,1,10,4,8,2)),
                        secretID = 1:10)
ratsTable = cbind(rats, ratsTable) #The row number of the two datasets must be equal. so for safety first check the row no. by nrow()
#use of match()
ratsTable1 = ratsTable
match(ratsTable1$id, ratsTable$id)
ratsTable1[match(ratsTable$id, ratsTable1$id),] 
cbind(ratsTable1[match(ratsTable$id, ratsTable1$id),], ratsTable)
#marging two dataset
# marge() function merges two data frames by common columns.

ratsMarge <- merge(rats, ratsTable,  by.x="id", by.y = "id") #common column between rats and ratsTable is "id"
ratsMarge

