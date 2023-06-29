# Clear objects from Memory :
rm(list=ls())
#Clear Console:
cat("\014")

# Probability Mass Function (PMF) example
# Scenario: Rolling a fair six-sided die

# Create a function to calculate the PMF
calculate_pmf <- function(num_sides) {
  # Initialize the PMF vector
  pmf <- rep(0, num_sides)
  
  # Calculate the probability for each outcome
  probability <- 1 / num_sides
  
  # Assign the probabilities to each outcome in the PMF
  pmf <- rep(probability, num_sides)
  
  return(pmf)
}

# Number of sides on the die
num_sides <- 6

# Calculate the PMF for rolling a fair six-sided die
pmf <- calculate_pmf(num_sides)

# Creates some space margin above the bar plots for clarity
max_height <- max(pmf)
ylim_range <- c(0.00,max_height * 2)

# Plot the PMF using a bar plot
barplot(pmf, names.arg = 1:num_sides, xlab = "Outcome", ylab = "Probability", 
        main = "Probability Mass Function (PMF)", col = "blue", space = 0.05,  ylim = ylim_range)
