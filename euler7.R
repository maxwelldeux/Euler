#Project Euler, Problem 7

euler7 <- function(x) {
  primelist <- c(2,3,5)
  slut <- 7
  while (length(primelist) < x) {
    if (isPrime(slut)) {
      primelist <- c(primelist, slut)
    }
    slut <- slut + 2
  }
  return(primelist[x])
}

euler7(10001) #This provides the correct answer.
