age = c(55, 57, 56, 52, 51, 59, 58, 53, 59, 55, 60, 60, 60, 60, 52, 55, 56, 51,
        60, 52, 54, 56, 52, 57, 54, 56, 58, 53, 53, 50, 55, 51, 57, 60, 57, 55,
        51, 50, 57, 58)

age_factor <- factor(age)
# print(levels(age_factor))

age_table <- table(age_factor)
# print(age_table)
staff_age <- data.frame(
  age_table
)
print(staff_age)

age_range <- cut(age, 
                 breaks = c(50, 52, 54, 56, 58, 60),
                 labels = c("50-52", "52-54", "54-56", "56-58", "58-60"),
                 include.lowest = TRUE)

staff_age_range <- table(age_range)
#print(staff_age_range)
range_of_staff_age <- data.frame(staff_age_range)
print(range_of_staff_age)