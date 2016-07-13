## This code runs the monmonier algorithm in adegenet, equivalent to Barrier program
## To use with sequence data
## For microsat species, can read in genepop file directly

library(adegenet) #load adegenet
library(ape) #load ape

pops<-read.table("C:/Users/Abigail/Desktop/olonpops.txt") #read in file of population names

coords<-read.table("C:/Users/Abigail/Desktop/oloncoords.txt") #read in table of lat-long coordinates

species<-read.FASTA("C:/Users/Abigail/Desktop/olon.fas") #read in fasta


species2<-DNAbin2genind(species,polyThres=1/1000) #translate fasta to genind
species3<-genind2genpop(species2,pop=pops$V1) #translate genind to genpop using pop info
dist<-dist.genpop(species3) #generate distance matrix
cn<-chooseCN(coords,ask=FALSE,type=2) #generate neighbors based on Gabriel graph
mon<-monmonier(coords,dist,cn,threshold=.0025) #run monmonier algorithm
plot(mon,add.arrows=FALSE,bwd=2,col="blue") #plot monmonier
