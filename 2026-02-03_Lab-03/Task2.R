student_records <- list(
  Robert = 59,
  Hemsworth = 71,
  Scarlett = 83,
  Evans = 68,
  Pratt = 65,
  Larson = 57,
  Holland = 62,
  Paul = 92,
  Simu = 92,
  Renner = 59
)

scores <- unlist(student_records)
# print(scores)

student_names <- names(scores)
# print(student_names)

highest <- max(scores)
lowest <- min(scores)
average <- mean(scores)

highest_score <- scores == highest
lowest_score <- scores == lowest

highest_student <- student_names[highest_score]
lowest_student <- student_names[lowest_score]

student_highest <- paste(highest_student, collapse = ", ")
student_lowest <- paste(lowest_student, collapse = ", ")

cat("Highest Score: ", highest, "\n")
cat("Lowest Score: ", lowest, "\n")
cat("Average Score: ", average, "\n")
cat("Student with highest score: ", student_highest, "\n")
cat("Student with lowest score: ", student_lowest)