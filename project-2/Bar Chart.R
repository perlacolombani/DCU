install.packages("ggplot2") # To create the bar chart

library(ggplot2)

# Load data
my_data <- read.csv("/cloud/project/unicef_indicator_1.csv")
View(unicef_indicator_1)

# Create the bar chart
my_chart <- ggplot(my_data, aes(x = time_period, y = obs_value, fill =region)) +
  geom_bar(stat = "identity", fill = "bisque1") +  # Customize the appearance of the bars
  labs(title = "Increasing sanitation access over time", x = "Years", y = "Sanitation access") +  # Customize titles and axis labels
  theme_minimal() # Customize the overall theme of the chart

# Display the chart
print(my_chart)