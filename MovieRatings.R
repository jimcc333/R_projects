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

# Histogram of budgets showing associated genre
(
  plot5 <- ggplot(data=ratings_df, aes(x=Budget)) + 
    geom_histogram(binwidth = 10, aes(fill=Genre), color="Black") +
    ggtitle("Budgets of Movies")

 )

# Density chart
(
  plot6 <-ggplot(data=ratings_df, aes(x=Budget)) + 
    geom_density(aes(fill=Genre), position="stack") +
    ggtitle("Budget Density")
)

# Public and Critics ratings histogram
(
  plot7 <- ggplot(data=ratings_df) +
    geom_histogram(binwidth = 10, aes(x=PublicRating), fill="white", color="Blue") +
    xlab("Public Rating") +
    ggtitle("Public Ratings Distribution")
)
(
  plot8 <- ggplot(data=ratings_df) +
    geom_histogram(binwidth = 10, aes(x=CriticRating), fill="white", color="Red") +
    xlab("Critic Rating") +
    ggtitle("Critic Ratings Distribution")
)

# Smooth plot of critic vs public ratings
(
  plot9 <- ggplot(data=ratings_df, aes(x=scale(CriticRating), y=scale(PublicRating), color=Genre)) +
    geom_point() + geom_smooth(fill=NA)+
    ggtitle("Public vs critic Ratings by Genre")
)

# Box plot with all data of critic ratings per genre
(
  boxplot1 <- ggplot(data=ratings_df, aes(x=Genre, y=CriticRating, color=Genre)) +
    geom_boxplot(size=1.2) + geom_jitter(size=2, alpha=0.2) +
    ggtitle("Critic Ratings by Genre")
)

# Box plot with all data of public ratings per genre
(
  boxplot2 <- ggplot(data=ratings_df, aes(x=Genre, y=PublicRating, color=Genre)) +
    geom_boxplot(size=1.2) + geom_jitter(size=2, alpha=0.2) +
    ggtitle("Public Ratings by Genre")
)

# Box plot with critic rating over scatter of public ratings per genre
(
  box_scatter <- ggplot(data=ratings_df, aes(x=Genre, y=CriticRating, color=Genre)) +
    geom_boxplot(size=1.2) + geom_jitter(aes(y=ratings_df$CriticRating, alpha=0.5)) +
    ggtitle("Critic rating comparison")
)

# Show budget distribution by genre
(
facet_plot <- ggplot(data=ratings_df, aes(x=Budget)) + 
  geom_histogram(binwidth = 10, aes(fill=Genre), color="Black") +
  facet_grid(Genre~., scales="free") + xlim(0,200) +
    ggtitle("Budget Distribution by Movie Genre")
)



