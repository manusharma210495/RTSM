# Packages
#install.packages(c("shiny", "shinydashboard", "dplyr", "DT", "readxl", "ggplot2", "plotly", "ggtext", "ggcorrplot", "reshape2"))
#library(shiny)
library(shinydashboard)
library(dplyr)
library(DT)
library(readxl)
library(ggplot2)
library(plotly)
library(ggtext)
library(ggcorrplot)
library(reshape2)

#Global 
data = read_excel("43_Arrests_under_crime_against_women.xlsx")




#structure
data %>% 
  str()

#Summary
data %>% 
  summary()



#Choices for input 
choices1 = data %>% 
  select(-'Area_Name') %>% 
  names()



