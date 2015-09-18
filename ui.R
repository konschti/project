library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Calculate your BMI"),
  
  sidebarPanel(
    numericInput('height', 'Your height in meters', 1.80, min = 0.1, max = 2.50, step = 0.01),
    numericInput('weight', 'Your weight in kilogram', 75, min = 0, max = 300, step = 0.01),
    submitButton("Submit values and refresh", icon("refresh"))
  ),
  mainPanel(
    h4('You can enter your height in meters eg 1.80 and your weight in kilogram in the two input boxes on the left.'),
    h4('If you are done, please press the submit button so the result gets calculated.'),
    h4('According to wikipedia a body mass index between 18.5 and 25 indicates a normal weight. A lower value indicates underweight and a higher value indicates overweight.'),
    h4('You entered as your height in meters:'),
    verbatimTextOutput("oid1"),
    h4('You entered as your weight in kilogram:'),
    verbatimTextOutput("oid2"),
    h3('So your Body-Mass-Index is:'),
    verbatimTextOutput("bmi")
  )
))
