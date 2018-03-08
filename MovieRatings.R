# Analyzes the Movie-Ratings CSV file

# ----- Read the data
ratings_df_orig <- read.csv(file.choose())  # Pick Movie-Ratings.csv
ratings_df <- ratings_df_orig

colnames(ratings_df) <- c("Film", "Genre", "CriticRating", "PublicRating", "Budget", "Year")

head(ratings_df)
tail(ratings_df)
str(ratings_df)
summary(ratings_df)

ratings_df$Year <- factor(ratings_df$Year)


# ----- Plot data
library(ggplot2)

plot1 <- ggplot(data=ratings_df, aes(x=CriticRating, y=PublicRating, color=Genre, size=Budget))
plot1 + geom_point() + xlim(0,100) + ylim(10,100) + xlab("Critic Rating (%)") + ylab("Public Rating (%)")

plot2 <- ggplot(data=ratings_df, aes(x=Budget, y=CriticRating, color=Genre) )
plot2  + geom_point(size=4)

plot3 <- ggplot(data=ratings_df, aes(x=Budget, y=PublicRating, color=Genre))
plot3 + geom_point(size=4)

(
  plot4 <- ggplot(data=ratings_df, aes(x=Budget, y=PublicRating)) + geom_point(size=4, alpha=0.5) 
  + geom_point(x=ratings_df$Budget, y=ratings_df$CriticRating, color='Red', size=3, alpha=0.7)
  + ylab("Rating") +xlab("Budget, $")
)
