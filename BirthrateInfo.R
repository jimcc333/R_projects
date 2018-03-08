# ------ Explores Birth Rate Data -------

# >>> Read data

# Select file manually
birth_stats <- read.csv(file.choose())
birth_stats

# Alternatively, hard code it
# Windows
getwd()
setwd("C:\\Users\\Cem\\Desktop")

# Mac
# setwd("/Users/Cem/Desktop")


# >>> Explore data

# Look through the frame
birth_stats
str(birth_stats)  # "str" stands for structure
summary(birth_stats)
head(birth_stats)
tail(birth_stats)

# QA
nrow(birth_stats)  # 195 rows
ncol(birth_stats)  # 5 columns

# Use the $ sign
birth_stats[3,4]
birth_stats$Internet.users
birth_stats[,"Internet.users"]
birth_stats[3, "Birth.rate"]
levels(birth_stats$Income.Group)

# Subsetting
birth_stats[2:6,]
birth_stats[c(2,5,9),]
is.data.frame(birth_stats[1,])  # No need to drop=F
is.data.frame(birth_stats[,1])  # Yes need to drop=F

# Mess with columns
birth_stats$new_column <- birth_stats$Birth.rate * birth_stats$Internet.users
head(birth_stats)
birth_stats$new_column <- NULL

# Filtering
internet_filter <- birth_stats$Internet.users < 2
birth_stats[internet_filter,]
birth_stats[birth_stats$Internet.users < 2,]  # In one line

birth_stats[birth_stats$Birth.rate > 40 & birth_stats$Internet.users < 2,]

birth_stats[birth_stats$Income.Group == "High income",]

birth_stats[birth_stats$Country.Name == "Malta",]


# >>> Plot data

install.packages("ggplot2")
library("ggplot2")

qplot(data=birth_stats, x=Internet.users)
qplot(data=birth_stats, x=Income.Group, y=Birth.rate, size=I(5))
qplot(data=birth_stats, x=Income.Group, y=Internet.users, size=I(5))
qplot(data=birth_stats, x = Income.Group, y=Internet.users, size=I(5), geom="boxplot")

qplot(data=birth_stats, x = Internet.users, y = Birth.rate)
qplot(data=birth_stats, x = Internet.users, y = Birth.rate,
      size=I(3),color=I("red"))
qplot(data=birth_stats, x = Internet.users, y = Birth.rate,
      size=I(3),color=Income.Group)






