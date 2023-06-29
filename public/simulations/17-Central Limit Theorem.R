# Clear objects from Memory :
rm(list=ls())
#Clear Console:
cat("\014")

# Example of Central Limit Theorem using multiple distributions

# Number of samples to generate
num_samples <- 1000

# Number of observations in each sample
sample_size <- 100

# Function to generate a random sample from a given distribution
generate_sample <- function(distribution) {
  switch(distribution,
         "uniform" = runif(sample_size),
         "exponential" = rexp(sample_size),
         "normal" = rnorm(sample_size),
         "poisson" = rpois(sample_size, lambda = 2))
}

# Distribution names
distributions <- c("uniform", "exponential", "normal", "poisson")

# Plot settings
par(mfrow = c(2, 2))
par(mar = c(4, 4, 2, 2))

# Generate samples and plot the sample means
for (dist in distributions) {
  # Generate sample
  sample <- generate_sample(dist)
  
  # Calculate sample means
  sample_means <- sapply(1:num_samples, function(n) mean(sample[1:n]))
  
  # Plot the sample means
  plot(1:num_samples, sample_means, type = "l", col = "blue", xlab = "Sample Size",
       ylab = "Sample Mean", main = paste("Central Limit Theorem -", dist))
  
  # Add a reference line at the population mean
  if (dist == "normal") {
    abline(h = 0, col = "red", lty = 2)
  } else {
    abline(h = mean(sample), col = "red", lty = 2)
  }
}

# Reset plot settings to (1 Row, 1 Column)
par(mfrow = c(1, 1))
