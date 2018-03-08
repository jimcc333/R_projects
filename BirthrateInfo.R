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











