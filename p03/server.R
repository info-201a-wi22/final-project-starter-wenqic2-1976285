

library(shiny)
library(plotly)
library(ggplot2)
source("Untitled.R")
data

server <- shinyServer(function(input, output) {
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
