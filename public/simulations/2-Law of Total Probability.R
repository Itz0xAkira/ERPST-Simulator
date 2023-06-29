# Clear objects from Memory :
rm(list=ls())
#Clear Console:
cat("\014")

# Law of Total Probability
# Scenario: Flipping a biased coin

# Function to simulate flipping a biased coin
flip_coin <- function(p) {
  if (runif(1) < p) {
    return("H")  # Head
  } else {
    return("T")  # Tail
  }
}

# Function to simulate the Law of Total Probability
simulate_total_probability <- function(num_trials, p) {
  # Variables to track the counts
  total_count <- 0
  event1_count <- 0
  event2_count <- 0
  
  for (i in 1:num_trials) {
    # Flip the coin
    outcome <- flip_coin(p)
    
    # Increment the total count
    total_count <- total_count + 1
    
    # Check the event: the coin shows "H"
    if (outcome == "H") {
      # Increment the event1 count
      event1_count <- event1_count + 1
    }
    
    # Check the event: the coin shows "T"
    if (outcome == "T") {
      # Increment the event2 count
      event2_count <- event2_count + 1
    }
  }
  
  # Calculate and return the probabilities
  probability_event1 <- event1_count / total_count
  probability_event2 <- event2_count / total_count
  
  return(list(Event1 = probability_event1, Event2 = probability_event2))
}

# Simulate the Law of Total Probability with 100,000 trials and bias 0.6
num_trials <- 100000
probability <- simulate_total_probability(num_trials, 0.6)

# Print the results
cat("Simulated Probability of Event 1:", probability$Event1, "\n")
cat("Simulated Probability of Event 2:", probability$Event2, "\n")
