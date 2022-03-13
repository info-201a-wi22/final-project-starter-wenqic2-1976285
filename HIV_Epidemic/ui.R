setwd("~/Documents/FinalProject/final-project-starter-wenqic2-1976285/p03")
source("intro_app_ui.R")
source("graph_1_app.R")
source("graph_2_app.R")
source("ui.R")
source("summary_app_ui.R")
library("shiny")
library("dplyr")
library("tidyr")
library("rsconnect")
library("ggplot2")

ui <- (
  fluidPage(
  navbarPage(
  title = "HIV/AIDS Epidemic",
  position = "fixed-top",
  intro_page,
  Chart_1,
  graph2_ui,
  graph_ui,
  Summary
)
  )
)
