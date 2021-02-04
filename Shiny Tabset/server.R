library(shiny)

shinyServer(function(input, output){
  
  mtreact <- reactive({
    mtcars[,c("mpg", input$ngear)]
  })
  
  
  output$mtcars <- renderTable({
    mtreact()
  })
  
  output$summ <- renderPrint({
    summary(mtreact())
  })
  
  output$plot <- renderPlot({
    with(mtreact(), boxplot(mpg~mtreact()[,2]))
  })
  
  
})