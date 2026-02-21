weight <- as.numeric(readline(prompt = "Enter your weight: "))
height <- as.numeric(readline(prompt = "Enter your height: "))
height_in_m <- height / 100

BMI <- round(weight / (height_in_m ^ 2), 1)
cat("BMI: ", BMI, "\n")

Underweight <- BMI <= 18.4
Normal <- BMI <= 24.9 & BMI >= 18.5
Overweight <- BMI <= 39.9 & BMI >= 25.0
Obese <- BMI >= 40.0

cat("Underweight: ", Underweight, "\n")
cat("Normal:", Normal, "\n")
cat("Overweight: ", Overweight, "\n")
cat("Obese: ", Obese, "\n")
