# Clear objects from Memory :
rm(list=ls())
#Clear Console:
cat("\014")

# Example of creating a Cumulative Distribution Function (CDF)

# Function to estimate CDF
estimate_cdf <- function(data) {
  # Sort the data in ascending order
  sorted_data <- sort(data)
  
  # Get the number of data points
  n <- length(sorted_data)
  
  # Calculate the probabilities for each data point
  probabilities <- (1:n) / n
  
  # Return the sorted data and corresponding probabilities
  return(list(data = sorted_data, probabilities = probabilities))
}

# Generate some random data
data <- rnorm(10000)

# Estimate the CDF
cdf_estimate <- estimate_cdf(data)

# Extract the sorted data and probabilities
sorted_data <- cdf_estimate$data
probabilities <- cdf_estimate$probabilities

# Plot the estimated CDF
plot(sorted_data, probabilities, type = "s", main = "Estimated CDF", xlab = "Value", ylab = "Probability")
grid(nx = length(cdf_estimate$probabilities) / (length(cdf_estimate$probabilities) * 0.05))