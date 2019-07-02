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



##### Control Structure topics

arstmade.new <- c() 

length(arstmade)

# Transforming Y's to "Yes", the N's to "No" and save these new codings to "arstmade.new"

for (i in 1:length(arstmade)) {
  if (arstmade[i] == "N"){
    arstmade.new[i] = "No"
  }
  if (arstmade[i] == "Y"){
    arstmade.new[i] = "Yes"
  }
  if (arstmade[i] == " "){
    arstmade.new[i] = "Don't Know"
  }
}
  
length(arstmade.new)

# Does the new variable look correct? 
arstmade.new[1:10]
table(arstmade.new)


## Breakout: frisked 
frisked.new <- c()  
for (i in 1:length(frisked)) {
  if (frisked[i] == "N"){
    frisked.new[i] = "No"
  }
  if (frisked[i] == "Y"){
    frisked.new[i] = "Yes"
  }
  if (frisked[i] == " "){
    frisked.new[i] = "Don't Know"
  }
}