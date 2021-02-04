library(shiny)

shinyUI(fluidPage(
  headerPanel(title = "Shiny Tabset Example"),
  sidebarLayout(
    sidebarPanel(
      selectInput("ngear", "Select the gear number", c("cylinders" = "cyl","Transmission" = "am", "Gears" = "gear"))
    ),
    
    mainPanel(
      tabsetPanel(type = "tab",
                  tabPanel("Data", tableOutput("mtcars")),
                  tabPanel("Summary", verbatimTextOutput("summ")),
                  tabPanel("Plot", plotOutput("plot"))
                  )
    )
    
    
  )
  
)
)