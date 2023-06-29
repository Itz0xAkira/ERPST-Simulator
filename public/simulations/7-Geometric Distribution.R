# Clear objects from Memory :
rm(list=ls())
#Clear Console:
cat("\014")

# Example of creating a geometric distribution

# Set the seed for randomization
set.seed(as.numeric(Sys.time()))

# Parameter for the geometric distribution
prob <- 0.3   # Probability of success

# Generate random data from a geometric distribution
data <- rgeom(1000, prob = prob)

# Plot a histogram of the data
hist(data, breaks = seq(min(data)-0.5, max(data)+0.5), freq = FALSE, main = "Histogram of Geometric Distribution", xlab = "Number of Trials", ylab = "Density")

# Calculate the theoretical probabilities
x <- 0:max(data)   # Possible number of trials
probabilities <- dgeom(x, prob = prob)

# Overlay the theoretical probabilities as a bar plot
points(x, probabilities, type = "h", col = "blue", lwd = 2)

# Add a legend
legend("topright", legend = c("Empirical", "Theoretical"), col = c("black", "blue"), lwd = 2, cex = 0.8)
