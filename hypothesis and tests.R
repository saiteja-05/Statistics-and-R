


setwd("G:\\R by sane sir\\book material\\Data_Files")

sales = read.csv("Sales Data.csv")


#ba book pg-255 pb-13

##accept h0 as p value is greaterr than 0.05 we accept null hypothesis
t.test(sales$Gross.Profit,mu=4500,alternative = 'l')  


#pb -14 
roominspection = read.csv("Room Inspection.csv")

#ho = mean >=0.02 
#h1 == mean <0.02


t.test(roominspection$Fraction.Nonconforming,mu=0.02,alternative = 'l')


#pb -25


ohioperformance = read.csv("Ohio Education Performance.csv")

t.test(ohioperformance$Writing,ohioperformance$Reading,paired = T,alternative = 't')



t.test(ohioperformance$Math,ohioperformance$Science,paired = T,alternative = 't')




########
library(MASS)
s =data("anorexia")
anorexia

sa = subset(s,subset(Treat = "Count"))


###pb -15
Facebook_Survey <- read_excel("G:/R by sane sir/book material/Data_Files/Facebook Survey.xlsx"
                                                            ,range = "A3:D36")

females = subset(Facebook_Survey,Facebook_Survey$Gender == "female")
males = subset(Facebook_Survey,Facebook_Survey$Gender == "male")
var.test(females$`Hours online/week`,males$`Hours online/week`)

t.test(females$`Hours online/week`,males$`Hours online/week`,var.equal = T)


#pb -18 
Vacation_Survey <- read_excel("G:/R by sane sir/book material/Data_Files/Vacation Survey.xlsx",
                                range = "A3:E37")

married  = subset(Vacation_Survey,Vacation_Survey$`Relationship Status` == "Married")

unmarried  = subset(Vacation_Survey,Vacation_Survey$`Relationship Status` == "Single/Divorced")

#h0 = married >= single vacation  ;;;;;    h1 = married < single vacation
var.test(married$`Vacations per Year`,unmarried$`Vacations per Year`)

t.test(married$`Vacations per Year`,unmarried$`Vacations per Year`,alternative = "l",var.equal = F)



#anova 
agr <- read.csv("Yield.csv")
av <- aov(Yield ~ Treatments , data = agr)
# OR
av <- aov(agr$Yield ~ agr$Treatments )
anova(av)  #for anova table


iris

anv = aov(iris$Sepal.Length ~ iris$Species)
anova(anv)
summary(anv)

b = aov(iris$Sepal.Width ~ iris$Species)
summary(b)

c = aov(iris$Petal.Length ~ iris$Species)
summary(c)


d = aov(iris$Petal.Width ~ iris$Species)
anova(d)

TukeyHSD(anv)

############anova pb 29 page-257

gmat = read.csv("GMAT Scores.csv")

tes = aov(Score ~ Major ,data = gmat)
summary(tes)

#there is significant difference and reject the null hypothesis

TukeyHSD(tes)


#########3chi square test proble  no-32


# Ho: Liking and Age group are independent of each other
# H1: Liking depends on Age group 

Liked   = c(140, 70, 70, 25)
Disliked= c(60, 40, 30, 65)
tbl <- rbind(Liked,Disliked)
colnames(tbl) <- c("-20","20-40","40-50","50-")
chisq.test(tbl)


#pb-33


Male=c(12, 39, 27, 16)

Female = c(8 ,22 ,24 ,12)
prov = rbind(Male,Female)

colnames(prov) = c("T-mobile","AT&T","Verizon","Other")
chisq.test(prov)


#pb -34

account = read.csv("Accounting Professionals.csv")

tbl = table(account$Age.Group,account$Graduate.Degree.)
chisq.test(tbl)

#######library(readxl)
#df <- read_excel("F:/Data_Files/Accounting Professionals.xlsx",
 #                range = "A3:G30",sheet = "Data")
#tbl <- table(df$`Age Group`,df$`Graduate Degree?`)
#chisq.test(tbl)################



#pb-35
Graduate_School_Survey <- read_excel("Graduate School Survey.xlsx", 
                                       skip = 2)
tab = table(Graduate_School_Survey$Gender,Graduate_School_Survey$`Plan to attend graduate school`)


chisq.test(tab)



############################




#Prob 11, Page 295
pizza <- read.csv("F:\\Statistics\\6. Regression\\pizza.csv")
cor(pizza$Promote,pizza$Sales)
cor(pizza)
# formula : y ~ x
fit_lm <- lm(pizza$Sales ~ pizza$Promote)
plot(pizza$Promote,pizza$Sales)
abline(fit_lm,col="green")

#########################################################

insure <- read.csv("F:\\Statistics\\6. Regression\\Insure_auto.csv")
insure <- insure[,-1]
cor(insure$Home,insure$Automobile)
cor(insure$Home,insure$Operating_Cost)
cor(insure$Automobile,insure$Operating_Cost)
cor(insure)
pairs(insure)



#############################


#pb-11 page 296



Crime <- read_excel("Crime.xlsx",range = "A1:B132")



model = lm(CRIM ~ PTRATIO ,data = Crime)

cor(Crime$CRIM,Crime$PTRATIO)

summary(model)

plot(Crime$PTRATIO,Crime$CRIM)
abline(model,col= "blue")

###multiple linear regression



# y ~ x1 + x2 + ...
fit_lm2 <- lm(insure$Operating_Cost ~ insure$Automobile+insure$Home)
#OR
fit_lm2 <- lm(Operating_Cost ~ Automobile+Home, data=insure)
#OR
fit_lm2 <- lm(Operating_Cost ~ ., data=insure)



#pb -16 pgno -296

Credit_Card_Spending <- read_excel("Credit Card Spending.xlsx", 
                                   skip = 1)
creditcard = subset(Credit_Card_Spending,select = c("CC_Exp","Income","FamilySize"))

cor(creditcard)

modelm = lm(CC_Exp ~ . , data = creditcard)

summary(modelm)

predict1 = (0.025*188)-(0.3106*2)+0.907

predict2 = (0.025*39)-(0.3106*3)+0.907



#logistic regression


hr <- read.csv("F:/Statistics/Cases/human-resources-analytics/HR_comma_sep.csv")
hr$left <- factor(hr$left, levels = c(0,1),
                  labels = c("Stayed","Left"))
hr$Work_accident <- factor(hr$Work_accident, levels = c(0,1),
                           labels = c("Not Happened","Happened"))

fit.lg <- glm(left ~ . ,
              data = hr , family = binomial())
summary(fit.lg)






























