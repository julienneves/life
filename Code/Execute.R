## Main file for execution

# Executes the estimation of the models
source('estimation.R' , local = TRUE)

# Forecast the models from 2000 to 2009
source('forecast.R' , local = TRUE)

# Compute the errors (mean/absolute)
source('errors.R' , local = TRUE)

# Print the goodness-of-fit tests
source('rmse.R' , local = TRUE)

# Print plots for paper
source('plots.R' , local = TRUE)

