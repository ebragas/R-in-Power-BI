
## First Data Source
airline <- read.csv("C:\\data\\airline.csv")

airline



## Second Data Source
airline <- read.csv("C:\\data\\airline.csv")
mtcars <- read.csv("C:\\data\\mtcars.csv")

airline
mtcars



## Basic Scatter Plot
library(ggplot2)

ggplot(data = dataset, aes( x = dataset$`Flight Fuel Cost (USD)`, y = dataset$`Revenue Passenger Miles`, color = dataset$`Aircraft Name` )) + 
  geom_point()



## Scatter Plot w/ Linear Regression Line
library(ggplot2)

ggplot(data = dataset, aes( x = dataset$`Flight Fuel Cost (USD)`, y = dataset$`Revenue Passenger Miles`, color = dataset$`Aircraft Name` )) + 
  geom_point() +
  geom_smooth(method = lm, se = TRUE)



## Scatter Plot w/ Linear Regression Line and Labels!
library(ggplot2)

ggplot(data = dataset, aes( x = dataset$`Flight Fuel Cost (USD)`, y = dataset$`Revenue Passenger Miles`, color = dataset$`Aircraft Name` )) + 
  geom_point() +
  geom_smooth(method = lm, se = TRUE) +
  labs(
    title = "Scatter Plot" ,
    color = "Aircraft" ,
    x = "Flight Fuel Cost (USD)" ,
    y = "Revenue Passenger Miles"
  )



## Box Plot
library(ggplot2)

ggplot(data = dataset, aes(x = dataset$`Airport`, y = dataset$`Flight Fuel Cost (USD)`)) +
  geom_boxplot(aes(fill = factor(dataset$`Aircraft Name`))) +
  labs(title = "Box Plot" ,
       x = "Airport" ,
       y = "Flight Fuel Cost (USD)" ,
       fill = "Aircraft"
  )