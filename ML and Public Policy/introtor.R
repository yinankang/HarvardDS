library(foreign)
library(RCurl)

rm(list = ls()) # This cleans up the workspace

setwd("/Users/yinankang/Desktop/Git/HarvardDS/ML and Public Policy")
stop.frisk.df <- read.csv("~/Desktop/Git/HarvardDS/ML and Public Policy/stop-and-frisk2016.csv")

attach(stop.frisk.df)

# Looking at individual columns
summary(arstmade)
mean(pct, na.rm = TRUE)
summary(race)

summary(race)/12405

# Activity: calculate the proportion of people for whom arrests were made, and proportion of people for whom arrests were not made
table(arstmade)
table(arstmade)/nrow(stop.frisk.df) *100

# Looking at Age
View(age)
table(age)
age <- as.numeric(age)

# Looking at Time Stop
summary(timestop, na.rm = T)
mean(timestop, na.rm=T)

hist(timestop, main = "Time Stop Frequency")
