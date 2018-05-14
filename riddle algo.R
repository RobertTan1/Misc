# Define custom balls and directions
input.vector <- c("R", "R", "L")

# Or generate a random set of balls, set to 15 balls currently
input.vector <- sample(c("L","R"), 15, replace = T)

# The algorithm
{
  # Initialize var for counting ghost-throughs
  count <- 0
  # While loop, continue so long as there are "R"s in the vector
  while ("R" %in% input.vector) {
    # Evaluate boolean whether a "L" ball is right of the first "R" ball, then...
    # Sum the number of TRUEs, add to count
    count <- count + sum(which(input.vector == "R")[1] < which(input.vector == "L"))
    # Remove the "R" ball that we just evaluated
    input.vector <- input.vector[-which(input.vector == "R")[1]]
  }
  # When loop ends, print out the result
  cat(paste(count, "collisions until max entropy"))
}
