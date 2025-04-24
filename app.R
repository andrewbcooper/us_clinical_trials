library(shiny)

dammit <- Sys.time()
saveRDS(dammit,'mysillyfile')

ui <- fluidPage(
  "Hello, world!",
  verbatimTextOutput("silly")
)
server <- function(input, output, session) {
  output$silly <- renderPrint({
    head(readRDS('mysillyfile'))
  })
}
shinyApp(ui, server)