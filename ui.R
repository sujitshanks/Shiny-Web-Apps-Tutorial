library(shiny)

shinyUI(
  fluidPage(
    headerPanel(title = "Text input Shiny widget"),
    sidebarLayout(
      sidebarPanel(
        textInput("projcode", "Enter your project code: "),
        textInput("projname", "Enter the project name: "),
        textInput("tech", "Technology used: "),
        radioButtons("loc","What is your location?", choices = c("Off-site","On-site"), selected = "On-site", inline = T),
        sliderInput("ndayspent","Number of days spent", min = 1, max = 200, value = c(11,26), step = 5)
      ),
      mainPanel(
        textOutput("project_code"),
        textOutput("project_name"),
        textOutput("technology_used"),
        textOutput("location"),
        textOutput("no_of_days_spent")
      )
    )
    
  )
  
)