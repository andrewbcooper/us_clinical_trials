library(shiny)
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