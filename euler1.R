#Project Euler, Problem 1

euler1 <- function(n) {
  sum <- 0
  for (i in 1:n) {
    if (i %% 3 == 0 || i %% 5 == 0) {
      sum <- sum + i
    }
  }
  return (sum)
}

euler1(999) #Provides correct answer.