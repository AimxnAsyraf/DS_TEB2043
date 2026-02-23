user.data <- data.frame(
  name = c("Anastasia", "Dima", "Michael", "Matthew", "Laura", "Kevin", "Jonas"),
  score = c(12.5, 9.0, 16.5, 12.0, 9.0, 8.0, 19.0),
  attempts = c(1,3,2,3,2,1,2)
)

user.data$qualify <- c("yes", "no", "yes", "no", "no", "no", "yes")
updated_user.data <- user.data

user.newdata <- data.frame(
  name = "Emily",
  score = 14.5,
  attempts = 1,
  qualify = "yes"
)
user.finaldata <- rbind(updated_user.data, user.newdata)

user.finaldata$qualify <- as.factor(user.finaldata$qualify)

print(str(user.finaldata))
print(summary(user.finaldata))
cat("Number of row: ", nrow(user.finaldata), "\n")
cat("Number of column: ", ncol(user.finaldata))

