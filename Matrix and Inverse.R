


# Create a sample matrix
A <- matrix(c(4, 7, 2, 6), nrow = 2, byrow = TRUE)

# Print matrix
print("Matrix A:")
print(A)

# Calculate mean of matrix
mean_A <- mean(A)
print("Mean of Matrix A:")
print(mean_A)

# Find inverse of matrix
A_inv <- solve(A)

# Print inverse
print("Inverse of Matrix A:")
print(A_inv)

# Calculate mean of inverse matrix
mean_A_inv <- mean(A_inv)
print("Mean of Inverse Matrix:")
print(mean_A_inv)

##########################################

# Define a function to generate matrix values
f <- function(x, y) {
  x^2 + y   # functional rule 
}

# Define vectors
x <- c(1, 2)
y <- c(3, 5)

# Create functional matrix
A <- outer(x, y, f)

# Print matrix
print("Functional Matrix A:")
print(A)

# Calculate mean of matrix
mean_A <- mean(A)
print("Mean of Matrix A:")
print(mean_A)

# Check determinant (important for inverse)
det_A <- det(A)
print("Determinant of A:")
print(det_A)

# Compute inverse only if determinant is not zero
if (det_A != 0) {
  A_inv <- solve(A)
  
  print("Inverse of Matrix A:")
  print(A_inv)
  
  # Mean of inverse matrix
  mean_A_inv <- mean(A_inv)
  print("Mean of Inverse Matrix:")
  print(mean_A_inv)
} else {
  print("Matrix is singular, inverse does not exist.")
}



