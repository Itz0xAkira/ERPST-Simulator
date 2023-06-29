# Clear objects from Memory :
rm(list=ls())
#Clear Console:
cat("\014")

# Simulating conditional probability
# Scenario: Rolling two dice & Getting Both Dice Even

# Function to simulate rolling a fair six-sided die
roll_die <- function() {
  sample(1:6, 1, replace = TRUE)
}

# Function to simulate rolling an unfair six-sided die with probability of giving (2,4,6: 1/4; 1,3,5: 1/6)
roll_unfair_die <- function() {
  sample(1:6, 1, replace = TRUE, prob = c(1/6, 1/4, 1/6, 1/4, 1/6, 1/4))
}


# Function to simulate rolling two dice and calculating conditional probability
simulate_fair_conditional_probability <- function(num_trials) {
  # Variables to track the counts
  total_count <- 0
  condition_count <- 0
  
  for (i in 1:num_trials) {
    # Roll two dice
    die1 <- roll_die()
    die2 <- roll_die()
    
    # Increment the total count
    total_count <- total_count + 1
    
    # Check the condition: both dice show even numbers
    if (die1 %% 2 == 0 && die2 %% 2 == 0) {
      # Increment the condition count
      condition_count <- condition_count + 1
    }
  }
  
  # Calculate and return the conditional probability
  conditional_probability <- condition_count / total_count
  return(conditional_probability)
}

simulate_unfair_conditional_probability <- function(num_trials) {
  # Variables to track the counts
  total_count <- 0
  condition_count <- 0
  
  for (i in 1:num_trials) {
    # Roll two dice
    die1 <- roll_unfair_die()
    die2 <- roll_unfair_die()
    
    # Increment the total count
    total_count <- total_count + 1
    
    # Check the condition: both dice show even numbers
    if (die1 %% 2 == 0 && die2 %% 2 == 0) {
      # Increment the condition count
      condition_count <- condition_count + 1
    }
  }
  
  # Calculate and return the conditional probability
  conditional_probability <- condition_count / total_count
  return(conditional_probability)
}


# Simulate conditional probability with 100,000 trials
num_trials <- 100000
fair_conditional_probability <- simulate_fair_conditional_probability(num_trials)
unfair_conditional_probability <- simulate_unfair_conditional_probability(num_trials)

# Print the result
cat("Simulated Fair Conditional Probability:", fair_conditional_probability, "\n")
cat("Simulated Unfair Conditional Probability:", unfair_conditional_probability, "\n")
