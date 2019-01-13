#Assignment7.3_Session7

#Problem 1
#1. Create a box and whisker plot by class using mtcars dataset.

#Answer 1

#****Note****
#as per concerning to acadgild support about the issue that there is no class variable 
#i find in mtcars dataset so that unable to plot through mtcars dataset
#however i find class variable in mpg dataset hence i'm plotting that here 


#using mpg dataset to plot boxplot between variable class & hwy

library(ggplot2)
#using a different color for each group
ggplot(mpg, aes(x=class, y=hwy,fill=class, font.main=3)) +  
  ggtitle(toupper("Different Classes")) +
  geom_boxplot(alpha=0.3) +theme(legend.position="none")

#one more example 

boxplot(mpg~cyl, data=mtcars, 
        main= toupper("Fuel Consumption"), font.main=3, 
        col= topo.colors(3), xlab="Number of Cylinders", 
        ylab="Miles per Gallon")
