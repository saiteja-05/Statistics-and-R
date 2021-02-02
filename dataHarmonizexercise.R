
setwd("G:\\R by sane sir\\Datasets")

############1st question merging ##################

items = read.csv("Items.csv") 
orders = read.csv("Orders.csv")
ored_details = read.csv("Ord_Details.csv")

merge1 = merge(items,orders)

merge2 = merge(merge1,ored_details)


#############2nd question ######################

courses = read.csv("Courses.csv") 
schedule = read.csv("CourseSchedule.csv")

fullouterjoin = merge(courses,schedule,by.x ="CourseID",by.y = "CourseCode",all.x = T,all.y = T)
merging = merge(courses,schedule,by.x ="CourseID",by.y = "CourseCode")
rightouterjoin = merge(courses,schedule,by.x ="CourseID",by.y = "CourseCode",all.x = F,all.y = T)
leftouterjoin = merge(courses,schedule,by.x ="CourseID",by.y = "CourseCode",all.x = T,all.y = F)


###########3RD question ##################


library("reshape2")

job= read.csv("Jobsalary.csv")

sf = melt(job,id="S_No")


################4th question #######################333


items = read.csv("Items.csv") 
orders = read.csv("Orders.csv")
ored_details = read.csv("Ord_Details.csv")
merge1 = merge(items,orders)

merge2 = merge(merge1,ored_details)

library(lubridate)

data = dmy(merge2$Order.Date)

Day = day(data)
Month = month(data)
Year  = year(data)

#merge3 = data.frame(merge2,Day , Month,Year)
merge2$Order.Date = dmy(merge2$Order.Date)

merge2$Month = month(merge2$Order.Date)
merge2$Day = day(merge2$Order.Date)
merge2$Year = year(merge2$Order.Date)

###################5th question #######################
#after 1 year 

#merge2$Order.Date = as.Date(merge2$Order.Date,format = "%d-%b-%y")



merge2$After1year = merge2$Order.Date

year(merge2$After1year) = year(merge2$After1year)+1

#or 

month(merge2$After1year) = month(merge2$After1year)+12



###########additional exercise of bike share demand################
setwd("G:\\R by sane sir\\Bike Share Demand")

bikeshare = read.csv("train.csv")

library(lubridate)

#bikeshare$datetime = ymd_hms(bikeshare$datetime)

bikeshare$datetime = format(bikeshare$datetime)

bikeshare$Year = year(bikeshare$datetime)
bikeshare$Month = month(bikeshare$datetime)
bikeshare$Day = day(bikeshare$datetime)

bikeshare$Hours = hours(bikeshare$datetime)










