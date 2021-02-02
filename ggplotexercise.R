#######################ggplot demo########################################################3


library(ggplot2)

#
qplot(atemp,casual,data = trn,color = season)+scale_color_gradient(low = "red",high = "green")



#boxplot
qplot(season ,casual,data = trn,geom = "boxplot",fill = season)

#density plot
qplot(windspeed,data = trn,geom = "density",facets = .~season)

qplot(windspeed,data = trn,geom = "density",color = season)
###############################################################################3




############ggplot exercises######################################

setwd("G:\\R by sane sir\\Datasets")


########1st question ########
library(tidyr)
library(ggplot2)

autocollision = read.csv("AutoCollision.csv")

vehicle = as.factor(autocollision$Vehicle_Use)

qplot(Severity,Claim_Count,data = autocollision,col = vehicle)

#########2nd question ##########################



ggplot(autocollision,aes(x= vehicle,y= Claim_Count,fill = Vehicle_Use))+
                  labs(title =  "claim count by vehicle type")+
                  geom_boxplot()+
                  theme(plot.title = element_text(hjust = 0.5))

########3rd question #########################3

ornsta = read.csv("Ornstein.csv")
#nat = as.factor(ornsta$nation)

ggplot(ornsta,aes(nation,fill = sector))+geom_bar()+
              labs(title =  "firms by nation across sector")+
              theme(plot.title = element_text(hjust = 0.5))


######4th question ##############################

ggplot(ornsta,aes(assets,interlocks,col = sector))+geom_point(size = 2)+
                              facet_grid(.~nation)+
  labs(title =  "Assets by interlocks")+
  theme(plot.title = element_text(hjust = 0.5))

########5 th question ###################

mtcars


#changing into factor is important
mtcars$gear = factor(mtcars$gear)
ggplot(mtcars,aes(disp,mpg,col = gear))+geom_point()+
  labs(title =  "Displacement by MPG")+
  theme(plot.title = element_text(hjust = 0.5)) 

#########################################################

#for r markdown and r note book 

df = read.csv("G:\\R by sane sir\\Datasets\\Housing.csv")

str(df)

library(ggplot2)
ggplot(df,aes(airco,price,fill = airco))+geom_boxplot()





















