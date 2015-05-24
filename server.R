library(shiny)

data <- read.csv("climate_change.csv", sep=",", header=T)

shinyServer(function(input, output) {
      
      dataInput1 <- reactive({
            subset(data, select=c(input$gas), subset=(substring(data$Date,1,4) >= input$year & substring(data$Date,1,4)<=2008))
      })
      
      output$plot1 <- renderPlot({
            
            ## Render a barplot
            barplot(dataInput1()[,input$gas],
                    main=paste("Concentration of ", input$gas, "Year",input$year,"- 2008"),
                    ylab="Concentration in ppmv", ylim=c(300,400))
      })
      
})