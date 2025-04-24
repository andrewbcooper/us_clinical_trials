library(shiny)

timedatestamp <- Sys.time()
saveRDS(timedatestamp,'mysillyfile')

ui <- fluidPage(
  "Hello, world!",
  verbatimTextOutput("silly")
)
server <- function(input, output, session) {
  output$silly <- renderPrint({
    readRDS('mysillyfile')
  })
}
shinyApp(ui, server)