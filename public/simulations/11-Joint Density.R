library(hexbin)
library(MASS)

# Clear objects from Memory :
rm(list=ls())
#Clear Console:
cat("\014")

# Example of creating a joint density distribution

# Set the seed for randomization
set.seed(as.numeric(Sys.time()))

sample_size = 100

# Generate random data for two variables
x <- rnorm(sample_size, mean = 2, sd = 1)
y <- rnorm(sample_size, mean = 3, sd = 2)

# Create a 2D histogram to estimate the joint density
hist_2d <- hexbin(x, y, xbins = 20)

# Calculate the density estimates
density_est <- kde2d(x, y, n = 100)

# Create a contour plot of the joint density
contour(density_est, xlab = "X", ylab = "Y", main = "Joint Density Distribution")

# Add points for the generated data
points(x, y, pch = 20, col = "red")

# Add a legend
legend("topright", legend = c("Density Contours", "Data Points"), col = c("black", "red"), pch = c(-1, 20), cex = 0.8)
