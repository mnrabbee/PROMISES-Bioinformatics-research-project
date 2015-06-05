rats <- data.frame(id = paste0("rat",1:10),  
                   sex = factor(rep(c("female","male"),each=5)),
                   weight = c(2,4,1,11,18,12,7,12,19,20),
                   length = c(100,105,115,130,95,150,165,180,190,175))
ratsTable <- data.frame(id = paste0("rat",c(6,9,7,3,5,1,10,4,8,2)),
                        secretID = 1:10)
ratsMerged <- merge(rats, ratsTable, by.x="id", by.y="id")
ratsMerged[order(ratsMerged$secretID),]
#split()
sd <- split(ratsMerged$weight, ratsMerged$sex)
lapply(sd, mean)
tapp = tapply(ratsMerged$weight, ratsMerged$sex, mean)
tapp
class(tapp)
sexes = group_by(rats,length)
sexes
summarise(sexes, ave=mean(weight))
rats %>% group_by(sex)%>% summarise(ave=mean(weight))
