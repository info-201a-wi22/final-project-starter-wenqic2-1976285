

library(shiny)
source("Untitled.R")
data

shinyServer(function(input, output) {
  output$hivPlot <- renderPlotly({
    ggplot(data, aes(x = Year, y = as.numeric(input$type))) +
      geom_point() +
      scale_x_discrete(
        breaks = c("1990", "2000", "2010", "2020")
      ) +
      xlab("Year") + ylab("Number of people") +
      labs(title = "Number of people living or dead with hiv")
  })
})
