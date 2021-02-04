library(shiny)

shinyUI(fluidPage(
  headerPanel(title = "Shiny File Upload Example"),
  sidebarLayout(
    sidebarPanel(
      fileInput("file","Upload the file"),
      h5("Max file size to upload is 5 MB"),
      radioButtons("sep", "Seperator", choices = c(Comma = ',', Period = '.', Tilde = '~',minus = '-')),
      checkboxInput("header","Header?")
    ),
    
    mainPanel(
      tableOutput("input_file")
    )
    
  )
  
)
)