# Tests the normal distribution in R using law of large numbers

N <- 100000   # Number of trials
pass_count <- 0L   # Number of trials within the range
lower_limit <- -1.0
upper_limit <- 1.0


for(i in 1:N){
  random_var = rnorm(1)
  random_var
  if((random_var > lower_limit) & (random_var < upper_limit)){
    pass_count <- pass_count + 1
  }
}
cat(pass_count/N*100, "% passed.")
# With a normal distribution we would expect 68.2% to pass


# Another way of doing this would be:
pass_count <- 0L   # Number of trials within the range
for(random_var in rnorm(N)){
  if((random_var > lower_limit) & (random_var < upper_limit)){
    pass_count <- pass_count + 1
  }
}
cat(pass_count/N*100, "% passed.")
# With a normal distribution we would expect 68.2% to pass
