# LOOPS


# ----- while loop -----

# Check keyboard stop using escape key
while(T){
  print("Hit escape key!")
}

# Count up to value
count_to <- 20
counter <- 1
while(counter < count_to + 1){
  print(counter)
  counter <- counter + 1
}


# ----- for loop -----
count_to <- 20
for(i in 1:count_to){
  cat("This is iteration", i, "\n")
}


# ----- if statement -----
x <- rnorm(1)
rm(answer)  # removes variable, not necessary
if(x > 1){
  answer <- "Greater than 1"
} else {
  answer <- "Not greater than 1"
}






