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
  
  output$downloadData <- downloadHandler(
    filename = function(){
      paste("mtcars", "csv", sep = ".")
    },
    
    content =  function(file){
      write.csv(mtreact(), file)
    }
  )

  output$downloadPlot <- downloadHandler(
    filename = function(){
      paste("mtcars-plot","png",sep = ".")
    },
    
    content = function(file){
      png(file)
      with(mtreact(),boxplot(mtg~mtreact()[,2]))
      dev.off()
    }
  )
    
})