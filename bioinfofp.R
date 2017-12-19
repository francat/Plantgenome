
library(seqinr)
#read in data extracted from database, separator being \t
table = read.table("taxid3041.tbl",sep = "\t",header = FALSE,quote ="", dec =".",fill = TRUE)
#delete column 25
table[-25,]
#check table 
head()
#extract names where the name is unformated
regexpr("^.NC_",unlist(table[1]))
regexpr("^.NC_",unlist(table[0]))
regexpr("^.NC_",(table[0]))
regexpr("^.?=NC_",unlist(table[1]))


