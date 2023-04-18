install.packages("ggplot2")

# Load necessary libraries
library(ggplot2)

# Load data
my_data <- read.csv("/cloud/project/unicef_indicator_1.csv")
View(unicef_indicator_1)

# Create the scatterplot with linear regression line
my_chart <- ggplot(my_data, aes(x = time_period, y = obs_value)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "A poorly distributed sanitation access", x = "Years", y = "Sanitation access (%)") +
  theme_minimal()

# Show the chart
print(my_chart)