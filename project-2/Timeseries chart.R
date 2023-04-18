install.packages("ggplot2")

# Load necessary libraries
library(ggplot2)

# Load data from the CSV file
data <-  read.csv("/cloud/project/unicef_indicator_1.csv")
View(unicef_indicator_1)

# Create a time-series chart
unicef_graph <- ts(unicef_indicator_1$obs_value, start = c(2000), end = c(2020), frequency = 1)

plot(unicef_graph, type = "l", xlab = "Years", ylab = "Proportion of sanitation access(%) ", 
     main = "Sanitation Access over time")

# Show the chart
print(my_chart)