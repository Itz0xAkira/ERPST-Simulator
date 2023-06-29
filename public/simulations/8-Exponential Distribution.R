# Clear objects from Memory :
rm(list=ls())
#Clear Console:
cat("\014")

# Example of creating an exponential distribution

# Set the seed for randomization
set.seed(as.numeric(Sys.time()))

# Parameters for the exponential distribution
rate <- 0.2   # Rate parameter (1/mean)

# Generate random data from an exponential distribution
data <- rexp(1000, rate = rate)

# Plot a histogram of the data
hist(data, breaks = "FD", freq = FALSE, main = "Histogram of Exponential Distribution", xlab = "Value", ylab = "Density")

# Calculate the theoretical density function
x <- seq(0, max(data), length = 100)
density <- dexp(x, rate = rate)

# Overlay the theoretical density function as a line plot
lines(x, density, col = "blue", lwd = 2)

# Add a legend
legend("topright", legend = c("Empirical", "Theoretical"), col = c("black", "blue"), lwd = 2, cex = 0.8)
