library(shiny)

ui <- fluidPage(
  "Hello, world!",
  verbatimTextOutput("silly")
)
server <- function(input, output, session) {
  output$silly <- renderPrint({
    head(readRDS('trials.RDS'))
  })
}
shinyApp(ui, server)
