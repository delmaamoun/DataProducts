library(shiny)
library(datasets)

# Define server logic required to summarize and view the selected dataset
shinyServer(function(input, output) {
  
  # Return the requested dataset
  data(mtcars)
  form <- reactive({
    formula1 = switch(input$predictor,
           "All" = mpg ~.,
           "cyl" = mpg ~ cyl,
           "hp" = mpg ~ hp,
           "disp" = mpg ~ disp,
           "wt" = mpg ~ wt)
    glm(formula1,data=mtcars)
  })
  
  # Generate a summary of the dataset
  output$summary <- renderPrint({
    model <- form()
    summary(model)
  })
  
})
