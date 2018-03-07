# Uses data from s4-BasketballData.R
Games
rownames(Games)
colnames(Games)

FieldGoals

# Find field goals per game per season
FieldGoalsPerGame <- round(FieldGoals / Games, 2)

# Find minutes per game
MinutesPerGame <- round(MinutesPlayed / Games, 1)

# Plot field goals trend
matplot(t(FieldGoals), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend = Players, pch=15:18, col=c(1:4,6))

# Plot normalized field goals trend
matplot(t(FieldGoals/Games), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend = Players, pch=15:18, col=c(1:4,6))

# Plot field accuracy trend
matplot(t(FieldGoals/FieldGoalAttempts), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend = Players, pch=15:18, col=c(1:4,6))

# Plot minutes played of Kobe
Data <- MinutesPlayed[1,,drop=F]
matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend = Players[1], pch=15:18, col=c(1:4,6))

# Uses functions from PlotFunctions.R
RowPlotter(Salary)
RowPlotter(Salary / Games)
RowPlotter(Salary / FieldGoals)

# In-Game metrics
RowPlotter(FieldGoals / Games)
RowPlotter(FieldGoals / FieldGoalAttempts)
RowPlotter(FieldGoalAttempts / Games)
RowPlotter(Points / Games)

# Interesting observations
RowPlotter(MinutesPlayed / Games)
RowPlotter(Games)
RowPlotter(FieldGoals / MinutesPlayed)
RowPlotter(Points / FieldGoals)

# Free throw plots
RowPlotter(FreeThrows)
RowPlotter(FreeThrows / Games)
RowPlotter(FreeThrows / FTAs)



