
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)
library(RYoudaoTranslate)

shinyServer(function(input, output) {
   
  output$display <- renderPrint({
    apikey = "498375134"
    keyfrom = "JustForTestYouDao"
    word = input$bins
    word = unlist(strsplit(word,split = "\\s|,"))
    for( i in word)
    {
      Res = youdaoLookUp(i,api=apikey,keyfrom=keyfrom)
      cat("<p><b>",i,"</b>:",Res,"</p>")
    }
    cat("<br/><br/>Developed by Kehao Wu (Conda).")
  })
  
})
