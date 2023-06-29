# Clear objects from Memory :
rm(list=ls())
#Clear Console:
cat("\014")

# Example of creating a binomial distribution

# Set the seed for randomization
set.seed(as.numeric(Sys.time()))

# Parameters for the binomial distribution
n <- 10    # Number of trials
p <- 0.5   # Probability of success

# Generate random data from a binomial distribution
data <- rbinom(1000, size = n, prob = p)

# Plot a histogram of the data
hist(data, breaks = seq(min(data)-0.5, max(data)+0.5), freq = FALSE, main = "Histogram of Binomial Distribution",
     xlab = "Number of Successes", ylab = "Density")

# Calculate the theoretical probabilities
x <- 0:n    # Possible number of successes
probabilities <- dbinom(x, size = n, prob = p)

# Overlay the theoretical probabilities as a bar plot
points(x, probabilities, type = "h", col = "blue", lwd = 2)

# Add a legend
legend("topright", legend = c("Empirical", "Theoretical"), col = c("black", "blue"), lwd = 2, cex = 0.8)
