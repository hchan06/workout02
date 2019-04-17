#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
  h1("Savings Simulation"),
  column(4, 
         sliderInput(inputId = "amount", label = "Initial Amount", 
                     min = 0, max = 100000, step = 500, value = 1000),
         sliderInput(inputId = "contrib", label = "Annual Contribution",
                     min = 0, max = 50000, step = 500, value = 2000)),
  column(4, 
         sliderInput(inputId = "return", label = "Return Rate (in %)",
                     min = 0, max = 20, step = 0.1, value = 5),
         sliderInput(inputId = "growth", label = "Growth Rate (in %)",
                     min = 0, max = 20, step = 0.1, value = 2)),
  column(4, 
         sliderInput(inputId = "years", label = "Years", 
                     min = 0, max = 50, step = 1, value = 20),
         selectInput(inputId = "facet", label = "Facet?", choices = c("No", "Yes"),
                     selected = "No")),
  
  # fluidRow(
  #   column(4, 
  #          sliderInput(inputId = "amount", label = "Initial Amount",
  #                      min = 0, max = 100000, step = 500, value = 1000)),
  #   column(4,
  #          sliderInput(inputId = "return", label = "Return Rate",
  #                      ))
  # ),
  # fluidRow(),
  hr()
)

# Define server logic required to draw a histogram
server <- function(input, output) {}


# Run the application 
shinyApp(ui = ui, server = server)

