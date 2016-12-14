#sgdc figure with trendline

library(ggplot2)

sgdc2<-read.table("C:/Users/acahill/Desktop/sgdc2.txt",header=TRUE)

ggplot(sgdc2, aes(x=Simpson, y=Avg_gen)) + 
  geom_point(size=5)+
  theme_bw()+
  theme(panel.grid.minor=element_blank(), panel.grid.major=element_blank())+
  xlab("\nSimpson's Index")+
  ylab("Average Genetic Diversity\n")+ 
  geom_smooth(method = "lm", se = FALSE,col="black")+
  annotate("text", x = 0.87, y = 0.195, label = "1", size = 6)+
  annotate("text", x = 0.827, y = 0.16, label = "2", size = 6)+
  annotate("text", x = 0.9, y = 0.20, label = "3", size = 6)+
  annotate("text", x = 0.88, y = 0.233, label = "4", size = 6)+
  annotate("text", x = 0.86, y = 0.232, label = "5", size = 6)+
  annotate("text", x = 0.87, y = 0.155, label = "6", size = 6)+
  annotate("text", x = 0.865, y = 0.23, label = "7", size = 6)+
  annotate("text", x = 0.79, y = 0.186, label = "8", size = 6)+
  annotate("text", x = 0.875, y = 0.257, label = "9", size = 6)
