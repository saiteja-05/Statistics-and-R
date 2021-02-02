trn <- read.csv("G:\\R by sane sir\\Bike Share Demand\\train.csv")
trn$season <- factor(trn$season,labels = c("Spring",
                                           "Summer",
                                           "Fall","Winter"))
trn$holiday <- factor(trn$holiday,labels = c("No Holiday",
                                             "Holiday"))

#barplot
barplot(table(trn$holiday),col = c("yellow","green"))

barplot(table(trn$season),col = c("red","green"))

#histogram
hist(trn$humidity,breaks = 5,xlim=c(0,100),ylab = "count",xlab = "humidity",col = "blue")

#scatterplot
plot(trn$humidity,trn$casual,pch =12,col = "purple")


plot(trn$atemp,trn$casual,pch =12,col = "purple")



hist(trn$casual,col = "blue")


#density plot
plot(density(trn$casual),col = "red")


############################exercises#####################################################

setwd("G:\\R by sane sir\\Datasets")

#######1st question ########################

singaporeauto = read.csv("SingaporeAuto.csv")

#A

boxplot(singaporeauto$Exp_weights,col = "pink",xlab = "EXP_WEIGHTS",main = "Weights")


#B

summary(singaporeauto$VehicleType)

boxplot(singaporeauto$Exp_weights ~ singaporeauto$VehicleType,
                        col= c(6,3,23,34,45,67,89,100,123,124),
                        xlab = "vehicle types",ylab = "EXP_WEIGHTS",
                        main = "Weights by vehicle types")



##########2nd question ################3

cars2 = read.csv("cars2.csv")

plot(cars2$speed,cars2$dist,pch = 17,col = "violet")

######################PLOTS USING GGPLOT2#############################################



trn <- read.csv("G:\\R by sane sir\\Bike Share Demand\\train.csv")
trn$season <- factor(trn$season,labels = c("Spring",
                                           "Summer",
                                           "Fall","Winter"))
trn$holiday <- factor(trn$holiday,labels = c("No Holiday",
                                             "Holiday"))


library(ggplot2)

#
qplot(atemp,casual,data = trn,color = season)+scale_color_gradient(low = "red",high = "green")



#boxplot
qplot(season ,casual,data = trn,geom = "boxplot",fill = season)

#density plot
qplot(windspeed,data = trn,geom = "density",facets = .~season)

qplot(windspeed,data = trn,geom = "density",color = season)






