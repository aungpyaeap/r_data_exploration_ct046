# Multiple Linear Regression

# Importing the dataset
dataset = read.csv('50_Startups.csv')

# install.packages('caTools')
library(caTools)
set.seed(123) # setting seed to split dataset
split = sample.split(dataset$Profit, SplitRatio = 0.8) #split ratio with target variable D.V
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Fitting Multiple Linear Regression to the Training set
regressor = lm(formula = Profit ~ .,
               data = training_set)
regressor$results
# Predicting the Test set results
y1 = predict(regressor, data = training_set)
y_pred = predict(regressor, test_set)
summary(regressor)

# RMSE on training set
sqrt(mean((training_set$Profit-y1)^2))

# RMSE on test set
sqrt(mean((test_set$Profit-y_pred)^2))

# Question - Why is the RMSE on test set more than RMSE on training set?

