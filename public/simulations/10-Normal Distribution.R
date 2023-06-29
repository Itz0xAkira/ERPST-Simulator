# Clear objects from Memory :
rm(list=ls())
#Clear Console:
cat("\014")

# Example of creating a normal distribution

# Set the seed for randomization
set.seed(as.numeric(Sys.time()))

# Parameters for the normal distribution
mean <- 0
sd <- 1

# Generate random data from a normal distribution
data <- rnorm(1000, mean = mean, sd = sd)

#Concatenating histogram title
histogram_title = paste("(mean = ",mean,", sd = ",sd,")");

# Plot a histogram of the data
hist(data, breaks = 20, freq = FALSE, main = paste("Histogram of Normal Distribution ",histogram_title), xlab = "Value", ylab = "Density")

# Overlay a density plot of the data
lines(density(data), col = "red", lwd = 2)

# Calculate basic statistics
data_mean <- mean(data)
data_sd <- sd(data)
data_min <- min(data)
data_max <- max(data)

# Print the basic statistics
cat("Basic Statistics:\n")
cat("Mean:", data_mean, "\n")
cat("Standard Deviation:", data_sd, "\n")
cat("Minimum:", data_min, "\n")
cat("Maximum:", data_max, "\n")

# Generate random data from a normal distribution with different parameters
data2 <- rnorm(1000, mean = 5, sd = 2)

# Plot a histogram of the new data
hist(data2, breaks = 30, freq = FALSE, main = "Histogram of Normal Distribution (mean = 5, sd = 2)", xlab = "Value", ylab = "Density")

# Overlay a density plot of the new data
lines(density(data2), col = "blue", lwd = 2)

# Calculate Mean, Min, Max and Standard Deviation
data2_mean <- mean(data2)
data2_sd <- sd(data2)
data2_min <- min(data2)
data2_max <- max(data2)

# Print Mean, Min, Max and Standard Deviation
cat("Mean:", data2_mean, "\n")
cat("Standard Deviation:", data2_sd, "\n")
cat("Minimum:", data2_min, "\n")
cat("Maximum:", data2_max, "\n")
