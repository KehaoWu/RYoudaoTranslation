
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Youdao Translation using RYoudaoTranslate"),
  
  
  # Show a plot of the generated distribution
  mainPanel(
    htmlOutput("display",inline = T)
  ),
    
  # Sidebar with a slider input for number of bins
  sidebarPanel(
    textInput("bins",
              "Query Words:",
              value = "")
  )
))
