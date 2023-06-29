# Clear objects from Memory :
rm(list=ls())
#Clear Console:
cat("\014")

# Example of calculating and visualizing correlation coefficient

# Set the seed for randomization
set.seed(as.numeric(Sys.time()))

# Generate two random variables
x <- rnorm(1000, mean = 2, sd = 1)
y <- rnorm(1000, mean = 3, sd = 2)

# Calculate the correlation coefficient
correlation_coefficient <- cor(x, y)

# Create a scatter plot of the variables
plot(x, y, main = "Scatter Plot", xlab = "X", ylab = "Y")

# Add a text annotation for the correlation coefficient

cat(paste("Correlation Coefficient =", round(correlation_coefficient, 2)))