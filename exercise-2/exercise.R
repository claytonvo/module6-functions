# Exercise 2: writing and executing functions (II)

# Define a function `CompareLength` that takes in 2 character strings, and returns
# the sentence of the form
#   "The difference in length is N"
CompareLength <- function (string.one,string.two) {
  difference <- nchar(string.one) - nchar(string.two)
  if(difference < 0) {
    difference <- -difference
  }
  sentence <- paste("The difference in length is",difference)
  return (sentence)
}

# Pass two strings of different lengths to your `CompareLength` function
CompareLength("Hello","Hi")

# Define a function `DescribeDifference` that will return one of the following statements:
# "Your first string is longer by N characters"
# "Your second string is longer by N characters"
DescribeDifference <- function (string.one,string.two) {
  difference <- nchar(string.one) - nchar(string.two)
  if(difference > 0){
    sentence <- paste("The first string is longer by", difference, "characters")
  } else {
    sentence <- paste("The second string is longer by", -difference, "characters")
  }
  return(sentence)
}

# Pass two strings of different lengths to your `DescribeDifference` function
DescribeDifference("Jacket","Raincoat")