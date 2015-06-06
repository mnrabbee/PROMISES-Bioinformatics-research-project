prDat <- read.table("GSE4051_MINI.tsv.txt", header =T, row.names=1)
prDat
class(prDat) 
str(prDat)
dim(prDat) #dimension of the data.frame
nrow(prDat) #checking rows
#How many columns or variables are there? 
ncol(prDat)
length(prDat)
#Inspect the first few observations or the last few or a random sample. 
head(prDat)
tail(prDat)
sample(head(prDat), replace = F)
#checking attributes
attributes(prDat)
is.na(prDat) #for checking missing value
#What are the variable names? 
names(prDat)
dimnames(prDat)
#For each factor variable, what are the levels?
str(prDat)
table( prDat$devStage, prDat$gType)
max(prDat[,"poisonFang"]
#creating a subset of prDat
weeDat <- subset(prDat, subset = poisonFang>7.5) #creating a subset of prDat
# how many observations poisonFang > 7.5?
length(weeDat$poisonFang) 
nrow(weeDat)
