library(shiny)

bmifunction<- function(height, weight)
  weight/(height*height)
  
shinyServer(
  function(input, output) {
    output$oid1 <- renderPrint({input$height})
    output$oid2 <- renderPrint({input$weight})
    output$bmi <- renderPrint({bmifunction(input$height, input$weight)})
  }
)
