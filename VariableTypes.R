# Quick survey of data types in R

# Integer
x <- 2L
typeof(x) # Confrm

# Double
y <- 2.
typeof(y)

# Complex
z <- 3 + 2i
typeof(z)

# Character
a <- "h"
typeof(a)
b <- 'k'
typeof(b)

# Logical
c <- T
typeof(c)
d <- TRUE
typeof(d)

# Vectors
NumberVector <- c(3, 4, 5, 6)
is.numeric(NumberVector)
is.integer(NumberVector)
is.double(NumberVector)

IntegerVector <- c(3L, 4L,88L)
is.numeric(IntegerVector)
is.integer(IntegerVector)
is.double(IntegerVector)

CharacterVector <- c("a", "B", "hello", "world")
is.character(CharacterVector)

seq() # Sequence, like ":"
rep() # Replicate

SequenceVector <- seq(1,20,1)
SequenceVector

RepeatVector <- rep(3.14, 20)
RepeatVector

MetaRepeat <- rep(SequenceVector, 5)
MetaRepeat

# Accessing vectors
SequenceVector[1]   # Indexing starts at 1
SequenceVector[1:2]
SequenceVector[-1]  # Coming from python, this is so ridiculous 
SequenceVector[c(-2,-3,-4,-5)]
SequenceVector[-3:-5]

