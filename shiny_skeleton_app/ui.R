library(shiny)
library(DT)

source('LoginAndConnect.R')

shinyUI(fluidPage(

    tags$head(
        tags$title(''),
        tags$style(HTML('
        '))
    ),
    
    fluidRow(
        column(4,
               div(id = "logo", img(src = "Logo.svg", width = 200)),
               tags$p(style = 'padding-left: 13px;')
        ),
        column(6,
               tags$p(style = 'padding-bottom: 13px;'),
               tags$h1("")
        )
    ),
    
    sidebarLayout(
        sidebarPanel(
            tags$hr()
        ),

        mainPanel(
            tags$p()
        )
    )
))
