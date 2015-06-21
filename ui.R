shinyUI(pageWithSidebar(
      headerPanel("Likeliness to Vote"),
      
      sidebarPanel( 
            h3('Predictors'), 
            #selectInput("c", "You were reminded of the civic duty to vote", choices=c(TRUE, FALSE)),
            #selectInput("h", "Your were informed that your vote will be examined by means of public records", choices=c(TRUE, FALSE)),
            #selectInput("s", "You received the voting record of everyone in your household", choices=c(TRUE, FALSE)),
            #selectInput("n", "You received the voting record of everyone in your neighborhood", choices=c(TRUE, FALSE)),
            
            checkboxInput("c", "You were reminded of the civic duty to vote", FALSE),
            checkboxInput("h", "Your were informed that your vote will be examined by means of public records", FALSE),
            checkboxInput("s", "You received the voting record of everyone in your household", FALSE),
            checkboxInput("n", "You received the voting record of everyone in your neighborhood",FALSE),

            submitButton("Submit")     
            ), 
      
      mainPanel(
            h3('Prediction'),
            h4('Your likeliness to vote is:'), 
            verbatimTextOutput("v"),
            h3("Notes"),
            p("This application predicts the likeliness of a citizen to vote, based on  research data compiled by Alan Gerber in studying whether one of the reasons to vote is social or extrinsic pressure."),
            br(),
            p("A Classification and Regression Tree was used to examine the effects of the predictors above on one's likeliness to vote.")       
            ) 
))