# Visualising data with ggplot2

# load ggplot

library(ggplot2)
library(tidyverse)

#load data

surveys_complete <- read_csv ("data_raw/surveys_complete.csv")

#create a plot
# step by step functions

ggplot(data = surveys_complete)

ggplot(data = surveys_complete, mapping = aes(x = weight, y = hindfoot_length))

ggplot(data = surveys_complete, mapping = aes(x = weight, y = hindfoot_length)) +
  geom_point()

# assign a plot to a variable/object

surveys_plot <- ggplot(data = surveys_complete, mapping = aes(x = weight, y = hindfoot_length))

view(surveys_plot)

# draw the plot

surveys_plot + 
  geom_point()


#challenge 1: Change the mappings so weight is on the y-axis and hindfoot_length is on the x-axis

surveys_plot <- ggplot(data = surveys_complete, mapping = aes(x = hindfoot_length, y = weight)) + 
  geom_point()

view(surveys_plot)

surveys_plot + 
  geom_point()

# or

surveys_plot+
  geom_point(aes(x = hindfoot_length, y = weight))



#Challenge 2 How would you create a histogram of weights?
# NB only need x axis and change binwidth

challenge2 <- ggplot(data = surveys_complete, mapping = aes(x = weight)) + 
  geom_histogram(binwidth = 10)

view(challenge2)

challenge2 + 
  geom_histogram()
  