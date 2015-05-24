library(shiny)

# Define the overall UI
shinyUI(
      
      fluidPage(
            
            titlePanel("Atmospheric Concentration of gases"),
            
            sidebarLayout(
                  
                  sidebarPanel(
                        selectInput("gas", "Type of gas:",
                                    choices=c("CO2", "N2O")),
                        selectInput("year", "Year:",
                                    choices=c("1984", "1994", "2004")),
                        hr(),
                        helpText("Select the type of gas and starting year")),
                  
                  # Create barplot
                  mainPanel(
                        plotOutput("plot1"),
                        plotOutput("plot2")
                        ))))