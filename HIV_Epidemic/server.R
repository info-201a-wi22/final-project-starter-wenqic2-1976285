#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  output$graph <- renderPlot({
    source("source/Graph-1.R")
    filter(hivdata, WHO_Region == input$region)
    ggplot(hivdata, aes(year, people_with_hiv, color = WHO_Region)) + geom_line() +
      scale_y_continuous(labels = scales::comma)+
      labs(x = "Year", y = "Number of people living with HIV", title = "Total People Living With HIV Each Year")
  })
  output$distPlot <- renderPlotly({
    ggplotly(p1)
  })
  output$hiv_plot <- renderPlotly({
    ggplot(data, aes(x = Year, y = .data[[input$types]])) +
      geom_point() +
      scale_x_discrete(
        breaks = c("1990", "2000", "2010", "2020")
      ) +
      xlab("Year") + ylab("Number of people") +
      labs(title = "Number of people living or dead with hiv")
  })
})
