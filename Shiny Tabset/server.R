library(shiny)

shinyServer(function(input, output){
  output$mtcars <- renderTable({
    mtcars
  })
  
  output$summ <- renderPrint({
    summary(mtcars)
  })
  
  output$plot <- renderPlot({
    with(mtcars, boxplot(mpg~gear))
  })
  
  
})