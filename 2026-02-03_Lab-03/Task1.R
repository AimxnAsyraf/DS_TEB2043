score <- readline(prompt = "Input vector: ")
split_score <- unlist(strsplit(score, split = " "))
exam_score <- as.numeric(split_score)

grades <- cut(exam_score,
              breaks = c(-Inf, 49, 59, 69, 79, 89, 100),
              labels = c("F", "E", "D", "C", "B", "A"),
              right = TRUE
)

grade_count <- as.data.frame(table(grades))
names(grade_count) <- c("Grade", "Number of Student")

grade_table <- grade_count[order(grade_count$Grade, decreasing = TRUE), ]

pass_status <- exam_score > 49

score.data <- data.frame(
  Score = c("90-100", "80-89", "70-79", "60-69", "50-59", "<=49"),
  Grade = grade_table$Grade,
  Number_of_students = grade_table$`Number of Student`
)

print(score.data)

cat("\n--- Pass Status ---\n")
print(pass_status)