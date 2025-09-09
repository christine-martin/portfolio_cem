# This is my portfolio script

# Creating directories
EVR628tools::create_dirs()

#Loading libraries
library(EVR628tools)
library(tidyverse)

#Loading data
data("data_lionfish")

#Creating a plot, Selecting the X and Y axis, Selecting the plot type (geom)
#Wrapping with a facet and separating by Site
ggplot(data_lionfish,
       aes(x = total_length_mm, y = total_weight_gr, color = "pink")) +
  geom_point() +
  facet_wrap(~site)

#Saving the plot
p <- ggplot(data_lionfish,
       aes(x = total_length_mm, y = total_weight_gr, color = "pink")) +
  geom_point() +
  facet_wrap(~site)

ggsave(plot = p, filename = "results/img/portfolioplot1.png")


#Save Project and README
#Commit
#Push

#Commit Results and Scripts folder
#Push
