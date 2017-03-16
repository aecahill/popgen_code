#Script to run DAPC on fasta files
#will output scatter.dapcs using both clusters found in the analysis and sample location


library(ape)
library(adegenet)

#species_name<-read.FASTA("C:/Users/Abigail/Desktop/file.fasta") #read in fasta file
#pops<-read.table("C:/Users/Abigail/Desktop/file.txt") #read in list of sample populations

run_dapc<-function(species_name,pops){
  library(adegenet) #load adegenet
  species<-DNAbin2genind(species_name,polyThres=1/1000) #convert fasta to genind
  species_clust<-find.clusters(species) #find clusters in data
  scatter.dapc(dapc(species,pop=species_clust$grp)) #scatter.dapc of data with found clusters
  scatter.dapc(dapc(species,pop=pops$V1)) #scatter.dapc of data with collecting sites
  table(species_clust$grp,pops$V1) #creates frequency table of group membership
}