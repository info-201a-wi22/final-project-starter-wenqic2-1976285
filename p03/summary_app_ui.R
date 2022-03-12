library(shiny)
library(ggplot2)
library(maps)
library(plotly)


Summary <- tabPanel(
  h4("Summary"),
  h1("Summary"),
  p("By analyzing our first set of graphs, it can be seen that since 1990, there has been a large
    increase in the total number of people living with HIV globally. Most of these cases seem to be
    coming from Africa, which is the only region to see a consistent sharp increase in cases along
    this time period, while the other regions have much smaller slopes and stayed more consistent.
    This increase in cases showcases several things: It shows how much better our HIV treatment has
    got in order to keep more people alive for longer periods of time, but it also shows how we have
    yet to improve, in a global standpoint, in terms of slowing the spread of it."),
  p("Through analyzing our second and third sets of graphs, we can see that as of 2005 there has been a
    continuous downwards trend in the global deaths due to HIV, despite the previous graph showing
    that we have continued to increase cases globally over the years. This is a good sign, as it shows
    the effectiveness of modern HIV treatment and the dispersion of that treatment globally to
    limit the number of people who die of HIV every year.")
)

app_ui <- navbarPage(
  tags$title("Shiny"),
  Summary
)
