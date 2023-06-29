## Clear objects from Memory :
rm(list=ls())
##Clear Console:
cat("\014")

# Example of creating a complex PDF plot
# Generate random data from two different distributions
data1 <- rnorm(1000, mean = 0, sd = 1)
data2 <- rnorm(1000, mean = 3, sd = 2)

# Estimate the densities of both data sets
density_data1 <- density(data1)
density_data2 <- density(data2)


# Creates some space margin above the bar plots for clarity
max_height <- max(c(density_data1$y,density_data2$y))
ylim_range <- c(0.00,max_height)


# Plot the PMF using a bar plot
plot(density_data1, main = "Probability Density Function", xlab = "Value", ylab = "Density",
     xlim = c(-10, 10), ylim = ylim_range, col = "blue", lwd = 2)
lines(density_data2, col = "red", lwd = 2)
legend("topright", legend = c("1st PDF Data", "2nd PDF Data"), col = c("blue", "red"), lwd = 2)
grid(nx = length(density_data1) / (length(density_data2) * 0.05))