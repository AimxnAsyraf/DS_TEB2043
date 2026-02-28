input_integer <- as.integer(readline("Input an integer: "))

for (i in 1:input_integer) {
  cat("Number is: ", i, " and cube of the ", i, " is: ", i^3, "\n")
}