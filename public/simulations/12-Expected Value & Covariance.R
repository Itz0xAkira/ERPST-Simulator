# Clear objects from Memory :
rm(list=ls())
#Clear Console:
cat("\014")

# Example of calculating & visualizing expected values, variance, and covariance

# Set the seed for randomization
set.seed(as.numeric(Sys.time()))

# Generate two random variables
x <- rnorm(1000, mean = 2, sd = 1)
y <- rnorm(1000, mean = 3, sd = 2)

# Calculate the expected values
mean_x <- mean(x)
mean_y <- mean(y)

# Calculate the variances
var_x <- var(x)
var_y <- var(y)

# Calculate the covariance
cov_xy <- cov(x, y)

# Create a scatter plot
plot(x, y, main = "Scatter Plot", xlab = "X", ylab = "Y")

# Printing Expected Values, Variances & Covariance
cat(paste("Expected Value X:",mean_x))
cat(paste("Expected Value Y:",mean_y))
cat(paste("Var X:",var_x))
cat(paste("Var Y:",var_y))
cat(paste("Cov(X,Y):",cov_xy))