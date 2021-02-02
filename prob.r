#probability distributions 

dbinom(5,40,0.25)  #for x=5  kind we use dbinom
pbinom(10,40,0.25)  #for x<=10 kind we use pbinom
1-pbinom(19,40,0.25) #for values of x >=20 need to substract sum of prob -prob of x <=19

#poiss distro 

dpois(5,12)  #for x=5 and lambda =12 kind we use dpoiss
ppois(12,12) #for x<=12 and lambda =12 kind we use ppoiss

1-ppois(14,12) #for x>15 and lambda =12 kind we use ppoiss


ppois(15,12) - ppois(9,12)



#exercise on poisson 
1-ppois(70,56)   #1a  56 is mean
ppois(19,56)    #1b

1-ppois(5,4)   # lambda = 4
ppois(2,4)

#exercise on binomial dist

1-pbinom(69,71,0.94)   #1st n =71,p=0.94
#or
dbinom(70,71,0.94)+dbinom(71,71,0.94)

######normal distribution######


pnorm(58,64,4)  #height less than 58 with mean = 64,ssd = 4

1-pnorm(225,180,30)  #weight greater than 225 with mean = 180,sd = 30


#exercise normal distro

qnorm(0.95,100,15)  #prob = 0.95 from 95th percentile mean = 100,sd - 15

1-pnorm(2000,1678,500)  #2nd prob 1.p(x>2000),mean = 1678,sd = 500

qnorm(0.10,1678,500)    #2.  using qnorm for 10 percent lower

qnorm(0.90,1678,500)   #correct answer for question 

pnorm(1900,1678,500) - pnorm(1000,1678,500)  #3.p(1000<x<1900)



#example pb 

qnorm(0.98,313,57) #a is having percent of 98,mean -313,sd-57

qnorm(0.9,93,22)   #b is having percent of 90,mean-93,sd -22


x = 1-pnorm(450,313,57) #c for p(xa >450)

y = 1-pnorm(150,93,22)  #for p(xb >150)

x+y - (x*y)   #p(x union  y ) = p(x)=p(y) - p(a and b)



