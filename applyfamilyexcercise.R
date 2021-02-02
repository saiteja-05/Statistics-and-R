

setwd("G:\\R by sane sir\\Datasets")

####1st question apply() ###############
library(mlbench)
data("Sonar")

se = subset(Sonar,select = -c(Class))

OR 

#df = sonar[ ,-61]

coeffofvariation <- function(input) {
  return (sd(input,na.rm = T)/ mean(input,na.rm = T)) *100
}



apply(se,1,coeffofvariation)


##########2nd question   lapply( ) ###########

xyfunction <- function(input) {
  x=mean(input)-3*sd(input) 
  y=mean(input)+3*sd(input)
  ot=c("x"=x,"y" = y)
  return(ot)
  
}

x=c(1,23,3,43,32,32,12,2,3,12)

xyfunction(x)

lstdist = list(binomialDist = rbinom(50000,10000,0.023),
               poisonDist = rpois(45000,230),
               normalDist1 = rnorm(40000,230,30),
               normalDist2 = rnorm(40000,230,40))

lapply(lstdist,xyfunction)

#############3rd question sapply( ) ########################


lstdist = list(binomialDist = rbinom(50000,10000,0.023),
               poisonDist = rpois(45000,230),
               normalDist1 = rnorm(40000,230,30),
               normalDist2 = rnorm(40000,230,40))

meansdfunc <- function(input) {
  Mean=mean(input)
  SD = sd(input)
   out =matrix(Mean,SD,nrow = 3)
  return(out)
}


sapply(lstdist,meansdfunc)


#################4th question #####################3        

library(carData)
Salaries

tapply(Salaries$salary,Salaries$rank,mean)

        
library(reshape2)     
search()        
        
    



