library(shiny)
library(plotly)
library(ggplot2)
source("Untitled.R")
data

ui <- fluidPage(
  titlePanel("HIV data"),
  sidebarLayout(
    sidebarPanel(
      radioButtons("types", "Type of hiv data:", 
                   choices = list("lives" = "living_with_hiv", "deaths" = "Number.of.deaths.due.to.HIV.AIDS" )
      )
    ),
    mainPanel(
      plotlyOutput("hiv_plot")  
    )
  )
)
