# Clear objects from Memory :
rm(list=ls())
#Clear Console:
cat("\014")

# Example of creating a Poisson distribution

# Set the seed for randomization
set.seed(as.numeric(Sys.time()))

# Parameter for the Poisson distribution
lambda <- 3   # Average rate

# Generate random data from a Poisson distribution
data <- rpois(1000, lambda = lambda)

# Plot a histogram of the data
hist(data, breaks = seq(min(data)-0.5, max(data)+0.5), freq = FALSE, main = "Histogram of Poisson Distribution", xlab = "Number of Events", ylab = "Density")

# Calculate the theoretical probabilities
x <- 0:max(data)   # Possible number of events
probabilities <- dpois(x, lambda = lambda)

# Overlay the theoretical probabilities as a bar plot
points(x, probabilities, type = "h", col = "blue", lwd = 2)

# Add a legend
legend("topright", legend = c("Empirical", "Theoretical"), col = c("black", "blue"), lwd = 2, cex = 0.8)
