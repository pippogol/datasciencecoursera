library(shiny)

gerber = read.csv("gerber.csv")
library(rpart)
CART1 = rpart(voting ~ civicduty + hawthorne + self + neighbors, data=gerber, cp=0.0)

shinyServer(
      function(input, output) {

            output$v = renderPrint(unname(predict(CART1,newdata=data.frame(civicduty=as.integer(input$c),hawthorne=as.integer(input$h),self=as.integer(input$s),neighbors=as.integer(input$n)))))
        
      }
)