library(shiny)

gerber = read.csv("gerber.csv")
library(rpart)
CART1 = rpart(voting ~ civicduty + hawthorne + self + neighbors, data=gerber, cp=0.0)

shinyServer(
      function(input, output) {
            
            #userinput=reactive({userinput=c(input$c,input$h,input$s,input$n)})
            
            
            #userinput=as.factor(userinput)
            #userinput=as.numeric(userinput)-1
            #output$v=renderPrint(as.integer(input$c)+as.integer(input$s))
            
            
            output$v = renderPrint(unname(predict(CART1,newdata=data.frame(civicduty=as.integer(input$c),hawthorne=as.integer(input$h),self=as.integer(input$s),neighbors=as.integer(input$n)))))
            
            
                                       
            
      }
)