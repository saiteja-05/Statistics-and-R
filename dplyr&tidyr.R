setwd("G:\\R by sane sir\\Datasets")

################## 1st question ######################################


install.packages("tidyverse")



survey = read.csv("survey.csv")


library(tidyverse)

survey_tl =as_tibble(survey)

#males not smoking
malenonsmokers = filter(survey_tl,Smoke %in% c("Never"))

#pulse greater than 80

x = select(survey_tl,c(Sex,Exer,Smoke,Pulse))
pulsegt80 = filter(x,Pulse>80)

#rthand = Wr.Hnd / NW.Hnd

aftermutate = mutate(survey_tl,rthand = Wr.Hnd/NW.Hnd)

#DescStats for summarazie

DescStats = summarize(survey_tl,Mean = mean(Age,na.rm = T),
                                  SD = sd(Age,na.rm = T))

#DescGrp by age and sex

age_sex  = group_by(survey_tl,Sex)
DescGrp = summarize(age_sex,Mean = mean(Age,na.rm = T),
                      SD = sd(Age,na.rm = T))


####################2 nd question ##########################


courses = read.csv("Courses.csv")


CourseSched = read.csv("CourseSchedule.csv")



joining = inner_join(courses,CourseSched,by=c("CourseID" = "CourseCode"))


################3rd question ##########################3
#using tidyr

library(tidyr)

comb1 = read.csv("comb1.csv")

library(dplyr)
glimpse(comb1)

comb_gather = comb1 %>% gather(Highlighter,Marker,Pen,Refill, key = "ItemType",value = "QTY")


#####################4th question #############################


library(tidyr)

comb2 = read.csv("comb2.csv")

library(dplyr)


se = comb2 %>% separate(PatientID,into = c("projectID","SiteID","PatientNumber"))


se


#####################graphics #######################


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

#boxplot






