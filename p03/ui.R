library(shiny)
source("Untitled.R")
data

fluidPage(
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
