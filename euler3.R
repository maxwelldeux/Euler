#Project Euler, Problem 3

#install.packages("numbers") #Done on home desktop; will need to be installed if not done.
library(numbers)

euler3 <- function(x) {
  answer <- primeFactors(x)
  return (answer[length(answer)])
}

euler3(600851475143) #Provides correct answer
