library(MASS)
data("Boston")
head(Boston)

# Summing the row
sum(Boston[1,])
#OR
apply(Boston[1,], 1, sum)

apply(Boston,1,sum)

apply(Boston,2,sum)

# All Rows' SDs
apply(Boston,1,sd)

# Columns' SDs
apply(Boston,2,sd)

################## lapply() #################

lst <- list(a=c(2,4,1,5),
             b=c(34,21,90,45,25,91,47),
             c=c(50,234,999,122,199,344,899,121,112))

lapply(lst, sd)
lapply(lst, mean)

#### When first argument is not a list ####
lapply(c(2,5,10),log)


#### User defined function #########
CV <- function(input){
  (sd(input,na.rm = TRUE)/mean(input,na.rm = TRUE))*100
}
lapply(lst,CV)

#### Anonymous #####
lapply(lst, function(input) (sd(input,na.rm = TRUE)/mean(input,na.rm = TRUE))*100)

##### sapply ######

g = lapply(lst,sd)
class(g)

f = sapply(lst,sd)
class(f)

sapply(lst, sd)

descriptive <- function(input) {
  tt <- c(Mean = mean(input,na.rm = TRUE),
          SD = sd(input,na.rm = TRUE))
  tt
}
decr <- descriptive(Boston$medv)
class(decr)

d <- lapply(lst, descriptive)
class(d)
d <- sapply(lst, descriptive)
class(d)
d


### mapply ###
lst_a <- list(a=c(2,4,1,5),
            b=c(34,21,90,45,25,91,47),
            c=c(50,234,999,122,199,344,899,121,112))
lst_b <- list(d=c(34,10,3),
              e=c(3,4,1),
              f=c(0,3,5,1,6))

mapply(sum, lst_a, lst_b)

mapply(sd, lst_a, lst_b)

mapply(c, lst_a, lst_b)

### tapply ####
data("Cars93")
mean(Cars93$Price)

tapply(Cars93$Price,Cars93$Type,mean)
tapply(Cars93$Price,Cars93$AirBags,mean)


##############
tapply(Boston$medv, Boston$rad, mean)
tapply(Boston$medv, Boston$chas, mean)

