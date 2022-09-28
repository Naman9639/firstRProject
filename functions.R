myFirstRFunc <- function(n){
  # This example function takes as input a positive integer and outputs 
  #the sum of all those numbers strictly below n which are divisible by either 2 or 7 or both.
  
  # Stop if the input is not a non-negative integer
  stopifnot(is.numeric(n),n %% 1 == 0,n >= 0)
  
  # initializing the sum to 0
  sum = 0 
  
  # Keeping the for loop strictly less than the number
  for(i in 1:(n-1)){
    # Checking for the divisibility by 2 and 7
    if(i%%2 == 0 | i %% 7 == 0){
      
      # Incrementing the sum
      sum <- sum + i 
    }
    
  }
  return(sum) # return the truth value which says whether or not num is prime
}