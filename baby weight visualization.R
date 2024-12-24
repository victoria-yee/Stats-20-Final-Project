---
title: "Stats 20, F23 -- Final"
author: "Victoria Yee"
date: "`12-03-24"
---

# read dataset
births <- read.csv("births.csv", stringsAsFactors = TRUE)

hist(births$weight[births$Habit == "Smoker"], prob = TRUE, density = 50, freq = FALSE, xlab = "Baby Weight (oz)", main = "Distribution of Weight Split by Smoking Status", col = "#3cbcc5", )
hist(births$weight[births$Habit ==  "NonSmoker"], prob = TRUE, freq = FALSE, density = 50, col = "#9cc4a9", add =TRUE)

# density curves
smoker <- births$weight[births$Habit == "Smoker"]
nonsmoker <-births$weight[births$Habit ==  "NonSmoker"]
lines(density(smoker), col="#3cbcc5", lwd=2)
lines(density(nonsmoker), col="#9cc4a9", lwd=2)

# add median weights 
abline(v = median(smoker), lty = 2, lwd = 2, col = "blue")
abline(v = median(nonsmoker), lty = 2, lwd = 2, col = "green")

# create legend
legend("topleft", legend = c("Smoker", "NonSmoker", "Smoker Density Curve", "NonSmoker Density Curve", "Median Smoker", "Median NonSmoker"), col = c("#3cbcc5", "#9cc4a9", "#3cbcc5", "#9cc4a9","blue", "green"), lty = c(1, 1, 1, 1, 2, 2), cex = 1 )


