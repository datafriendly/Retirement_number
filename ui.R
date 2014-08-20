library("shiny")

shinyUI(
  
  pageWithSidebar(
    # Application title
    headerPanel("Retirement Savings Goal prediction"),
    sidebarPanel(
      numericInput('income', 'Expected Annual income at retirement (in $) ', 0 ),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('You entered'),
      verbatimTextOutput("inputValue"),
      h4('Which resulted in a prediction of '),
      verbatimTextOutput("prediction")
    )
  )
)