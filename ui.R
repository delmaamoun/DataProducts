library(shiny)

# Define UI for miles per gallon application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Generate Linear Regression Model for mtcars Dataset"),
  
  # Sidebar with controls to select a dataset and specify the number
  # of observations to view
  sidebarPanel(
    h3('Documentation'),
    h4('The point of this app is to select one of the predictors from the mtcars dataset,
       and it will generate the linear regression model using this predictor.
       All (obviously) selects all predictors'),
    selectInput("predictor", "Choose a predictor:", 
                choices = c("All", "cyl", "hp","disp","wt"))
    
  ),
  
  # Show a summary of the dataset and an HTML table with the requested
  # number of observations
  mainPanel(
    verbatimTextOutput("summary"),
    tableOutput("Result")
  )
))
