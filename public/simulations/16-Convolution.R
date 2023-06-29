# Clear objects from Memory :
rm(list=ls())
#Clear Console:
cat("\014")

# Define the input vectors
x <- c(1, 2, 3, 4, 5)
h <- c(0.5, 0.5, 0.5)

# Perform convolution
convolution_result <- convolve(x, h, type = "open")

# Plot the original vectors
plot(x, type = "b", pch = 16, col = "blue", xlab = "Index", ylab = "Value", main = "Convolution Example")
points(h, type = "b", pch = 16, col = "red")

# Plot the resulting convolution
points(convolution_result, type = "b", pch = 16, col = "green")

# Add a legend
legend("topright", legend = c("x", "h", "Convolution Result"), col = c("blue", "red", "green"), pch = 16)
