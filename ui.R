library(shiny)

# Define UI for miles per gallon application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Generate Linear Regression Model for mtcars Dataset"),
  
  # Sidebar with controls to select a dataset and specify the number
  # of observations to view
  sidebarPanel(
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
