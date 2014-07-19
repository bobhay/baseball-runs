library(shiny)
states <- read.csv("data/re1950-2010.csv")

# Define server logic required read required row and column from states
shinyServer(function(input, output) {
       
    # Compute the forumla text in a reactive expression 
    formulaText <- reactive({
        baseraw <- input$menonbase
        outstate <- input$outs
        # Build binary basestate
        basebin <- ""
        ifelse("first" %in% baseraw, basebin <- paste0("1",basebin), basebin <- paste0("0",basebin))
        ifelse("second" %in% baseraw, basebin <- paste0("1",basebin), basebin <- paste0("0",basebin))
        ifelse("third" %in% baseraw, basebin <- paste0("1",basebin), basebin <- paste0("0",basebin))
        # Use R base function strtoi (String to Integer)
        basestate <- strtoi(basebin, base=2) + 1
        outstate <- as.numeric(outstate) + 2
        # Select basestate row and outstate column value
        answer <- states[basestate, outstate]
        answer <- round(answer, digits=4) * 100
        paste("R.E. = ", answer, "%")
    })
    
    # Return the formula text for printing as a caption
    output$caption <- renderText({
        formulaText()
    })
    

})