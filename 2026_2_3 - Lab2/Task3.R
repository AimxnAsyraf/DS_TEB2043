name <- readline(prompt = "Enter your name: ")
phone_number <- (readline(prompt = "Enter your phone number: "))

uppercase_name <- toupper(name)

first_3_digits <- substr(phone_number, 1, 3)
last_4_digits <- substr(phone_number, nchar(phone_number) - 3, nchar(phone_number))

cat("Hi, ", uppercase_name, ". A verification code has been sent to ", first_3_digits, " -xxxxx ", last_4_digits)