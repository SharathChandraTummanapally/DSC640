## Load the ggplot2 package
library(ggplot2)
theme_set(theme_minimal())

setwd("/Users/sharath/DSC640")

library(readxl)
mydata <- read_excel("/Users/sharath/DSC640/Week3-4/world-population.xlsm")

## Creating the line plot
ggplot(data=mydata, aes(x=Year, y=Population, group=1)) +
    geom_line()

## Creating the step plot

ggplot(data=mydata, aes(x=Year, y=Population, group=1)) +
    geom_step()


