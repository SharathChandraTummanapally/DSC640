---
title: "Exercise 3.2"
author: "Sharath Chandra Tummanapally"
date: "4/21/2022"
---

# Load Libraries
library(treemapify)
library(ggplot2)
library(dplyr)    

# Load dataset
exp_df <- read.table("/Users/sharath/DSC640/Week5-6/expenditures.txt", sep="\t", header=TRUE)

exp_df_2000 <- exp_df[exp_df$year == 2000, ]

ggplot(exp_df_2000, aes(area=expenditure, fill = category, label = paste(category, expenditure, sep = "\n"))) +
    geom_treemap() + geom_treemap_text(place = "centre", 
                                       size = 10) + 
    theme(legend.position="none") + ggtitle("Expenditure by Category For the Year 2000")


exp_app_df <- exp_df[exp_df$category == 'Apparel', ]

ggplot(exp_app_df, aes(x=year, y=expenditure)) + geom_area() +
    ggtitle("Expenditures by Year For Apparel Category") + xlab("Year") + ylab("Expenditure")

ggplot(exp_df, aes(x=year, y=expenditure, fill=category)) + geom_area() + xlab("Year") + ylab("Expenditure") + theme_bw() + theme(panel.border = element_blank(), panel.grid.major = element_blank(),
                                                                                                                              panel.grid.minor = element_blank(), axis.line = element_line(colour = "grey")) +
    ggtitle("Expenditures by Year For all Categories")

