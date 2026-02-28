V1 = c(2,3,1,5,4,6,8,7,9)

Matrix_1 <- matrix(V1, nrow = 3, ncol = 3)
rownames(Matrix_1) <- c("Row 1", "Row 2", "Row 3")
colnames(Matrix_1) <- c("Column 1", "Column 2", "Column 3")
print(Matrix_1)

Matrix_2 <- t(Matrix_1)
rownames(Matrix_2) <- c("Row 1", "Row 2", "Row 3")
colnames(Matrix_2) <- c("Column 1", "Column 2", "Column 3")
print(Matrix_2)

#Add
add_matrix <- matrix(0, nrow = nrow(Matrix_1), ncol = ncol(Matrix_2))
for (i in 1:nrow(Matrix_1)) {
  for (j in 1:ncol(Matrix_1)) {
    add_matrix[i, j] <- Matrix_1[i, j] + Matrix_2[i, j]
  }
}
# print(add_matrix)

#Subtract
substract_matrix <- matrix(, nrow = nrow(Matrix_1), ncol = ncol(Matrix_2))
for(i in 1:nrow(Matrix_1)) {
  for (j in 1:ncol(Matrix_2)) {
    substract_matrix[i, j] <- Matrix_1[i, j] - Matrix_2[i, j]
  }
}
# print(substract_matrix)


#Multiply
multiply_matrix <- matrix(, nrow = nrow(Matrix_1), ncol = ncol(Matrix_2))
for(i in 1:nrow(Matrix_1)) {
  for(j in 1:ncol(Matrix_1)) {
    multiply_matrix[i, j] <- Matrix_1[i, j] * Matrix_2[i, j]
  }
}
# print(multiply_matrix)

#Divide
divide_matrix <- matrix(, nrow = nrow(Matrix_1), ncol = ncol(Matrix_2))
for(i in 1:nrow(Matrix_1)) {
  for(j in 1:ncol(Matrix_1)) {
    divide_matrix[i, j] <- Matrix_1[i, j] / Matrix_2[i, j]
  }
}
# print(divide_matrix)






