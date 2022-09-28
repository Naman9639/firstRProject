x_vect <- seq(12, 2, -2)
X <- matrix(x_vect, 2, 3)
Y <- matrix(seq(1,4), 2, 2)
Z <- matrix(seq(4,10, 2), 2, 2)

# Matrix Transpose
Y_t <- t(Y)
Z_t <- t(Z)

# Matrix Sum
sum1 <- Y + Z
sum2 <- Z + Y

# Matrix Product
prod1 <- Y %*% Z
prod2 <- Z %*% Y
R <- Y %*% X

# If we do X %*% Y then we get a non-confromable arguments. This is because 
# to multiply 2 matrix of dimensions nxm and axb, m = a otherwise we cannot 
# perform the multiplication.

# Element wise multiplication
e_prod1 <- Y * Z
e_prod2 <- Z * Y

## Element wise multiplication is commutative.

# Matric inverse
inv_Y <- solve(Y)
identity_matrix <- inv_Y %*% Y
inv_prod <- inv_Y %*% X

# Multiplication without calculating the inverse
without_inv_prod <- solve(a = Y, b = X)