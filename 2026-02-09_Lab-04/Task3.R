Array1 <- array(c(1:24), dim = c(2, 4, 3))
print(Array1)

Array2 <- array(c(25:54), dim = c(3, 2, 5))
print(Array2)

second_row <- Array1[c(2),,2]
element_third <- Array2[3, 2, 1]

cat("The second row of the second matrix of the array:\n", second_row, "\n")
cat("The element in the 3rd row and 3rd column of the 1st matrix:\n", element_third)