library(shiny)

shinyServer(function(input, output){

  
  output$project_code <- {(
    renderText(input$projcode)
  )}
  
  output$project_name <- {(
    renderText(input$projname)
  )}
  
  output$technology_used <- {(
    renderText(input$tech)
  )}
  
  output$location <- {(
    renderText(input$loc)
    
  )}
  
  output$no_of_days_spent <- {(
    renderText(input$ndayspent)
  )}
    
})