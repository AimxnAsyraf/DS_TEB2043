print("Check whether an n digits number is Armstrong or not:\n")
print("--------------------------------------------------------")

input_integer <- as.numeric(readline("Input an integer: "))

num_of_digits <- nchar(as.character(input_integer))
sum_of_digits <- 0

check_integer <- input_integer

while (check_integer > 0) {
  digit <- check_integer %% 10
  sum_of_digits <- sum_of_digits + digit^num_of_digits
  check_integer <- floor(check_integer / 10)2
}

if (sum_of_digits == input_integer) {
  cat(input_integer, " is an Armstrong number.")
} else {
  cat(input_integer, " is not an Armstrong number.")
}

