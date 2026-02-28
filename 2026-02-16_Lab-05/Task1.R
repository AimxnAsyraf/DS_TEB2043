input_year <- as.integer(readline("Input year: "))

if ((input_year %% 4 == 0 && input_year %% 100 != 0) || (input_year %% 400 == 0)) {
  cat("Output: ", input_year, " is a leap year.")
} else {
  cat("Output: ", input_year, " is a not leap year.")
}