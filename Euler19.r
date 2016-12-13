year <- 1901
sundays <- 0
monthlist <- 1
daycount <- 2 #Because Jan1 1901 was a Tuesday, and Tuesday is day 2 of the week.

while (year < 2001){
  if (monthlist == 4|monthlist == 6|monthlist == 9|monthlist==11) {
    daycount <- daycount + 30
  } else if (monthlist==2 & year%%4 == 0) {
    daycount <- daycount + 29
  } else if (monthlist==2 & year%%4 != 0) {
    daycount <- daycount + 28
  } else {
    daycount <- daycount + 31
  }
  if (daycount%%7 == 0) {
    sundays <- sundays + 1
  }
  if (monthlist == 12) {
    year <- year + 1
    monthlist <- 1
  } else {
    monthlist <- monthlist + 1
  }
}

sundays
