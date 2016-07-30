# Load relevant libraries
library(car)
# Load in wrapper functions
source("R-practice/simple_functions.R")

# Read in csv file containing all necessary data
total_df <- read.table("All Movies Domestic Grosses.csv", sep=",", header=T, quote="\"", na.strings=c("-", "N/A"))

# Determine the size of the data frame and starting index of the validation set
total_size <- nrow(total_df)
# The validation set is at the bottom and we can find out how many movies are included by looking at the lowest rank
validate_index <- total_size - tail(total_df$Rank, n=1)

# Split the total dataframe into the training dataframe and validation dataframe
train_df <- total_df[c(1:validate_index)]
validate_df <- total_df[c((validate_index+1):total_size)]

# Apply three linear models to the training set
first_fit <- lm(Total.Gross ~ Theaters.Total * Opening.Gross * Theaters.Opening * duration, data=train_df)
transform_fit <- lm(sqrt(Total.Gross) ~ Theaters.Total * Opening.Gross * Theaters.Opening, data=train_df)

# Beginning diagnosis showed that the dependent variables are not normally distributed based on the Q-Q plots.
# The Q-Q plots show heavy tails which implies that a power transformation may correct the issue.
power <- powerTransform(train_df$Total.Gross)
lambda <- power$lambda

power_fit <- lm(Total.Gross^lambda~ Theaters.Total * Opening.Gross * Theaters.Opening * duration, data=train_df)


# Make the predictions using the validation set and show results
first_fit_predicts <- predict(first_fit, validate_df, type="response")
transform_fit_predicts <- predict(transform_fit, validate_df, type="response")
power_fit_predicts <- predict(power_fit, validate_df, type="response")

first_fit_residual <- abs(first_fit_predicts - validate_df$Total.Gross)

transform_residual <- abs(first_fit_predicts - sqrt(validate_df$Total.Gross))
transform_resid_sq <- abs(first_fit_predicts^2 - validate_df$Total.Gross)

# Take the absolute value of lambda when raising to the power just in case lambda is negative
power_residual <- abs(first_fit_predicts - sqrt(validate_df$Total.Gross))
power_resid_sq <- abs(first_fit_predicts^(1/abs(lambda)) - validate_df$Total.Gross)