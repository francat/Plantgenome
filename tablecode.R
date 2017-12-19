#create table of mitochondrial genome that was downloaded from database and opened on excel. then saved t
#to csv
mitochondria=read.csv("mitotable1 - table.csv")
#create table of plastid genome that was downloaded from same database and uploaded to excel for clean up
plastid=read.csv("platidtable1 - fulltable.csv.csv")
#merge the tables by the "genome" column. Genome is the species name.
table1=merge(mitochondria,plastid, by = "Genome")
#create a table in csv format to create plots
write.csv(table1,file="table1.csv")