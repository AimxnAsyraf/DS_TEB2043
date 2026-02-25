chemistry_scores <- c(
  Robert = 59, Hemsworth = 71, Scarlett = 83, Evans = 68,
  Pratt = 65, Larson = 57, Holland = 62, Paul = 92,
  Simu = 92, Renner = 59
)
# print(chemistry_scores)

physics_scores <- c(
  Robert = 89, Hemsworth = 86, Scarlett = 65, Evans = 52,
  Pratt = 60, Larson = 67, Holland = 40, Paul = 77,
  Simu = 90, Renner = 61
)
# print(physics_scores)

exam_records <- list(
  Chemistry = chemistry_scores,
  Physics = physics_scores
)
# print(exam_records)

fail_chemistry <- sum(exam_records$Chemistry <= 49)
fail_physics <- sum(exam_records$Physics <= 49)

cat("Total students failed Chemistry exams: ", fail_chemistry, "\n")
cat("Total students failed Physics exams: ", fail_physics, "\n")

chemistry_names <- names(exam_records$Chemistry)
physics_names <- names(exam_records$Physics)

highest_chemistry <- max(exam_records$Chemistry)
student_highest_chemistry <- chemistry_names[exam_records$Chemistry == highest_chemistry]
print(student_highest_chemistry)

highest_physics <- max(exam_records$Physics)
student_highest_physics <- physics_names[exam_records$Physics == highest_physics]
print(student_highest_physics)

cat("Students with highest score for Chemistry: ", paste(student_highest_chemistry, collapse = ", "), "\n")
cat("Students with highest score for Physics: ", paste(student_highest_physics, collapse = ", "))

