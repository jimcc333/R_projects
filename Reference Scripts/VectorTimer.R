# Times two ways of doing the same thing
# Goal is to get a*b where both are vectors

vector_size = 1000
a <- rnorm(vector_size)
b <- rnorm(vector_size)

# Vectorized way
start_time <- Sys.time()
c <- a * b
cat("Vectorized way takes", Sys.time() - start_time)

# Non-vector way
start_time <- Sys.time()
d <- rep(NA,vector_size)
for(i in 1:vector_size){
  d[i] <- a[i] * b[i]
}
cat("Non-vector way takes", Sys.time() - start_time)
