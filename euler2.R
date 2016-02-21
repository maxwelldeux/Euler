#Project Euler, Problem 2

euler2 <- function() {
  fib <- c(1,2)
  for (i in 3:100000) {
  if (fib[i-1] >= 4000000) {
    break
  } 
  fib[i] = fib[i-1] + fib[i-2]
  }
  answer <- 0
  for (j in fib) {
    if (j < 4000000 && j %% 2 == 0) {
      answer <- answer + j
    }
  }
  return(answer)
}

euler2() #Provides correct answer