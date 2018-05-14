# Define custom balls and directions
input.vector <- c("L", "L", "L", "L")

# Or generate a random set of balls, set to 15 balls currently
input.vector <- sample(c("L","R"), 15, replace = T)

# The algorithm
{ 
  count.vector <- 0
  while ("R" %in% input.vector) {
    count.vector <- count.vector + sum(which(input.vector == "R")[1] < which(input.vector == "L"))
    input.vector <- input.vector[-which(input.vector == "R")[1]]
  }
  cat(paste(count.vector, "collisions until max entropy"))
}