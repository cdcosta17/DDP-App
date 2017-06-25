#
# This is the server logic of a Shiny web application.
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    output$distPlot <- renderPlot({
      dist <- switch(input$dist,
                     Normal = rnorm,
                     Poisson = rpois,
                     rnorm)
      
      if(input$dist=="Normal"){
        hist(dist(input$obs), col = 'lightblue',
             main = paste("Histogram of a" , input$dist, "Distribution with ", input$obs, " Observations"))  
      }
      else 
        hist(dist(input$obs,input$lambda),col = 'pink',
             main = paste("Histogram of a" , input$dist, "Distribution with ", input$obs, " Observations"))
        
    })
  })

