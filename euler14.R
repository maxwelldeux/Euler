#Project Euler, Problem 14

collatz <- function(x) {
  steps <- 0
  while (x>1) {
    if (x %% 2 == 0) {
      x <- x/2
      steps <- steps + 1
    } else {
      x <- (3*x) + 1
      steps <- steps + 1
    }
  }
  return(steps)
}

collatz(13) #returns number of steps taken to get to 1

largeststep <- 1
answer <- 0

for(i in 2:999999) {
  if (collatz(i) > largeststep) {
    largeststep <- collatz(i)
    answer <- i
  }
}
largeststep
answer #returns the correct answer

#Not the fastest code, but it gets you to the right spot.
