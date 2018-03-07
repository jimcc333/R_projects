# Plots Data and uses Legend_Data for the legend
MatrixPlot <- function(Data, Legend_Data){
  
  matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.01, legend = Legend_Data, pch=15:18, col=c(1:4,6))
  
}

# Plots the rows in the given data
RowPlotter <- function(data, rows=1:10){
  Data <- data[rows,,drop=F]
  matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.01, legend = Players[rows], pch=15:18, col=c(1:4,6))
  
}

