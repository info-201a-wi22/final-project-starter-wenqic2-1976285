library("shiny")
library("plotly")
source("app_server.R")

## UI

intro_page <- tabPanel(
  titlePanel("Investigation of the size of the HIV/AIDS epidemic from 1990 - 2020."),
  mainPanel("What we care about is the survival rate of patients infected with AIDS.
            This question is important because it can help scientists investigate the
            change pattern of this disease. AIDS usually have long incubation periods
            and serious complications. Investigation of the survival rate and time 
            period can help us better understand the incubation periods. To address the
            question, we will focus on the number of alive patients and area distribution factors
             through 1990-2020 to analyze the disease. We will also analyze the dataset regarding
            deaths as well as new infections.
            For our project, we will be investigating how the size of the HIV/AIDS epidemic has changed from year
            to year between 1990 to 2020. We will do this by analyzing HIV/AIDS datasets from
            the World Health Organization, including one that shows the number of people living with HIV 
            changed over that same time period. Investigating the mortality rate and the time period will help
            us to better understand the incubation rates of HIV/AIDS.")
)

ui <- navbarPage(
  "HIV/AIDS Epidemic",
  intro_page,
)
