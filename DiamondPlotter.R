# Plots data about diamond prices

mydata <- read.csv(file.choose()) # Select the Misplaced-Diamonds.csv


install.packages("ggplot2")
library("ggplot2")

ggplot(data=mydata[mydata$carat<2.5,], aes(x=carat, y=price, color=clarity)) +
  geom_point(alpha=0.1) +
  geom_smooth()
