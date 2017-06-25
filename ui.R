#
# This is the user-interface definition of a Shiny web application.
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny) 

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Central Limit Theorem With Different Distributions"),
  
  # Sidebar with a slider inputs for number of observations, lambda value and radio buttons to
  # select the type of distribution
  sidebarLayout(
    sidebarPanel(
       sliderInput("obs",
                   "Number of observations:",
                   min = 10,
                   max = 1000,
                   value = 10),
       sliderInput("lambda", "Set Lambda value:",
                   min = 0,
                   max = 10,
                   value = 5),
       radioButtons("dist", "Distribution type:",
                    c("Normal" = "Normal",
                      "Poisson" = "Poisson"))
     ),
    # Show a plot of the generated distribution
    
  mainPanel(
    h4("1. Select the type of distribution"),
    h4("2. Use the sliders to adjust the number of observations and lambda value"),
    h4("3. The lambda slider only affects Poisson distributions"),
    h4("4. The plot automatically updates based on user inputs"),
       plotOutput("distPlot")
    )
  )
)
)

