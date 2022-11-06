# Create model
library(randomForest)

dataset <- iris

model <- randomForest(formula = Species ~ ., data = dataset)

save(model, file = "model.RData")
