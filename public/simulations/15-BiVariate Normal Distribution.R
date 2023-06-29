# Install and load the MASS package
library(MASS)

# Clear objects from Memory :
rm(list=ls())
#Clear Console:
cat("\014")

# Set the seed for randomization
set.seed(as.numeric(Sys.time()))

# Define the mean vector and covariance matrix
mean_vector <- c(2, 3)  # Mean vector (mean of x and y)
cov_matrix <- matrix(c(1, 0.5, 0.5, 2), nrow = 2, ncol = 2, byrow = TRUE)  # Covariance matrix

# Generate bivariate normal data
data <- mvrnorm(n = 1000, mu = mean_vector, Sigma = cov_matrix)

# Extract the x and y coordinates
x <- data[, 1]
y <- data[, 2]

# Create a scatter plot of the bivariate normal data
plot(x, y, main = "Bivariate Normal Distribution", xlab = "X", ylab = "Y")
