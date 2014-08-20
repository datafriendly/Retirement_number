library("shiny"
        )
Retirement_number <- function(income) income * 12
shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$income})
    output$prediction <- renderPrint({Retirement_number(input$income)})
  }
)