#Project Euler, Problem 9

squares <- c()
for (x in 1:1000) {
  squares <- c(squares, x^2)
}

triples <- c()

for (x in squares) {
  for (y in squares) {
    if(y>x && (x+y) %in% squares) {
      triples <- rbind(triples, cbind(x,y,x+y))
    }
  }
}

triples #this is a^2, b^2 and c^2

newtriples <- matrix(c(sapply(triples, sqrt)), ncol=3, byrow=F) #calculates A, B, C
newtriples
sums <- apply(newtriples, 1, sum) #calculates the sum of the triples
sums

newtriples[match(1000,sums),] #returns the 3 numbers you multiply to find the answer.
