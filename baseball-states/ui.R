library(shiny)

# Define UI for Run Expectancy application
shinyUI(pageWithSidebar(
    
    # Application title
    headerPanel("Baseball States and Run Expectancy"),
    
    # Sidebar with controls to select the variable to plot against mpg
    # and to specify whether outliers should be included
    sidebarPanel(
        checkboxGroupInput("menonbase", "Men on Base:",
                    list("first" = "first", 
                         "second" = "second", 
                         "third" = "third")),
        
        radioButtons("outs", "Outs:",
                           list("0 out" = "0", 
                                "1 out" = "1", 
                                "2 out" = "2")),
        h3(textOutput("caption"))
    ),
    
    # Description of the concepts used in the app
    mainPanel( 
        p("When a batter in a baseball game steps up to bat, 
           we can describe the ", tags$b("state"), " of the inning 
           with a description of the number of outs and the positions
           of any men on base. For example, 'Runners on first 
           and second with one out' or 'No outs, no one on' 
           (which is always the state of the inning for the first batter)."),
        p("Using historic records* of baseball games, we can determine the probability
           that at least one run will be scored in the inning, given the 
           state of the inning. For instance, it is evident that with a man on
           third and nobody out, the probabilty of a run being scored is greater
           than if there was no one on base with two outs."),
        p("This probability is called 'Run Expectancy.' Of course, Run Expectancy
          only describes what happens", tags$b("on average"), ". Depending on the
          skill and luck of the batter, anything can happen. That's the beauty
          of baseball."),
        hr(),
        p("* The data used is from all major league regular season games
             from 1950 through 2010. The run expectancy data was compiled
             by http://www.tangotiger.net/
             using game data from http://www.retrosheet.org/")
        
)
))