## Clear objects from Memory :
rm(list=ls())
##Clear Console:
cat("\014")

# Example of marginal distribution

# Set the seed for randomization
set.seed(as.numeric(Sys.time()))

# Generate two random variables with a joint distribution
x <- rnorm(1000, mean = 2, sd = 1)
y <- rnorm(1000, mean = 3, sd = 2)

# Create a scatter plot of the joint distribution
plot(x, y, main = "Joint Distribution", xlab = "X", ylab = "Y")

# Compute the marginal distributions
marginal_x <- hist(x, breaks = 15, plot = FALSE)
marginal_y <- hist(y, breaks = 15, plot = FALSE)

# Plot the marginal distribution of variable X
plot(marginal_x$mids, marginal_x$counts, type = "h", lwd = 2, col = "blue",
     main = "Marginal Distribution of X", xlab = "X", ylab = "Frequency")

# Plot the marginal distribution of variable Y
plot(marginal_y$mids, marginal_y$counts, type = "h", lwd = 2, col = "red",
     main = "Marginal Distribution of Y", xlab = "Y", ylab = "Frequency")