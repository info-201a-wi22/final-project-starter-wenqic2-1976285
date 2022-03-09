library(shiny)
library(plotly)
library(ggplot2)
source("Untitled.R")
data

ui <- fluidPage(
  
  # Application title
  titlePanel("HIV data"),
  
  sidebarLayout(
    
    # Sidebar with a slider input
    sidebarPanel(
      radioButtons("type", "Type of hiv data:", 
                   choices = list("lives" = "living_with_hiv", "deaths" = "Number.of.deaths.due.to.HIV.AIDS" )
      )
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("hiv_plot")
    )
  )
)

ui <- fluidPage(
  titlePanel("HIV data"),
  sidebarLayout(
    sidebarPanel(
      radioButtons("type", "Type of hiv data:", 
                   choices = list("lives" = "living_with_hiv", "deaths" = "Number.of.deaths.due.to.HIV.AIDS" )
      )
    ),
    mainPanel(
      plotlyOutput("hiv_plot")  
    )
  )
)
