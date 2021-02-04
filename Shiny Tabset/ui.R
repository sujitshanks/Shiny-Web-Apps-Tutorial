library(shiny)

shinyUI(fluidPage(
  headerPanel(title = "Shiny Tabset Example"),
  sidebarLayout(
    sidebarPanel(
      selectInput("ngear", "Select the gear number", c("Cylinders" = "cyl","Transmission" = "am", "Gears" = "gear")),
      submitButton("Update!")
      
    ),
    
    mainPanel(
      tabsetPanel(type = "tab",
                  tabPanel("Help", tags$img(src = "aplgnome.png"), tags$video(src = "gnomed.mp4", width = "400px", height = "300px", type = "video/mp4", controls = "controls")),
                  tabPanel("Data", tableOutput("mtcars"), downloadButton("downloadData", "Download Data")),
                  tabPanel("Summary", verbatimTextOutput("summ")),
                  tabPanel("Plot", plotOutput("plot"), downloadButton("downloadPlot", "Download Plot"))
                  )
    )
    
    
  )
  
)
)